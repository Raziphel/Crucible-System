data:extend({
    {
        type = "technology",
        name = "fluid-mining",
        icons = util.technology_icon_constant_planet("__crucible_system__/graphics/technology/fluid-mining-tech.png"),
        icon_size = 256,
        essential = true,
        effects =
        {
            {
                type = "mining-with-fluid",
                modifier = true
            }
        },
        prerequisites = { "chemical-science-pack", "concrete" },
        unit =
        {
            count = 300,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 }
            },
            time = 60
        }
    },

    -------------------------------------------------------------------- Space Discovery Techs
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
            count = 500,
            ingredients =
            {
                { "automation-science-pack",      1 },
                { "logistic-science-pack",        1 },
                { "chemical-science-pack",        1 },
                { "production-science-pack",      1 },
                { "utility-science-pack",         1 },
                { "space-science-pack",           1 },
                { "metallurgic-science-pack",     1 },
                { "agricultural-science-pack",    1 },
                { "electromagnetic-science-pack", 1 },
                { "cryogenic-science-pack",       1 },
            },
            time = 30
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
            count = 500,
            ingredients =
            {
                { "automation-science-pack",      1 },
                { "logistic-science-pack",        1 },
                { "chemical-science-pack",        1 },
                { "production-science-pack",      1 },
                { "utility-science-pack",         1 },
                { "space-science-pack",           1 },
                { "metallurgic-science-pack",     1 },
                { "agricultural-science-pack",    1 },
                { "electromagnetic-science-pack", 1 },
                { "cryogenic-science-pack",       1 },
            },
            time = 30
        }
    },
})
