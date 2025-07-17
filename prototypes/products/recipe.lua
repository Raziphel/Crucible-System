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
})
