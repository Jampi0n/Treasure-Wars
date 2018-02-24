globals
    // User-defined
unit array udg_GreenBarracks
unit array udg_BrownBarracks
unit array udg_BrownWorkShop
unit array udg_GreenWorkShop

    // Generated
rect gg_rct_CornerTop= null
rect gg_rct_CornerBot= null
rect gg_rct_CenterMid= null
rect gg_rct_GreenCastle= null
rect gg_rct_GreenTop= null
rect gg_rct_GreenBot= null
rect gg_rct_GreenMid= null
rect gg_rct_BrownMid= null
rect gg_rct_GreenSpawnTop= null
rect gg_rct_GreenSpawnMid= null
rect gg_rct_GreenSpawnBot= null
rect gg_rct_Tavern0= null
rect gg_rct_Tavern1= null
rect gg_rct_Tavern2= null
rect gg_rct_Tavern3= null
rect gg_rct_BrownCastle= null
rect gg_rct_BrownSpawnBot= null
rect gg_rct_BrownSpawnMid= null
rect gg_rct_BrownSpawnTop= null
rect gg_rct_BrownBot= null
rect gg_rct_BrownTop= null
rect gg_rct_CornerTopGreen= null
rect gg_rct_CornerTopBrown= null
rect gg_rct_CornerBotGreen= null
rect gg_rct_CornerBotBrown= null
rect gg_rct_GreenShops1= null
rect gg_rct_GreenShops2= null
rect gg_rct_BrownShops1= null
rect gg_rct_BrownShops2= null
rect gg_rct_GreenWorkShopTop= null
rect gg_rct_GreenWorkShopBot= null
rect gg_rct_BrownWorkShopTop= null
rect gg_rct_BrownWorkShopBot= null
rect gg_rct_BrownBase= null
rect gg_rct_GreenBase= null
trigger gg_trg_OpenGates= null
unit gg_unit_h00A_0099= null
unit gg_unit_h003_0066= null
unit gg_unit_h003_0065= null
unit gg_unit_h003_0064= null
unit gg_unit_h00A_0059= null
unit gg_unit_h00A_0010= null
unit gg_unit_h003_0017= null
unit gg_unit_h003_0021= null
unit gg_unit_h003_0023= null
unit gg_unit_h00A_0042= null
destructable gg_dest_ZTg3_0000= null
destructable gg_dest_ZTg4_0002= null
destructable gg_dest_ZTg1_0001= null
destructable gg_dest_ZTg3_0023= null
destructable gg_dest_ZTg1_0024= null
destructable gg_dest_ZTg4_0025= null


//JASSHelper struct globals:

endglobals


//===========================================================================
// 
// Wurst Moba
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Feb 24 01:16:54 2018
//   Map Author: Jampion
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    local integer i= 0
endfunction

//***************************************************************************
//*
//*  Destructable Objects
//*
//***************************************************************************

function CreateAllDestructables takes nothing returns nothing
    local destructable d
    local trigger t
    local real life
    set gg_dest_ZTg1_0024=CreateDestructable('ZTg1', - 5824.0, - 3520.0, 90.000, 0.900, 0)
    set gg_dest_ZTg1_0001=CreateDestructable('ZTg1', 1728.0, - 576.0, 270.000, 0.900, 0)
    set gg_dest_ZTg3_0023=CreateDestructable('ZTg3', - 3520.0, - 5824.0, 0.000, 0.900, 0)
    set gg_dest_ZTg3_0000=CreateDestructable('ZTg3', - 576.0, 1728.0, 180.000, 0.900, 0)
    set gg_dest_ZTg4_0025=CreateDestructable('ZTg4', - 4064.0, - 4064.0, 0.000, 0.800, 0)
    set gg_dest_ZTg4_0002=CreateDestructable('ZTg4', - 32.0, - 32.0, 180.000, 0.800, 0)
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'hgry', - 5876.4, - 6071.1, 271.920)
    set u=CreateUnit(p, 'hgry', - 5816.8, - 5829.8, 12.283)
    set u=CreateUnit(p, 'Hmkg', - 5556.7, - 6018.2, 12.560)
    call SetHeroStr(u, 240, true)
    call SetHeroAgi(u, 11, true)
    call SetHeroInt(u, 15, true)
    set u=CreateUnit(p, 'Hpal', - 5548.1, - 6135.7, 53.660)
    call SetHeroStr(u, 22000, true)
    call SetHeroAgi(u, 13, true)
    call SetHeroInt(u, 17, true)
    set u=CreateUnit(p, 'hfoo', - 5371.7, - 5992.8, 197.661)
    set u=CreateUnit(p, 'hfoo', - 5349.8, - 6141.7, 128.500)
