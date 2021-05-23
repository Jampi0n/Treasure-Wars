import shutil
import os
import re
import threading
from urllib.request import urlopen, Request
from bs4 import BeautifulSoup
from pathlib import Path

useLinks = False

def collectUsedIcons(wurst_path, result:list, extension:str):
    for root, dirs, files in os.walk(wurst_path, topdown=False):
        for name in files:
            if name.endswith(extension):
                with open(os.path.join(root, name)) as file:
                    lines = "\n".join(file.readlines())
                    tmp = re.findall('".*(BTN.*?)"', lines)
                    result += tmp
                    tmp = re.findall('".*(ATC.*?)"', lines)
                    result += tmp
                    tmp = re.findall('".*(PAS.*?)"', lines)
                    result += tmp

def processUsedIcons(usedIcons):
    newList = []
    for icon in usedIcons:
        icon = icon.lower()
        if not icon.endswith(".blp"):
            icon += ".blp"
        newList += [icon]
        if not icon.startswith("dis"):
            newList += ["dis" + icon]
    return newList


def clean(import_path):
    button_paths = ["CommandButtons", "CommandButtonsDisabled", "PassiveButtons"]
    for path in button_paths:
        try:
            shutil.rmtree(os.path.join(os.getcwd(), import_path, "ReplaceableTextures", path))
        except FileNotFoundError:
            pass

def copy(icon_path, import_path, preview_path, used_icons:list, used_folders:list):
    button_paths = ["CommandButtons", "CommandButtonsDisabled"]
    for path in button_paths:
        os.mkdir(os.path.join(os.getcwd(), import_path, "ReplaceableTextures", path))
    for root, dirs, files in os.walk(icon_path, topdown=False):
        for name in files:
            if name.lower().endswith(".blp"):
                path = os.path.join(root, name)
                newName = name.replace(" ","").replace("-","").replace(".BLP", "FILE_EXTENSION").replace(".Blp", "FILE_EXTENSION").\
                    replace(".blp", "FILE_EXTENSION").replace(".","").replace("FILE_EXTENSION", ".blp")
                if newName.lower() in used_icons:
                    if name.lower().startswith("btn") or name.lower().startswith("atc") or name.lower().startswith("pas"):
                        shutil.copyfile(path, os.path.join(os.getcwd(), import_path, "ReplaceableTextures", "CommandButtons", newName))
                        if root not in used_folders:
                            used_folders.append(root)
                    if name.lower().startswith("dis"):
                        shutil.copyfile(path, os.path.join(os.getcwd(), import_path, "ReplaceableTextures", "CommandButtonsDisabled", newName))
                        if root not in used_folders:
                            used_folders.append(root)
                if name.lower().startswith("btn"):
                    shutil.copyfile(path, os.path.join(preview_path, newName))

class HiveUser:
    users = {}

    def __init__(self, user_id, name):
        self.user_id = user_id
        self.name = name
        self.resources = []

    @staticmethod
    def get(user_id, name):
        if user_id == 0:
            if name not in HiveUser.users:
                HiveUser.users[name] = HiveUser(user_id, name)
            return HiveUser.users[name]
        else:
            if user_id not in HiveUser.users:
                HiveUser.users[user_id] = HiveUser(user_id, name)
            return HiveUser.users[user_id]

class HiveResource:
    all = []

    def __init__(self, linkedAuthors, secondaryAuthors, url:str,name:str):
        self.linkedAuthors = linkedAuthors
        self.secondaryAuthors = secondaryAuthors
        self.url = url
        self.name = name
        for author in self.linkedAuthors:
            author.resources.append(self)
        for author in self.secondaryAuthors:
            author.resources.append(self)

        HiveResource.all.append(self)

    def __str__(self):
        url_str = ""
        if self.url != "":
            url_str = " (" + self.url +")"
        s = self.name + url_str + " by"
        for author in self.linkedAuthors:
            s += " " + author.name
            s += " (https://www.hiveworkshop.com/members/" + str(author.user_id) + ")"
            s+= ","
        for author in self.secondaryAuthors:
            s += " " + author.name
            s += ","
        s = s[0:-1]
        return s

    def markdown(self):

        if self.url == "":
            name = self.name
        else:
            name = "[" + self.name + "](" + self.url + ")"

        s = name + " by"
        for author in self.linkedAuthors:
            s += " [" + author.name + "]"
            s += "(https://www.hiveworkshop.com/members/" + str(author.user_id) + ")"
            s += ","
        for author in self.secondaryAuthors:
            s += " " + author.name
            s += ","
        s = s[0:-1]
        return s

