local planet_map_gen = table.deepcopy(data.raw.planet.nauvis.map_gen_settings)

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
            temperature = "vulcanus_temperature",
            moisture = "vulcanus_moisture",
            aux = "vulcanus_aux",
            cliffiness = "cliffiness_basic",
            cliff_elevation = "cliff_elevation_from_elevation",
            enemy_base_radius = "enemy_base_radius",
            enemy_base_frequency = "enemy_base_frequency",
            ["entity:calcite:probability"] = "vulcanus_calcite_probability",
            ["entity:calcite:richness"] = "vulcanus_calcite_richness",
        },

        autoplace_controls =
        {
            ["enemy-base"] = {},
            ["calcite"] = {},
            ["rhenium-ore"] = {},
            ["shale-ore"] = {},
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
                    ["red-pita"] = {},
                    ["fuchsia-pita"] = {},
                    ["tiny-volcanic-rock"] = {},
                    ["small-volcanic-rock"] = {},
                    ["medium-volcanic-rock"] = {},
                    ["calcite-stain"] = {},
                    ["calcite-stain-small"] = {},
                }
            },
            ["entity"] = {
                settings = {
                    ["armoured-biter-spawner"] = {},
                    ["calcite"] = {},
                    ["rhenium-ore"] = {},
                    ["shale-ore"] = {},
                    -- other
                    ["ashland-lichen-tree"] = {},
                    ["ashland-lichen-tree-flaming"] = {},
                    ["crater-cliff"] = {},
                }
            },
        }
    }
end

return planet_map_gen