endfunction

//===========================================================================
function CreateBuildingsForPlayer10 takes nothing returns nothing
    local player p= Player(10)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'h002', - 6976.0, - 6976.0, 270.000)
    set u=CreateUnit(p, 'h001', - 6528.0, - 6528.0, 270.000)
    set gg_unit_h00A_0059=CreateUnit(p, 'h00A', - 6336.0, - 4672.0, 270.000)
    set u=CreateUnit(p, 'h009', - 5504.0, - 4992.0, 270.000)
    set u=CreateUnit(p, 'h009', - 4992.0, - 5504.0, 270.000)
    set u=CreateUnit(p, 'h009', - 4992.0, - 6144.0, 270.000)
    set u=CreateUnit(p, 'h006', - 3776.0, - 6208.0, 270.000)
    set gg_unit_h003_0064=CreateUnit(p, 'h003', - 6464.0, - 5696.0, 270.000)
    set gg_unit_h003_0065=CreateUnit(p, 'h003', - 5696.0, - 6464.0, 270.000)
    set gg_unit_h003_0066=CreateUnit(p, 'h003', - 5696.0, - 5696.0, 270.000)
    set u=CreateUnit(p, 'h004', - 5824.0, - 6976.0, 270.000)
    set u=CreateUnit(p, 'h004', - 6976.0, - 5824.0, 270.000)
    set u=CreateUnit(p, 'h005', - 5312.0, - 4544.0, 270.000)
    set u=CreateUnit(p, 'h005', - 4544.0, - 5312.0, 270.000)
    set u=CreateUnit(p, 'h007', - 4864.0, - 4096.0, 270.000)
    set u=CreateUnit(p, 'h007', - 5504.0, - 6912.0, 270.000)
    set u=CreateUnit(p, 'h007', - 5120.0, - 3840.0, 270.000)
    set u=CreateUnit(p, 'h007', - 4992.0, - 6784.0, 270.000)
    set u=CreateUnit(p, 'h007', - 5248.0, - 6656.0, 270.000)
    set u=CreateUnit(p, 'h007', - 5248.0, - 7040.0, 270.000)
    set u=CreateUnit(p, 'h007', - 3840.0, - 5120.0, 270.000)
    set u=CreateUnit(p, 'h007', - 3968.0, - 7040.0, 270.000)
    set u=CreateUnit(p, 'h007', - 4224.0, - 5120.0, 270.000)
    set u=CreateUnit(p, 'h007', - 4096.0, - 5376.0, 270.000)
    set u=CreateUnit(p, 'h007', - 6912.0, - 5504.0, 270.000)
    set u=CreateUnit(p, 'h007', - 7040.0, - 5248.0, 270.000)
    set u=CreateUnit(p, 'h007', - 6656.0, - 5248.0, 270.000)
    set u=CreateUnit(p, 'h007', - 6784.0, - 4992.0, 270.000)
    set u=CreateUnit(p, 'h007', - 7040.0, - 3968.0, 270.000)
    set u=CreateUnit(p, 'h007', - 6912.0, - 4224.0, 270.000)
    set u=CreateUnit(p, 'h007', - 6656.0, - 3968.0, 270.000)
    set u=CreateUnit(p, 'h007', - 6528.0, - 4352.0, 270.000)
    set u=CreateUnit(p, 'h007', - 6784.0, - 4608.0, 270.000)
    set u=CreateUnit(p, 'n000', - 7488.0, - 7488.0, 270.000)
    set u=CreateUnit(p, 'h007', - 4096.0, - 4864.0, 270.000)
    set u=CreateUnit(p, 'h007', - 4608.0, - 6784.0, 270.000)
    set u=CreateUnit(p, 'h007', - 4352.0, - 6528.0, 270.000)
    set u=CreateUnit(p, 'h007', - 3968.0, - 6656.0, 270.000)
    set u=CreateUnit(p, 'h009', - 6144.0, - 4992.0, 270.000)
    set gg_unit_h00A_0099=CreateUnit(p, 'h00A', - 4672.0, - 6336.0, 270.000)
    set u=CreateUnit(p, 'h007', - 5376.0, - 4096.0, 270.000)
    set u=CreateUnit(p, 'h007', - 4224.0, - 6912.0, 270.000)
    set u=CreateUnit(p, 'h007', - 5120.0, - 4224.0, 270.000)
    set u=CreateUnit(p, 'h006', - 4544.0, - 3904.0, 270.000)
    set u=CreateUnit(p, 'h006', - 3904.0, - 4544.0, 270.000)
    set u=CreateUnit(p, 'h006', - 5440.0, - 3776.0, 270.000)
    set u=CreateUnit(p, 'h006', - 6208.0, - 3776.0, 270.000)
    set u=CreateUnit(p, 'h006', - 3776.0, - 5440.0, 270.000)
