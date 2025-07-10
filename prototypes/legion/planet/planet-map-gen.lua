local planet_map_gen = {}

planet_map_gen.legion = function()
    return
    {
        starting_area = 2,
        aux_climate_control = true,

        cliff_settings = {
            enabled = true,
            cliff_elevation_interval = 10,
            cliff_elevation_0 = 5,
            name = "cliff"
        },

        autoplace_controls =
        {
            ["uranium-ore"] = { frequency = 0.5, size = 1, richness = 2 },
            ["viridion-ore"] = { frequency = 0.5, size = 2, richness = 3 },
        },
        autoplace_settings = {
            ["tile"] = {
                settings = {
                    -- Legion
                    ["legion-grass-1"] = {},
                    ["legion-grass-2"] = {},
                    -- Vulcanus
                    ["lava"] = {},
                    ["lava-hot"] = {},
                    ["volcanic-soil-dark"] = {},
                    ["volcanic-soil-light"] = {},
                    ["volcanic-ash-dark"] = {},
                    ["volcanic-cracks"] = {},
                    ["volcanic-cracks-warm"] = {},
                    ["volcanic-cracks-hot"] = {},
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
                    ["red-pita"] = {},
                    ["fuchsia-pita"] = {},
                    ["tiny-volcanic-rock"] = {},
                    ["small-volcanic-rock"] = {},
                    ["medium-volcanic-rock"] = {},
                }
            },
            ["entity"] = {
                settings = {
                    -- Vulcanus trees
                    ["ashland-lichen-tree"] = {},
                    ["ashland-lichen-tree-flaming"] = {},
                    -- Resources
                    ["uranium-ore"] = {},
                    ["viridion-ore"] = {},
                }
            },
        }
    }
end

return planet_map_gen
