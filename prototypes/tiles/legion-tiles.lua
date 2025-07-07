local legion_grass_base = table.deepcopy(data.raw["tile"]["dirt-1"])

for i = 1, 2, 1 do
    local legion_grass = table.deepcopy(legion_grass_base)
    legion_grass.name = "legion-grass-" .. tostring(i)
    legion_grass.autoplace = {
        probability_expression =
        'min(1.0, 0.8 + 0.2 * abs(sin(x * 0.01) * sin(y * 0.01)) + 0.15 * noise_layer_noise(4))'
    }



    legion_grass.localised_name = { "tile-name.legion_grass", tostring(i) }
    legion_grass.variants = tile_variations_template(
        "__alien-biomes-graphics__/graphics/terrain/vegetation-purple-grass-" .. tostring(i) .. ".png",
        "__base__/graphics/terrain/masks/transition-1.png",
        {

            max_size = 4,
            [1] = { weights = { 0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
            [2] = { probability = 0.7, weights = { 0.070, 0.070, 0.025, 0.070, 0.070, 0.070, 0.007, 0.025, 0.070, 0.050, 0.015, 0.026, 0.030, 0.005, 0.070, 0.027 }, },
            [4] = { probability = 0.085, weights = { 0.070, 0.070, 0.070, 0.070, 0.070, 0.070, 0.015, 0.070, 0.070, 0.070, 0.015, 0.050, 0.070, 0.070, 0.065, 0.070 }, },
            --[8] = { probability = 1.00, weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020} }
        }



    )
    legion_grass.absorptions_per_second = {}
    legion_grass.layer = 55 + i
    legion_grass.map_color = { 66, 35, 80 }
    data:extend { legion_grass }
end
