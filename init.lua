

local nxml = dofile_once("mods/subnoitica/lib/nxml.lua")

BiomeMapLoadImage( 0, 0, "mods/subnoitica/files/biome_map.png" )

function OnModInit()
	print("Mod - OnModInit()")
end

function OnModPostInit()
	print("Mod - OnModPostInit()")
end

function OnPlayerSpawned( player_entity )
	Moulding()
end

function OnWorldPostUpdate()
	Moulding()
end

function OnPlayerDied()
	print("dead")
end

function Moulding()
	
end

ModMagicNumbersFileAdd( "mods/subnoitica/files/magic_numbers.xml" ) 

GamePrint("Subnoitica")