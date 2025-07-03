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
                }
            },
            ["decorative"] = {
                settings = {
                    ["vulcanus-rock-decal-large"] = {},
                    ["vulcanus-crack-decal-large"] = {},
                    ["vulcanus-crack-decal-huge-warm"] = {},
                    ["vulcanus-dune-decal"] = {},
                    ["vulcanus-lava-fire"] = {},
                    ["curly-roots-grey"] = {},
                    --["pebbles"] = {},
                    --["red-nerve-root-veins-dense"] = {},
                    --["red-nerve-root-veins-sparse"] = {},
                }
            },
            ["entity"] = {
                settings = {
                    ["ashland-lichen-tree"] = {},
                    ["ashland-lichen-tree-flaming"] = {},
                }
            }
        }
    }
end

return planet_map_gen
