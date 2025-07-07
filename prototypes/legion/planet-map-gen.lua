local planet_map_gen = {}

planet_map_gen.legion = function()
    return
    {
        starting_area = 2,
        aux_climate_control = true,
        autoplace_controls =
        {
            ["stone"] = {},
            ["uranium-ore"] = {},
            ["coal"] = {},
            ["crude-oil"] = {},
        },
        autoplace_settings = {
            ["tile"] = {
                settings = {
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
                    ["red-desert-0"] = {},
                    ["red-desert-1"] = {},
                }
            },
            ["decorative"] = {
                settings = {
                    -- Vulcanus
                    ["vulcanus-rock-decal-large"] = {},
                    ["vulcanus-crack-decal-large"] = {},
                    ["vulcanus-crack-decal-huge-warm"] = {},
                    ["vulcanus-dune-decal"] = {},
                    ["curly-roots-grey"] = {},
                    -- Nauvis
                    ["brown-hairy-grass"] = {},
                    ["brown-carpet-grass"] = {},
                    ["dark-mud-decal"] = {},
                    ["light-mud-decal"] = {},
                    ["cracked-mud-decal"] = {},
                    ["brown-fluff"] = {},
                }
            },
            ["entity"] = {
                settings = {
                    -- Vulcanus trees
                    ["ashland-lichen-tree"] = {},
                    ["ashland-lichen-tree-flaming"] = {},

                    -- Other entities
                    ["stone"] = {},
                    ["uranium-ore"] = {},
                    ["coal"] = {},
                }
            }
        }
    }
end

return planet_map_gen
