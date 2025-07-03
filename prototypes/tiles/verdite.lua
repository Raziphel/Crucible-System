table.insert(water_tile_type_names, "verdite")

local verdite = table.deepcopy(data.raw["tile"]["water"])
verdite.name = "verdite"
verdite.fluid = "water"

verdite.autoplace = {
    probability_expression =
    "90 * fulgora_oil_mask * water_base(fulgora_coastline - 50 - fulgora_coastline_drop / 0.8, 1000)"
}

verdite.effect_color = { 40, 255, 130 }
verdite.effect_color_secondary = { 10, 100, 40 }
verdite.map_color = { r = 0.2, g = 1.0, b = 0.4 }
verdite.collision_mask = table.deepcopy(data.raw["tile"]["water"].collision_mask)

verdite.variants = tile_variations_template_with_transitions(
    "__syndicate_galaxy__/graphics/terrain/verdite.png",
    {
        max_size = 4,
        [1] = { weights = { 1 } },
    }
)

data:extend({ verdite })
