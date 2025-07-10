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
        name = "viridion-processing",
        category = "metallurgy",
        energy_required = 150,
        ingredients = {
            { type = "fluid", name = "lava",         amount = 50 },
            { type = "item",  name = "viridion-ore", amount = 5 },
        },
        results = {
            { type = "item", name = "viridion-plate", amount = 1 },
        },
        subgroup = "legion-processes",
        order = "c[viridion]-b[viridion-smelting]",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        hide_from_signal_gui = false,
        main_product = "viridion-plate"
    },
    {
        type = "recipe",
        name = "advanced-foundry",
        category = "metallurgy",
        enabled = false,
        energy_required = 1000,
        ingredients = {
            { type = "item",  name = "foundry",               amount = 5, },
            { type = "item",  name = "productivity-module-3", amount = 25 },
            { type = "item",  name = "speed-module-3",        amount = 25 },
            { type = "item",  name = "viridion-plate",        amount = 100 },
            { type = "item",  name = "refined-concrete",      amount = 100 },
            { type = "fluid", name = "lubricant",             amount = 200 },
        },
        results = {
            { name = "advanced-foundry", amount = 1, type = "item" }
        },
        allow_productivity = false,
        auto_recycle = false,
        hide_from_signal_gui = false,
    },
})
