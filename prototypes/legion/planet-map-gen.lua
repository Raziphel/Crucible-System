local planet_map_gen = {}

planet_map_gen.legion = function()
    return
    {
        starting_area = 2,
        aux_climate_control = true,

        cliff_settings = {
            enabled = true,
            cliff_elevation_interval = 50,
            cliff_elevation_0 = 20,
            name = "cliff"
        },

        autoplace_controls =
        {
            ["uranium-ore"] = { frequency = 0.3, size = 1, richness = 2 },
            ["coal"] = { frequency = 0.5, size = 2, richness = 2 },
            ["crude-oil"] = { frequency = 0.5, size = 1, richness = 3 },
        },
        autoplace_settings = {
            ["tile"] = {
                settings = {
                    -- Legion
                    ["legion-grass-1"] = {},
                    ["legion-grass-2"] = {},
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
                }
            },
            ["entity"] = {
                settings = {
                    -- Vulcanus trees
                    ["ashland-lichen-tree"] = {},
                    ["ashland-lichen-tree-flaming"] = {},
                    -- Resources
                    ["uranium-ore"] = {},
                    ["coal"] = {},
                    ["crude-oil"] = {},
                }
            },
        }
    }
end

return planet_map_gen
