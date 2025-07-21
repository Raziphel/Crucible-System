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
        name = "bauxite-processing",
        category = "chemistry",
        energy_required = 5,
        ingredients = {
            { type = "item",  name = "bauxite-ore",   amount = 5 },
            { type = "fluid", name = "sulfuric-acid", amount = 10 }
        },
        results = {
            { type = "item", name = "alumina", amount = 3 },
        },
        subgroup = "legion-processes",
        order = "c[bauxite]-b[bauxite-processing]",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        hide_from_signal_gui = false,
        main_product = "alumina",
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
        name = "alumina-smelting",
        category = "chemistry",
        energy_required = 10,
        ingredients = {
            { type = "item", name = "alumina", amount = 2 }
        },
        results = {
            { type = "item", name = "aluminum-plate", amount = 3 },
        },
        subgroup = "legion-processes",
        order = "c[bauxite]-b[bauxite-processing]",
        enabled = false,
        allow_productivity = true,
        auto_recycle = false,
        hide_from_signal_gui = false,
        main_product = "aluminum-plate",
        surface_conditions =
        {
            {
                property = "pressure",
                min = 4000,
                max = 4000
            }
        },
    },
    -- {
    --     type = "recipe",
    --     name = "bauxite-processing",
    --     category = "advanced-metallurgy",
    --     energy_required = 50,
    --     ingredients = {
    --         { type = "fluid", name = "lava",        amount = 50 },
    --         { type = "item",  name = "bauxite-ore", amount = 5 },
    --     },
    --     results = {
    --         { type = "item", name = "aluminum", amount = 1 },
    --     },
    --     subgroup = "legion-processes",
    --     order = "c[bauxite]-b[bauxite-smelting]",
    --     enabled = false,
    --     allow_productivity = true,
    --     auto_recycle = false,
    --     hide_from_signal_gui = false,
    --     main_product = "bauxite-plate",
    --     surface_conditions =
    --     {
    --         {
    --             property = "pressure",
    --             min = 4000,
    --             max = 4000
    --         }
    --     },
    -- },
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
