PlanetsLib:extend({
    {
        type = "space-location",
        name = "syndicate",
        starmap_icon = "__syndicate_galaxy__/graphics/icons/geass-star-starmap.png",
        starmap_icon_size = 512,
        sprite_only = true,
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 100,
            orientation = 0.96
        },
        magnitude = 15,
    },
})

PlanetsLib:extend({
    {
        type = "space-location",
        name = "syndicate-stargate",
        localised_name = "Syndicate system stargate",
        icon = "__syndicate_galaxy__/graphics/icons/edge-icon.png",
        solar_power_in_space = 30,
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 30,
            orientation = 0.20,
            sprite = {
                type = "sprite",
                filename = "__syndicate_galaxy__/graphics/orbits/syndicate_system_edge_orbit.png",
                size = 3843,
                scale = 0.25,
            }
        }
    }
})

PlanetsLib:extend({
    {
        type = "space-location",
        name = "nauvis-stargate",
        localised_name = "Nauvis system stargate",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        solar_power_in_space = 30,
        orbit = {
            parent = {
                type = "space-location",
                name = "syndicate",
            },
            distance = 15,
            orientation = 0.35,
            sprite = {
                type = "sprite",
                filename = "__syndicate_galaxy__/graphics/orbits/syndicate_system_edge_orbit.png",
                size = 3843,
                scale = 0.25,
            }
        }
    }
})
