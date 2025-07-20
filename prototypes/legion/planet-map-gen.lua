local planet_map_gen = table.deepcopy(data.raw.planet.vulcanus.map_gen_settings)

planet_map_gen.legion = function()
    return
    {
        cliff_settings =
        {
            name = "cliff-vulcanus",
            cliff_elevation_interval = 120,
            cliff_elevation_0 = 70
        },

        property_expression_names =
        {
            elevation = "vulcanus_elevation",
            aux = "vulcanus_aux",
            moisture = "vulcanus_moisture",
            temperature = "vulcanus_temperature",
            cliffiness = "vulcanus_cliffiness",
            cliff_elevation = "cliff_elevation_from_elevation",
            enemy_base_radius = "enemy_base_radius",
            enemy_base_frequency = "enemy_base_frequency",
        },

        autoplace_controls =
        {
            ["enemy-base"] = { frequency = 1, size = 1, richness = 1 },
            ["uranium-ore"] = { frequency = 0.5, size = 1, richness = 2 },
            ["iridium-ore"] = { frequency = 0.5, size = 2, richness = 3 },
            ["shale-ore"] = { frequency = 1.5, size = 3, richness = 3 },
            ["legion-starting-area"] = { frequency = 1.5, size = 3, richness = 3 },
            ["vulcanus_volcanism"] = {},
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
                    ["red-pita"] = { frequency = 0.2, size = 1, richness = 1 },
                    ["fuchsia-pita"] = { frequency = 0.2, size = 1, richness = 1 },
                    ["tiny-volcanic-rock"] = { frequency = 0.2, size = 1, richness = 1 },
                    ["small-volcanic-rock"] = { frequency = 0.2, size = 1, richness = 1 },
                    ["medium-volcanic-rock"] = { frequency = 0.2, size = 1, richness = 1 },
                }
            },
            ["entity"] = {
                settings = {
                    ["armoured-biter-spawner"] = {},
                    -- Vulcanus
                    ["ashland-lichen-tree"] = { frequency = 0.5, size = 1, richness = 1 },
                    ["ashland-lichen-tree-flaming"] = { frequency = 0.5, size = 1, richness = 1 },
                    ["crater-cliff"] = {},
                    -- Resources
                    ["uranium-ore"] = {},
                    ["iridium-ore"] = {},
                    ["shale-ore"] = {},
                }
            },
        }
    }
end

return planet_map_gen
