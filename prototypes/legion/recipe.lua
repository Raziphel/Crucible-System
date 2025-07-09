data:extend({
    {
        type = "recipe-category",
        name = "legion-crafting"
    },
})


data:extend({
    {
        type = "recipe",
        name = "verdite-processing",
        category = "metallurgy",
        energy_required = 25,
        ingredients = {
            { type = "fluid", name = "lava",        amount = 50 },
            { type = "item",  name = "verdite-ore", amount = 5 },
        },
        results = {
            { type = "item", name = "verdite-plate", amount = 5 },
        },
        subgroup = "legion-processes",
        order = "c[verdite]-b[verdite-smelting]",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        hide_from_signal_gui = false,
        main_product = "verdite-plate"
    },
})
