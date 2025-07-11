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
        category = "metallurgy",
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
        name = "alloy-forge",
        category = "metallurgy",
        enabled = false,
        energy_required = 1000,
        ingredients = {
            { type = "item",  name = "foundry",               amount = 5, },
            { type = "item",  name = "productivity-module-3", amount = 25 },
            { type = "item",  name = "speed-module-3",        amount = 25 },
            { type = "item",  name = "iridium-plate",         amount = 100 },
            { type = "item",  name = "refined-concrete",      amount = 100 },
            { type = "fluid", name = "lubricant",             amount = 200 },
        },
        results = {
            { name = "alloy-forge", amount = 1, type = "item" }
        },
        allow_productivity = false,
        auto_recycle = false,
        hide_from_signal_gui = false,
        surface_conditions =
        {
            {
                property = "pressure",
                min = 4000,
                max = 4000
            }
        },
    },
})
