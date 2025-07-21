data:extend({
    {
        type = "technology",
        name = "crucible-system-discovery",
        icons = util.technology_icon_constant_planet("__crucible_system__/graphics/technology/edge-icon-tech.png"),
        icon_size = 256,
        order = "c[crucible_system]-c[crucible-system-discovery]",
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "sye-crucible",
                use_icon_overlay_constant = true
            },
        },
        prerequisites = { "electromagnetic-science-pack", "agricultural-science-pack", "metallurgic-science-pack", "utility-science-pack", "production-science-pack" },
        unit =
        {
            count = 2000,
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
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "shattered-nekros-discovery",
        icons = util.technology_icon_constant_planet("__crucible_system__/graphics/technology/shattered-nekros-tech.png"),
        icon_size = 256,
        order = "c[crucible_system]-c[shattered-nekros-discovery]",
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "shattered-nekros",
                use_icon_overlay_constant = true
            }
        },
        prerequisites = { "crucible-system-discovery" },
        unit =
        {
            count = 100,
            ingredients =
            {
                { "entropic-science-pack", 1 },
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "legion-discovery",
        icons = util.technology_icon_constant_planet("__crucible_system__/graphics/technology/legion-tech.png"),
        icon_size = 256,
        order = "c[crucible_system]-s[shattered-nekros-discovery]",
        effects =
        {
            {
                type = "unlock-space-location",
                space_location = "legion",
                use_icon_overlay_constant = true
            }
        },
        prerequisites = { "crucible-system-discovery", "aop-smeltery" },
        unit =
        {
            count = 1000,
            ingredients =
            {
                { "entropic-science-pack", 1 },
            },
            time = 30
        }
    },
})
