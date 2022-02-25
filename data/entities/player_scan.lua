dofile_once("data/scripts/lib/utilities.lua")

local json = dofile_once("mods/subnoitica/lib/json.lua")
local fragment_handlers = {
    seaglide = function (already_unlocked)
        if (already_unlocked) then 
            has_unlocked_rewards(10, 2)
            return
        end
        GamePrint("Seaglide acquired!") 
    end
};

function collision_trigger(colliding_entity_id)
    local entity_id = EntityGetName()
    local x, y = EntityGetTransform()
    GamePrint('collision_trigger')
    if (EntityHasTag(colliding_entity_id, "mortal")) then return
    elseif (EntityHasTag(colliding_entity_id, "fragment")) then
        local fragment_type = (string.gmatch(string.gmatch((string.gmatch(EntityGetTags(colliding_entity_id), 'fragment_[^,| ]+'))(), '_[^,| ]+')()
        , '[^_]+')())
        local all_fragment_counts = json.decode(GlobalsGetValue('fragments'))
        local fragment_count = all_fragment_counts[fragment_type]
        if GameHasFlagRun("has_" .. fragment_type) == false then
            if fragment_count == 2 then
                all_fragment_counts[fragment_type] = 0
                GlobalsSetValue('fragments', json.encode(all_fragment_counts))
                fragment_handlers[fragment_type](false)
                GameAddFlagRun("has_" .. fragment_type)
                return
            else
                all_fragment_counts[fragment_type] = fragment_count + 1
                GlobalsSetValue('fragments', json.encode(all_fragment_counts))
            end

        elseif GameHasFlagRun("has_" .. fragment_type) == true then
            fragment_handlers[fragment_type](true)
        end
        EntityKill(colliding_entity_id)
    end
end

function has_unlocked_rewards(reward_chance, reward_tier)
    local do_reward = math.random(1, reward_chance)

    if do_reward == 1 then
        local pick_reward = math.random(1, reward_tier)

        if pick_reward == 1 then
            -- 100 gold
        elseif pick_reward == 2 then
            -- spell refresh
        elseif pick_reward == 3 then
            -- full heal
        elseif pick_reward == 4 then
            -- max health up
        elseif pick_reward == 5 then
            -- max health up (with heal)
        end
    end
end
