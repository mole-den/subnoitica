dofile_once("data/scripts/lib/utilities.lua")
dofile("mods/subnoitica/lib/stringstore.lua")
dofile("mods/subnoitica/lib/noitavariablestore.lua")

function collision_trigger(colliding_entity_id)
    if (EntityHasTag(colliding_entity_id, "material") == false) then
        return
    end
    local store = stringstore.open_store(stringstore.noita.variable_storage_components(
        EntityGetWithTag("player_unit")[1])).materials
        
    local material = (string.gmatch(string.gmatch((string.gmatch(EntityGetTags(colliding_entity_id),
        'material_[^,| ]+'))(), '_[^,| ]+')(), '[^_]+')())
    
    
end