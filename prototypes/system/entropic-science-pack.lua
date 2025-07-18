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
    unit = {
        time = 30,
        count = 10,
        ingredients =
        {
            { "automation-science-pack",      1 },
            { "logistic-science-pack",        1 },
            { "chemical-science-pack",        1 },
            { "production-science-pack",      1 },
            { "utility-science-pack",         1 },
            { "space-science-pack",           1 },
            { "metallurgic-science-pack",     1 },
            { "agricultural-science-pack",    1 },
            { "electromagnetic-science-pack", 1 },
            { "cryogenic-science-pack",       1 },
        },
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
data:extend({ entropic_science_pack, entropic_technology })

-- Tell the lab it can consume this science pack
local lab_inputs = data.raw.lab.lab.inputs
lab_inputs[#lab_inputs + 1] = "entropic-science-pack"