endfunction

//===========================================================================
function CreateBuildingsForPlayer11 takes nothing returns nothing
    local player p= Player(11)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'h005', 448.0, 1216.0, 270.000)
    set u=CreateUnit(p, 'h007', 768.0, 0.0, 270.000)
    set u=CreateUnit(p, 'h007', 1408.0, 2816.0, 270.000)
    set u=CreateUnit(p, 'h005', 1216.0, 448.0, 270.000)
    set u=CreateUnit(p, 'h007', 1024.0, - 256.0, 270.000)
    set u=CreateUnit(p, 'h007', 1024.0, 128.0, 270.000)
    set u=CreateUnit(p, 'h007', 128.0, 2816.0, 270.000)
    set u=CreateUnit(p, 'h007', 1280.0, 0.0, 270.000)
    set gg_unit_h00A_0010=CreateUnit(p, 'h00A', 576.0, 2240.0, 270.000)
    set u=CreateUnit(p, 'h004', 2880.0, 1728.0, 270.000)
    set u=CreateUnit(p, 'h009', 2048.0, 896.0, 270.000)
    set u=CreateUnit(p, 'h004', 1728.0, 2880.0, 270.000)
    set gg_unit_h003_0017=CreateUnit(p, 'h003', 1600.0, 1600.0, 270.000)
    set u=CreateUnit(p, 'h007', - 128.0, 2560.0, 270.000)
    set u=CreateUnit(p, 'h007', 256.0, 2432.0, 270.000)
    set u=CreateUnit(p, 'h007', 512.0, 2688.0, 270.000)
    set gg_unit_h003_0021=CreateUnit(p, 'h003', 1600.0, 2368.0, 270.000)
    set u=CreateUnit(p, 'h007', 0.0, 768.0, 270.000)
    set gg_unit_h003_0023=CreateUnit(p, 'h003', 2368.0, 1600.0, 270.000)
    set u=CreateUnit(p, 'h006', - 320.0, 2112.0, 270.000)
    set u=CreateUnit(p, 'h007', 2688.0, 512.0, 270.000)
    set u=CreateUnit(p, 'h007', 2432.0, 256.0, 270.000)
    set u=CreateUnit(p, 'h007', 2560.0, - 128.0, 270.000)
    set u=CreateUnit(p, 'h007', 2816.0, 128.0, 270.000)
    set u=CreateUnit(p, 'h007', 2944.0, - 128.0, 270.000)
    set u=CreateUnit(p, 'h007', 2688.0, 896.0, 270.000)
    set u=CreateUnit(p, 'h007', 2560.0, 1152.0, 270.000)
    set u=CreateUnit(p, 'h007', 2944.0, 1152.0, 270.000)
    set u=CreateUnit(p, 'h007', 2816.0, 1408.0, 270.000)
    set u=CreateUnit(p, 'h009', 896.0, 2048.0, 270.000)
    set u=CreateUnit(p, 'h007', 0.0, 1280.0, 270.000)
    set u=CreateUnit(p, 'h007', 128.0, 1024.0, 270.000)
    set u=CreateUnit(p, 'h007', - 128.0, 2944.0, 270.000)
    set u=CreateUnit(p, 'h009', 896.0, 1408.0, 270.000)
    set u=CreateUnit(p, 'h009', 1408.0, 896.0, 270.000)
    set u=CreateUnit(p, 'h007', - 256.0, 1024.0, 270.000)
    set u=CreateUnit(p, 'h007', 1152.0, 2944.0, 270.000)
    set gg_unit_h00A_0042=CreateUnit(p, 'h00A', 2240.0, 576.0, 270.000)
    set u=CreateUnit(p, 'h007', 1152.0, 2560.0, 270.000)
    set u=CreateUnit(p, 'h001', 2432.0, 2432.0, 270.000)
    set u=CreateUnit(p, 'h002', 2880.0, 2880.0, 270.000)
    set u=CreateUnit(p, 'h006', 448.0, - 192.0, 270.000)
    set u=CreateUnit(p, 'h006', - 192.0, 448.0, 270.000)
    set u=CreateUnit(p, 'h007', 896.0, 2688.0, 270.000)
    set u=CreateUnit(p, 'h006', 1344.0, - 320.0, 270.000)
    set u=CreateUnit(p, 'h006', - 320.0, 1344.0, 270.000)
    set u=CreateUnit(p, 'h006', 2112.0, - 320.0, 270.000)
    set u=CreateUnit(p, 'n000', 3392.0, 3392.0, 270.000)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer10()
    call CreateBuildingsForPlayer11()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreatePlayerBuildings()
    call CreateUnitsForPlayer0() // INLINED!!
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_CornerTop=Rect(- 5952.0, 1472.0, - 5568.0, 1856.0)
    set gg_rct_CornerBot=Rect(1472.0, - 5984.0, 1856.0, - 5568.0)
    set gg_rct_CenterMid=Rect(- 2304.0, - 2304.0, - 1792.0, - 1792.0)
    set gg_rct_GreenCastle=Rect(- 6528.0, - 6528.0, - 6016.0, - 6016.0)
    set gg_rct_GreenTop=Rect(- 6016.0, - 3456.0, - 5504.0, - 2944.0)
    set gg_rct_GreenBot=Rect(- 3456.0, - 6016.0, - 2944.0, - 5504.0)
    set gg_rct_GreenMid=Rect(- 4096.0, - 4096.0, - 3584.0, - 3584.0)
    set gg_rct_BrownMid=Rect(- 512.0, - 512.0, 0.0, 0.0)
    set gg_rct_GreenSpawnTop=Rect(- 6400.0, - 5632.0, - 6144.0, - 5376.0)
    set gg_rct_GreenSpawnMid=Rect(- 5632.0, - 5632.0, - 5376.0, - 5376.0)
    set gg_rct_GreenSpawnBot=Rect(- 5632.0, - 6400.0, - 5376.0, - 6144.0)
    set gg_rct_Tavern0=Rect(- 2432.0, - 1920.0, - 2176.0, - 1664.0)
    set gg_rct_Tavern1=Rect(- 1920.0, - 1920.0, - 1664.0, - 1664.0)
    set gg_rct_Tavern2=Rect(- 2432.0, - 2432.0, - 2176.0, - 2176.0)
    set gg_rct_Tavern3=Rect(- 1920.0, - 2432.0, - 1664.0, - 2176.0)
    set gg_rct_BrownCastle=Rect(1920.0, 1920.0, 2432.0, 2432.0)
    set gg_rct_BrownSpawnBot=Rect(2048.0, 1280.0, 2304.0, 1536.0)
    set gg_rct_BrownSpawnMid=Rect(1280.0, 1280.0, 1536.0, 1536.0)
    set gg_rct_BrownSpawnTop=Rect(1280.0, 2048.0, 1536.0, 2304.0)
    set gg_rct_BrownBot=Rect(1408.0, - 1152.0, 1920.0, - 640.0)
    set gg_rct_BrownTop=Rect(- 1152.0, 1408.0, - 640.0, 1920.0)
    set gg_rct_CornerTopGreen=Rect(- 6016.0, 1024.0, - 5632.0, 1408.0)
    set gg_rct_CornerTopBrown=Rect(- 5504.0, 1536.0, - 5120.0, 1920.0)
    set gg_rct_CornerBotGreen=Rect(1024.0, - 6016.0, 1408.0, - 5632.0)
    set gg_rct_CornerBotBrown=Rect(1536.0, - 5504.0, 1920.0, - 5120.0)
    set gg_rct_GreenShops1=Rect(- 7168.0, - 6784.0, - 7040.0, - 6016.0)
    set gg_rct_GreenShops2=Rect(- 6784.0, - 7168.0, - 6016.0, - 7040.0)
    set gg_rct_BrownShops1=Rect(2944.0, 1920.0, 3072.0, 2688.0)
    set gg_rct_BrownShops2=Rect(1920.0, 2944.0, 2688.0, 3072.0)
    set gg_rct_GreenWorkShopTop=Rect(- 6272.0, - 4608.0, - 6016.0, - 4352.0)
    set gg_rct_GreenWorkShopBot=Rect(- 4608.0, - 6272.0, - 4352.0, - 6016.0)
    set gg_rct_BrownWorkShopTop=Rect(256.0, 1920.0, 512.0, 2176.0)
    set gg_rct_BrownWorkShopBot=Rect(1920.0, 256.0, 2176.0, 512.0)
    set gg_rct_BrownBase=Rect(- 640.0, - 640.0, 3136.0, 3136.0)
    set gg_rct_GreenBase=Rect(- 7232.0, - 7232.0, - 3456.0, - 3456.0)
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: OpenGates
//===========================================================================
function Trig_OpenGates_Actions takes nothing returns nothing
    call ModifyGateBJ(bj_GATEOPERATION_OPEN, gg_dest_ZTg3_0000)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN, gg_dest_ZTg4_0002)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN, gg_dest_ZTg1_0001)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN, gg_dest_ZTg1_0024)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN, gg_dest_ZTg4_0025)
    call ModifyGateBJ(bj_GATEOPERATION_OPEN, gg_dest_ZTg3_0023)
    set udg_GreenBarracks[0]=gg_unit_h003_0064
    set udg_GreenBarracks[1]=gg_unit_h003_0066
    set udg_GreenBarracks[2]=gg_unit_h003_0065
    set udg_BrownBarracks[0]=gg_unit_h003_0021
    set udg_BrownBarracks[1]=gg_unit_h003_0017
    set udg_BrownBarracks[2]=gg_unit_h003_0023
    set udg_GreenWorkShop[0]=gg_unit_h00A_0059
    set udg_GreenWorkShop[1]=gg_unit_h00A_0099
    set udg_BrownWorkShop[0]=gg_unit_h00A_0010
    set udg_BrownWorkShop[1]=gg_unit_h00A_0042
