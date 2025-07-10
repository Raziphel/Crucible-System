PlanetsLib:extend({
    {
        type = "space-location",
        name = "geass",
        starmap_icon = "__crucible_system__/graphics/icons/geass-star.png",
        starmap_icon_size = 512,
        sprite_only = true,
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 150,
            orientation = 0.25
        },
        magnitude = 15,
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
            distance = 40,
            orientation = 0.75,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/crucible-system-edge-orbit.png",
                size = 4096,
            }
        }
    }
})
