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
    {
        type = "technology",
        name = "alloy-forge",
        icon_size = 256,
        icon = "__crucible_system__/graphics/technology/alloy-forge-tech.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "alloy-forge"
            },

        },
        prerequisites = { "iridium-processing" },
        unit =
        {
            count = 1000,
            ingredients =
            {
                { "metallurgic-science-pack", 1 },
                { "promethium-science-pack",  1 },
            },
            time = 60
        },
    },

})
