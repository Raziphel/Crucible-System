data:extend({
    {
        type = "technology",
        name = "shale-cracking",
        icon = "__crucible_system__/graphics/technology/shale-tech.png",
        icon_size = 256,
        order = "t[crucible_system]-f[shale-cracking]",
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
        name = "iridium-processing",
        icon = "__crucible_system__/graphics/technology/iridium-tech.png",
        icon_size = 256,
        order = "t[crucible_system]-f[iridium-processing]",
        prerequisites = { "legion-discovery" },
        research_trigger =
        {
            type = "mine-entity",
            entity = "iridium-ore"
        },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "iridium-processing"
            },
        }
    },
})
