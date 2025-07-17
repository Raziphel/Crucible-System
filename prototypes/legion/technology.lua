data:extend({
    {
        type = "technology",
        name = "iridium-processing",
        icon = "__crucible_system__/graphics/technology/iridium-tech.png",
        icon_size = 256,
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
