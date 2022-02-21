

local nxml = dofile_once("mods/subnoitica/lib/nxml.lua")

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

GamePrint("Subnoitica")