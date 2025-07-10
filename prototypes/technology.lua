data:extend({
    {
        type = "technology",
        name = "crucible-system-discovery",
        icons = util.technology_icon_constant_planet("__crucible_system__/graphics/technology/edge-icon-tech.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "crucible-system-edge",
                use_icon_overlay_constant = true
            },
        },
        prerequisites = { "promethium-science-pack", "speed-module-3", "productivity-module-3", "efficiency-module-3", "legendary-quality" },
        unit =
        {
            count = 200,
            ingredients =
            {
                { "promethium-science-pack", 1 },
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "legion-discovery",
        icons = util.technology_icon_constant_planet("__crucible_system__/graphics/technology/legion-tech.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "legion",
                use_icon_overlay_constant = true
            }
        },
        prerequisites = { "crucible-system-discovery" },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "metallurgic-science-pack", 10 },
                { "promethium-science-pack",  1 },
            },
            time = 60
        }
    },
})
