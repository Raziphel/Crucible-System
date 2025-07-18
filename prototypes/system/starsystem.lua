PlanetsLib:extend({
    {
        type = "space-location",
        name = "geass",
        starmap_icon = "__crucible_system__/graphics/icons/geass-star.png",
        starmap_icon_size = 4096,
        sprite_only = true,
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 150,
            orientation = 0.45
        },
        magnitude = 120,
    },
})

PlanetsLib:extend({
    {
        type = "space-location",
        name = "crucible-system-edge",
        icon = "__crucible_system__/graphics/icons/edge-icon.png",
        solar_power_in_space = 1,
        orbit = {
            parent = {
                type = "space-location",
                name = "geass",
            },
            distance = 50,
            orientation = 0.05,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/crucible-system-edge-orbit.png",
                size = 4096,
            }
        }
    }
})

PlanetsLib:extend({
    {
        type = "space-location",
        name = "shattered-nekros",
        icon = "__crucible_system__/graphics/icons/shattered-nekros.png",
        starmap_icon = "__crucible_system__/graphics/icons/shattered-nekros.png",
        starmap_icon_size = 512,
        solar_power_in_space = 7,
        asteroid_spawn_definitions = shattered_nekros_asteroids,
        orbit = {
            parent = {
                type = "space-location",
                name = "geass",
            },
            distance = 45,
            orientation = 0.12,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/shattered-nekros-orbit.png",
                size = 4096,
            }
        }
    }
})
