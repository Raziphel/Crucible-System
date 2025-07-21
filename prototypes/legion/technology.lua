data:extend({
    {
        type = "technology",
        name = "shale-cracking",
        icon = "__crucible_system__/graphics/technology/shale-tech.png",
        icon_size = 256,
        order = "c[crucible_system]-s[shale-cracking]",
        prerequisites = { "legion-discovery" },
        research_trigger =
        {
            type = "mine-entity",
            entity = "shale-ore"
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "shale-cracking"
            },
        }
    },
    {
        type = "technology",
        name = "bauxite-processing",
        icon = "__crucible_system__/graphics/technology/bauxite-tech.png",
        icon_size = 256,
        order = "c[crucible_system]-b[bauxite-processing]",
        prerequisites = { "legion-discovery" },
        research_trigger =
        {
            type = "mine-entity",
            entity = "bauxite-ore"
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "bauxite-processing"
            },
        }
    },
    {
        type = "technology",
        name = "alumina-smelting",
        icon = "__crucible_system__/graphics/icons/aluminum-plate.png",
        icon_size = 64,
        order = "c[crucible_system]-b[bauxite-processing]",
        prerequisites = { "legion-discovery" },
        research_trigger =
        {
            type = "craft-item",
            item = "alumina",
            amount = 1,
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "alumina-smelting"
            },
        }
    },
})
