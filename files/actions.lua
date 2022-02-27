local to_insert = {
    {
        id                 = "FIRE_EXT",
        name               = "Fire Extinguisher",
        description        = "Extinguishes fires.",
        sprite             = "data/ui_gfx/gun_actions/subnoitica_fire_extinguisher.png",
        type               = ACTION_TYPE_PROJECTILE,
        spawn_level        = "",
        spawn_probability  = "",
        price              = 10,
        mana               = 0,
        max_uses           = 1000,
        action = function()
            add_projectile("data/entities/projectiles/fire_ext_foam.xml")
			c.spread_degrees = c.spread_degrees + 45.0

            -- reverse force instead of recoil bc annoying particles and stuff

            --[[ disabled until gustavo adds underwater detection

            local player = EntityGetWithTag( "player_unit" )[1]
			local pos_x, pos_y = EntityGetTransform( player )
			local mouse_x, mouse_y = ComponentGetValue2(EntityGetFirstComponentIncludingDisabled(player, "ControlsComponent"), "mMousePosition")
			if (mouse_x == nil or mouse_y == nil) then return end
			local aim_x = mouse_x - pos_x
			local aim_y = mouse_y - pos_y
			local len = math.sqrt((aim_x^2) + (aim_y^2))
			local force_x = -100
			local force_y = -100
			ComponentSetValue2( EntityGetFirstComponent(player, "CharacterDataComponent"), "mVelocity",
			(aim_x/len*force_x), (aim_y/len*force_y))
            ]]--
        end,
    },
    {
        id                 = "SEAGLIDE",
        name               = "Seaglide",
        description        = "Provides fast underwater travel",
        sprite             = "data/ui_gfx/gun_actions/subnoitica_seaglide.png",
        type               = ACTION_TYPE_UTILITY,
        spawn_level        = "",
        spawn_probability  = "",
        price              = 10,
        mana               = 0,
        action = function()
            local player = EntityGetWithTag( "player_unit" )[1]
			local pos_x, pos_y = EntityGetTransform( player )
			local mouse_x, mouse_y = ComponentGetValue2(EntityGetFirstComponentIncludingDisabled(player, "ControlsComponent"), "mMousePosition")
			if (mouse_x == nil or mouse_y == nil) then return end
			local aim_x = mouse_x - pos_x
			local aim_y = mouse_y - pos_y
			local len = math.sqrt((aim_x^2) + (aim_y^2))
			local force_x = 100
			local force_y = 100
			ComponentSetValue2( EntityGetFirstComponent(player, "CharacterDataComponent"), "mVelocity",
			(aim_x/len*force_x), (aim_y/len*force_y))
        end,
    },
    {
        id                 = "SURVIVAL_KNIFE",
        name               = "Survival Knife",
        description        = "Attack with your survival knife",
        sprite             = "data/ui_gfx/gun_actions/survival_knife.png",
        type               = ACTION_TYPE_PROJECTILE,
        spawn_level        = "",
        spawn_probability  = "",
        price              = 10,
        mana               = 0,
        action = function()
        end,
    },
}


for k, v in ipairs(to_insert) do
    table.insert(actions, v)
end