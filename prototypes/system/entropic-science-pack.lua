local meld = require("meld")

-- Main method to get a flask design from Quality Glassware to use in your mod
local flask = quality_glassware.request_flask(
    "entropic-science-pack",
    {
        { model = "sphere_spiked", variant = "liquid_black" }
    }
)

-- prototypes for a new science pack
local entropic_technology = {
    type = "technology",
    name = "entropic-science-pack",
    prerequisites = { "cryogenic-science-pack" },
    research_trigger =
    {
        type = "mine-entity",
        entity = "small-entropium-asteroid"
    },
    effects =
    {
        {
            type = "unlock-recipe",
            recipe = "entropic-science-pack-recipe"
        },
    }
}

local entropic_science_pack_recipe = {
    type = "recipe",
    name = "entropic-science-pack-recipe",
    category = "crafting",
    energy_required = 250,
    ingredients = {
        { type = "item", name = "entropium-asteroid-chunk", amount = 10 },
        { type = "item", name = "space-science-pack",       amount = 1 },
    },
    results = {
        { type = "item", name = "entropic-science-pack", amount = 1 },
    },
    subgroup = "science-pack",
    order = "b-a-a",
    enabled = false,
    allow_productivity = true,
    auto_recycle = false,
    hide_from_signal_gui = false,
    main_product = "entropic-science-pack",
    surface_conditions =
    {
        {
            property = "pressure",
            min = 0,
            max = 0
        }
    },
}



local entropic_science_pack = {
    type = "tool",
    name = "entropic-science-pack",
    stack_size = 100,
    durability = 1,
}

-- Add the icon and icon_size properties to the prototypes, this sets icon, and icon_size and removes icons.
meld(entropic_technology, quality_glassware.technology_graphics_for(flask, meld))
-- You can also omit meld to get an icon layer suitable for composing.
entropic_science_pack.icons = {
    quality_glassware.item_graphics_for(flask),
    {
        icon = "__core__/graphics/add-icon-white.png",
        icon_size = 32,
        shift = { 8, 8 },
        scale = 0.25,
    }
}

-- Add the prototypes to the game
data:extend({ entropic_science_pack, entropic_technology, entropic_science_pack_recipe })

-- Tell the lab it can consume this science pack
local lab_inputs = data.raw.lab.lab.inputs
lab_inputs[#lab_inputs + 1] = "entropic-science-pack"
