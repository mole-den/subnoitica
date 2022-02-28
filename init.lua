ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/subnoitica/files/actions.lua" )
ModLuaFileAppend( "data/scripts/perks/perk_list.lua", "mods/subnoitica/files/perk_list.lua")
ModMaterialsFileAdd("mods/subnoitica/files/materials.xml")


local nxml = dofile_once("mods/subnoitica/lib/nxml.lua")
local json = dofile_once("mods/subnoitica/lib/json.lua")
BiomeMapLoadImage( 0, 0, "mods/subnoitica/files/biome_map.png" )

function OnModInit()
	print("Mod - OnModInit()")
end

function OnModPostInit()
	print("Mod - OnModPostInit()")
end

function OnPlayerSpawned( player_entity )
	GlobalsSetValue("fragments", "{}")
end

function OnWorldPostUpdate()

end

function OnPlayerDied()
	print("dead")
end

ModMagicNumbersFileAdd( "mods/subnoitica/files/magic_numbers.xml" ) 

GamePrint("Subnoitica")

--[[ConvertMaterialEverywhere( CellFactory_GetType( "offbrand_air" ), CellFactory_GetType( "air" ) )
ConvertMaterialEverywhere( CellFactory_GetType( "air" ), CellFactory_GetType( "water" ) )]]--