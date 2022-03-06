dofile_once("data/scripts/lib/utilities.lua")
dofile_once("mods/subnoitica/lib/stringstore.lua")
dofile_once("mods/subnoitica/lib/noitavariablestore.lua")
recipies = dofile_once("data/entities/recipies.lua")
store = stringstore.open_store(stringstore.noita.variable_storage_components(
    EntityGetWithTag("player_unit")[1])).materials

function craft(item)
    local i = recipies[item]
    for k, v in pairs(i.materials) do
        if (type(store[k]) == "string") then
            store[k] = 0
        end
        if (store[k] < v) then return end
    end
    for k, v in pairs(i.materials) do 
        store[k] = store[k] - v
    end
    local x, y = EntityGetTransform(EntityGetWithTag("player_unit")[1])
    EntityLoad(i.creates, x, y)
    GamePrint("Crafted " .. item .. "!")
end