data:extend({
    {
        type = "recipe-category",
        name = "legion-crafting"
    },
    {
        type = "recipe-category",
        name = "advanced-metallurgy"
    },
})


data:extend({
    {
        type = "recipe",
        name = "iridium-processing",
        category = "advanced-metallurgy",
        energy_required = 150,
        ingredients = {
            { type = "fluid", name = "lava",        amount = 50 },
            { type = "item",  name = "iridium-ore", amount = 5 },
        },
        results = {
            { type = "item", name = "iridium-plate", amount = 1 },
        },
        subgroup = "legion-processes",
        order = "c[iridium]-b[iridium-smelting]",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        hide_from_signal_gui = false,
        main_product = "iridium-plate",
        surface_conditions =
        {
            {
                property = "pressure",
                min = 4000,
                max = 4000
            }
        },
    },
    {
        type = "recipe",
        name = "shale-cracking",
        category = "metallurgy",
        energy_required = 25,
        ingredients = {
            { type = "item",  name = "shale-ore", amount = 10 },
            { type = "fluid", name = "lava",      amount = 50 }
        },
        results = {
            { type = "fluid", name = "heavy-oil", amount = 100 },
            { type = "item",  name = "stone",     amount = 10 }
        },
        subgroup = "legion-processes",
        order = "c[shale]-b[shale-cracking]",
        enabled = false,
        allow_productivity = true,
        hide_from_signal_gui = true,
        main_product = "heavy-oil",
        surface_conditions =
        {
            {
                property = "pressure",
                min = 4000,
                max = 4000
            }
        },
        crafting_machine_tint = {
            primary = { r = 0.3, g = 0.2, b = 0.1 },
            secondary = { r = 0.5, g = 0.4, b = 0.2 }
        }
    }
})