endfunction

//===========================================================================
function InitTrig_OpenGates takes nothing returns nothing
    set gg_trg_OpenGates=CreateTrigger()
    call TriggerAddAction(gg_trg_OpenGates, function Trig_OpenGates_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_OpenGates()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_OpenGates)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call ForcePlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)

    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call ForcePlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)

    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_USER)

    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call ForcePlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_USER)

    // Player 6
    call SetPlayerStartLocation(Player(6), 6)
    call ForcePlayerStartLocation(Player(6), 6)
    call SetPlayerColor(Player(6), ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(6), false)
    call SetPlayerController(Player(6), MAP_CONTROL_USER)

    // Player 7
    call SetPlayerStartLocation(Player(7), 7)
    call ForcePlayerStartLocation(Player(7), 7)
    call SetPlayerColor(Player(7), ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(7), false)
    call SetPlayerController(Player(7), MAP_CONTROL_USER)

    // Player 8
    call SetPlayerStartLocation(Player(8), 8)
    call ForcePlayerStartLocation(Player(8), 8)
    call SetPlayerColor(Player(8), ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(8), false)
    call SetPlayerController(Player(8), MAP_CONTROL_USER)

    // Player 9
    call SetPlayerStartLocation(Player(9), 9)
    call ForcePlayerStartLocation(Player(9), 9)
    call SetPlayerColor(Player(9), ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(9), false)
    call SetPlayerController(Player(9), MAP_CONTROL_USER)

    // Player 10
    call SetPlayerStartLocation(Player(10), 10)
    call ForcePlayerStartLocation(Player(10), 10)
    call SetPlayerColor(Player(10), ConvertPlayerColor(10))
    call SetPlayerRacePreference(Player(10), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(10), false)
    call SetPlayerController(Player(10), MAP_CONTROL_COMPUTER)

    // Player 11
    call SetPlayerStartLocation(Player(11), 11)
    call ForcePlayerStartLocation(Player(11), 11)
    call SetPlayerColor(Player(11), ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(11), false)
    call SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_449
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(10), 0)
    call SetPlayerState(Player(10), PLAYER_STATE_ALLIED_VICTORY, 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(10), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(10), Player(4), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(10), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(10), Player(4), true)

    // Force: TRIGSTR_450
    call SetPlayerTeam(Player(5), 1)
    call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(6), 1)
    call SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(7), 1)
    call SetPlayerState(Player(7), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(8), 1)
    call SetPlayerState(Player(8), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(9), 1)
    call SetPlayerState(Player(9), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(11), 1)
    call SetPlayerState(Player(11), PLAYER_STATE_ALLIED_VICTORY, 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(5), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(6), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(7), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateAllyBJ(Player(8), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(9), Player(11), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(5), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(6), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(7), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(8), true)
    call SetPlayerAllianceStateAllyBJ(Player(11), Player(9), true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(5), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(6), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(7), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(9), true)
    call SetPlayerAllianceStateVisionBJ(Player(8), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(9), Player(11), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(5), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(6), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(7), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(8), true)
    call SetPlayerAllianceStateVisionBJ(Player(11), Player(9), true)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(0, 9)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 4, 5, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(0, 5, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 6, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 7, 8, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 8, 9, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(1, 1)
    call SetStartLocPrio(1, 0, 2, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(2, 2)
    call SetStartLocPrio(2, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(2, 1, 3, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(3, 2)
    call SetStartLocPrio(3, 0, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(3, 1, 4, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(4, 1)
    call SetStartLocPrio(4, 0, 3, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(5, 1)
    call SetStartLocPrio(5, 0, 6, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(6, 2)
    call SetStartLocPrio(6, 0, 5, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(6, 1, 7, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(7, 2)
    call SetStartLocPrio(7, 0, 6, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7, 1, 8, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(8, 2)
    call SetStartLocPrio(8, 0, 7, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8, 1, 9, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(9, 1)
    call SetStartLocPrio(9, 0, 8, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(10, 1)
    call SetStartLocPrio(10, 0, 4, MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(11, 1)
    call SetStartLocPrio(11, 0, 9, MAP_LOC_PRIO_HIGH)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    local weathereffect we
    call SetCameraBounds(- 7808.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 7808.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3712.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3712.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 7808.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3712.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3712.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 7808.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call SetTerrainFogEx(0, 4000.0, 10000.0, 0.500, 0.784, 0.863, 0.784)
    set we=AddWeatherEffect(Rect(- 8192.0, - 8192.0, 4096.0, 4096.0), 'RAlr')
    call EnableWeatherEffect(we, true)
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("SunkenRuinsDay")
    call SetAmbientNightSound("SunkenRuinsNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call CreateAllDestructables()
    call CreateAllUnits()
    call InitBlizzard()


    call InitGlobals()
    call InitTrig_OpenGates() // INLINED!!
    call ConditionalTriggerExecute(gg_trg_OpenGates) // INLINED!!

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_008")
    call SetMapDescription("TRIGSTR_011")
    call SetPlayers(12)
    call SetTeams(12)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0, - 1920.0, - 2368.0)
    call DefineStartLocation(1, - 6528.0, - 7488.0)
    call DefineStartLocation(2, - 6016.0, - 7552.0)
    call DefineStartLocation(3, - 5504.0, - 7488.0)
    call DefineStartLocation(4, - 4992.0, - 7488.0)
    call DefineStartLocation(5, 2944.0, 3456.0)
    call DefineStartLocation(6, 2432.0, 3456.0)
    call DefineStartLocation(7, 1920.0, 3456.0)
    call DefineStartLocation(8, 1408.0, 3456.0)
    call DefineStartLocation(9, 896.0, 3392.0)
    call DefineStartLocation(10, - 4480.0, - 7488.0)
    call DefineStartLocation(11, 384.0, 3392.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:

