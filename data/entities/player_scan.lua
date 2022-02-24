dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger(colliding_entity_id)
    local entity_id = EntityGetName()
    local x, y = EntityGetTransform()

    if (EntityHasTag(colliding_entity_id, "mortal")) then
        return
    elseif (EntityHasTag(colliding_entity_id, "fragment_seaglide")) then
        local fragment_seaglide_count = tonumber(GlobalsGetValue('fragment_seaglide_count'))
        if GameHasFlagRun("has_seaglide") == false then
            if fragment_seaglide_count == 2 then
                -- spawn seaglide

                GlobalsSetValue('fragment_seaglide_count', 0)
                GamePrint("Seaglide acquired!")
                GameAddFlagRun("has_seaglide")
                return
            else
                fragment_seaglide_count = fragment_seaglide_count + 1
                GlobalsSetValue('fragment_seaglide_count', fragment_count)
            end

        elseif GameHasFlagRun("has_seaglide") == true then
            has_unlocked_rewards(10, 2)
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
