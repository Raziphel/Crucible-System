local planet_map_gen = {}

planet_map_gen.legion = function()
    return
    {
        starting_area = 2,
        property_expression_names = {
            elevation = "legion_elevation",
            temperature = "legion_temperature",
            moisture = "legion_moisture",
            aux = "legion_aux",
            cliffiness = "cliffiness_basic",
            cliff_elevation = "cliff_elevation_from_elevation",
            ["entity:coal:probability"] = "legion_coal_probability",
            ["entity:coal:richness"] = "legion_coal_richness",
            ["entity:uranium:probability"] = "legion_uranium_ore_probability",
            ["entity:uranium:richness"] = "legion_uranium_ore_richness",
        },
        cliff_settings = {
            name = "cliff-legion",
            cliff_elevation_interval = 120,
            cliff_elevation_0 = 70
        },
        autoplace_settings = {
            ["tile"] = {
                settings = {
                    ["verdite"] = {},
                    -- Vulcanus
                    ["lava"] = {},
                    ["volcanic-soil-dark"] = {},
                    ["volcanic-ash-dark"] = {},
                    ["volcanic-cracks"] = {},
                    ["volcanic-cracks-warm"] = {},
                    ["volcanic-folds"] = {},
                    ["volcanic-folds-flat"] = {},
                    ["volcanic-folds-warm"] = {},
                    ["volcanic-cracks-hot"] = {},
                    ["volcanic-jagged-ground"] = {},
                    ["volcanic-ash-cracks"] = {},
                    -- Nauvis
                    ["grass-1"] = {},
                    ["grass-2"] = {},
                    ["grass-3"] = {},
                    ["grass-4"] = {},
                    ["red-desert-0"] = {},
                    ["red-desert-1"] = {},
                    ["red-desert-2"] = {},
                    ["red-desert-3"] = {},
                    ["nuclear-ground"] = {},
                }
            },
            ["decorative"] = {
                settings = {
                    -- Vulcanus
                    ["vulcanus-rock-decal-large"] = {},
                    ["vulcanus-crack-decal-large"] = {},
                    ["vulcanus-crack-decal-huge-warm"] = {},
                    ["vulcanus-dune-decal"] = {},
                    ["vulcanus-lava-fire"] = {},
                    ["curly-roots-grey"] = {},
                    -- Nauvis
                    ["brown-hairy-grass"] = {},
                    ["brown-carpet-grass"] = {},
                    ["brown-asterisk-mini"] = {},
                    ["brown-asterisk"] = {},
                    ["red-asterisk"] = {},
                    ["dark-mud-decal"] = {},
                    ["light-mud-decal"] = {},
                    ["cracked-mud-decal"] = {},
                    ["red-desert-decal"] = {},
                    ["sand-decal"] = {},
                    ["sand-dune-decal"] = {},
                    ["red-pita"] = {},
                    ["red-croton"] = {},
                    ["brown-fluff"] = {},
                    ["brown-fluff-dry"] = {},
                    ["red-desert-bush"] = {},
                    ["white-desert-bush"] = {},
                    ["garballo-mini-dry"] = {},
                    ["garballo"] = {},
                    ["green-bush-mini"] = {},
                    ["medium-rock"] = {},
                    ["small-rock"] = {},
                    ["tiny-rock"] = {},
                    ["medium-sand-rock"] = {},
                    ["small-sand-rock"] = {}
                }
            },
            ["entity"] = {
                settings = {
                    ["ashland-lichen-tree"] = {},
                    ["ashland-lichen-tree-flaming"] = {},
                    ["uranium-ore"] = {},
                    ["stone"] = {},
                }
            }
        }
    }
end

return planet_map_gen
