ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/subnoitica/files/actions.lua")
ModLuaFileAppend("data/scripts/perks/perk_list.lua", "mods/subnoitica/files/perk_list.lua")
ModMaterialsFileAdd("mods/subnoitica/files/materials.xml")

dofile("mods/subnoitica/lib/stringstore.lua")
dofile("mods/subnoitica/lib/noitavariablestore.lua")
local nxml = dofile_once("mods/subnoitica/lib/nxml.lua")
BiomeMapLoadImage(0, 0, "mods/subnoitica/files/biome_map.png")

function OnModInit()
    print("Mod - OnModInit()")
end

function OnModPostInit()
    print("Mod - OnModPostInit()")
end

function OnPlayerSpawned(player_entity)
    local x = stringstore.open_store(stringstore.noita.variable_storage_components(EntityGetWithTag("player_unit")[1]))
    x.fragments = {}
    x.materials = {}
end

function OnWorldPostUpdate()

end

function OnPlayerDied()
    print("dead")
end

ModMagicNumbersFileAdd("mods/subnoitica/files/magic_numbers.xml")

GamePrint("Subnoitica")