def processThread(thread_id):
    url = "https://www.hiveworkshop.com/threads/" + str(thread_id) + "/"

    req = Request(url, headers={'User-Agent': 'Mozilla/5.0'})
    page = urlopen(req)
    html_bytes = page.read()
    html = html_bytes.decode("utf-8")
    soup = BeautifulSoup(html, "html.parser")
    title = str(soup.find("h1", attrs={'class': 'p-title-value'}))
    title = re.findall('(?<=>).*(?=<)', title)[0]
    metadata = soup.find("div", attrs={'class': 'metadata'})
    authors = metadata.find("dl", attrs={'class': 'pairs pairs--justified'}).find("dd")
    linked_authors = re.findall('class="username" data-user-id="(\\d+)".*href=".*".*"user_name">(.*)<', str(authors))
    secondary_authors = re.findall('class="username" data-user-id="(\\d+)".*"user_name">(.*)<', str(authors))

    new_secondary_authors = []
    linked_user_ids = []
    for user_id, name in linked_authors:
        linked_user_ids += [user_id]
    for user_id, name in secondary_authors:
        if user_id not in linked_user_ids:
            new_secondary_authors += [(user_id, name)]
    secondary_authors = new_secondary_authors

    linked_users = []
    secondary_users = []
    for user_id, name in linked_authors:
        linked_users.append(HiveUser.get(user_id, name))
    for user_id, name in secondary_authors:
        secondary_users.append(HiveUser.get(user_id, name))
    HiveResource(linked_users, secondary_users, url, title)

def createSummary(used_folders:list):
    thread_ids = []
    for used_folder in used_folders:
        path_elements = used_folder.split("\\")
        thread_id = -1
        if useLinks:
            for path_element in path_elements:
                if "_THREAD_ID_" in path_element:
                    thread_id = re.findall('(?<=_THREAD_ID_)\\d+', path_element)[0]
        if thread_id != -1:
            thread_ids.append(thread_id)
        else:
            try:
                with open(os.path.join(used_folder, "readme.html"), encoding='utf-8') as readme:
                    try:
                        lines = readme.readlines()
                    except UnicodeDecodeError:
                        print(os.path.join(used_folder, "readme.html"))
                    assert lines[0][0:4] == "<h1>", "|" + lines[0][0:4] + "|"
                    assert lines[1][0:16] == "<p>Submitted by ", "|" + lines[1][0:17] + "|"
                    title = lines[0][4:-6]
                    author = lines[1][16:-5]
                    linked_users = []
                    secondary_users = [HiveUser.get(0, author)]
                    HiveResource(linked_users, secondary_users, "", title)
            except FileNotFoundError:
                pass

    threads = [threading.Thread(target=processThread, args=(thread_id,)) for thread_id in thread_ids]
    for thread in threads:
        thread.start()
    i = 0
    for thread in threads:
        thread.join()
        i+=1
        print(str(i)+ "/" + str(len(threads)))

    HiveResource.all.sort(key=lambda h: h.name.lower(), reverse=False)
    with open("IconCredits.md", 'w') as file:
        for r in HiveResource.all:
            file.write("* " + r.markdown() + "\n")

def main():
    icon_path = os.path.join(str(Path.home()), "Downloads", "HiveDownloads")
    preview_path = os.path.join(str(Path.home()), "Downloads", "HiveDownloads - Preview")
    import_path = "imports"
    used_icons = []
    print("Collecting used icons...")
    collectUsedIcons("wurst", used_icons, ".wurst")
    collectUsedIcons("_build\\dependencies", used_icons, ".wurst")
    collectUsedIcons("_build\\objectEditingOutput", used_icons, ".txt")
    used_icons = processUsedIcons(used_icons)
    print("Cleaning...")
    clean(import_path)
    used_folders = []
    print("Copying...")
    copy(icon_path, import_path, preview_path, used_icons, used_folders)
    print("Creating summary...")
    createSummary(used_folders)

if __name__ == '__main__':
    main()
