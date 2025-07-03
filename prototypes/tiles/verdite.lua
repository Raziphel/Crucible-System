data.raw["tile"]["nuclear-ground"].autoplace = {
    probability_expression = 'max(expression_in_range_base(-10, 0.25, 0.45, 0.3),\z
                                               expression_in_range_base(0.4, -10, 0.45, 0.25)) + noise_layer_noise(6)'
}

table.insert(water_tile_type_names, "verdite")

local verdite = table.deepcopy(data.raw["tile"]["oil-ocean-deep"])
verdite.name = "verdite"
verdite.fluid = "water"

verdite.effect_color = { 40, 255, 90 }
verdite.effect_color_secondary = { 40, 255, 90 }
verdite.map_color = { r = 0.2, g = 1.0, b = 0.4 }

verdite.allowed_neighbors = { "volcanic-soil-dark", "volcanic-ash-dark" }

verdite.autoplace = {
    probability_expression =
    "90 * fulgora_oil_mask * water_base(fulgora_coastline - 50 - fulgora_coastline_drop / 0.8, 1000)"
}

verdite.variants = tile_variations_template_with_transitions(
    "__syndicate_galaxy__/graphics/terrain/verdite.png",
    {
        max_size = 4,
        [1] = { weights = { 0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045 } },
        [2] = { probability = 1, weights = { 0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
        [4] = { probability = 0.1, weights = { 0.018, 0.020, 0.015, 0.025, 0.015, 0.020, 0.025, 0.015, 0.025, 0.025, 0.010, 0.025, 0.020, 0.025, 0.025, 0.010 }, },
    }
)


data:extend({ verdite })
