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
        mana               = 1,
        max_uses           = 1000,
        action = function()
            add_projectile("data/entities/projectiles/fire_ext_beam.xml")
            add_projectile("data/entities/projectiles/fire_ext_beam.xml")
            add_projectile("data/entities/projectiles/fire_ext_beam.xml")
            add_projectile("data/entities/projectiles/fire_ext_beam.xml")
            add_projectile("data/entities/projectiles/fire_ext_beam.xml")
            add_projectile("data/entities/projectiles/fire_ext_beam.xml")
			shot_effects.recoil_knockback = shot_effects.recoil_knockback + 2.0
			c.spread_degrees = c.spread_degrees + 45.0
        end,
    },
}

for k, v in ipairs(to_insert) do
    table.insert(actions, v)
end