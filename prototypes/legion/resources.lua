local resource_autoplace = require("resource-autoplace")
local sounds = require("__base__.prototypes.entity.sounds")

local function resource(resource_parameters, autoplace_parameters)
    return
    {
        type = "resource",
        name = resource_parameters.name,
        icon = "__crucible_system__/graphics/icons/" .. resource_parameters.name .. ".png",
        flags = { "placeable-neutral" },
        order = "a-b-" .. resource_parameters.order,
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable = resource_parameters.minable or
            {
                mining_time = resource_parameters.mining_time,
                result = resource_parameters.name,
                required_fluid = resource_parameters.required_fluid or nil,
                fluid_amount = resource_parameters.fluid_amount or nil
            },
        category = resource_parameters.category,
        subgroup = resource_parameters.subgroup,
        walking_sound = resource_parameters.walking_sound,
        collision_mask = resource_parameters.collision_mask,
        collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        resource_patch_search_radius = resource_parameters.resource_patch_search_radius,
        autoplace = autoplace_parameters.probability_expression ~= nil and
            {
                --control = resource_parameters.name,
                order = resource_parameters.order,
                probability_expression = autoplace_parameters.probability_expression,
                richness_expression = autoplace_parameters.richness_expression
            }
            or resource_autoplace.resource_autoplace_settings
            {
                name = resource_parameters.name,
                order = resource_parameters.order,
                autoplace_control_name = resource_parameters.autoplace_control_name,
                base_density = autoplace_parameters.base_density,
                base_spots_per_km = autoplace_parameters.base_spots_per_km2,
                regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
                starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
                candidate_spot_count = autoplace_parameters.candidate_spot_count,
                tile_restriction = autoplace_parameters.tile_restriction
            },
        stage_counts = { 3000, 2000, 1000, 700, 500, 200, 100, 50 },
        stages =
        {
            sheet =
            {
                filename = "__crucible_system__/graphics/entity/" ..
                    resource_parameters.name .. "/" .. resource_parameters.name .. ".png",
                priority = "extra-high",
                size = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        },
        map_color = resource_parameters.map_color,
        mining_visualisation_tint = resource_parameters.mining_visualisation_tint
    }
end

data:extend({
    resource(
        {
            name = "iridium-ore",
            order = "e",
            map_color = { r = 0 / 256, g = 225 / 256, b = 50 / 256, a = 1.000 },
            mining_time = 15,
            required_fluid = "lubricant",
            fluid_amount = 20,
            walking_sound = sounds.ore,
            mining_visualisation_tint = { r = 211 / 256, g = 190 / 256, b = 105 / 256, a = 1.000 },
        },
        {
            base_density = 0.5,
            regular_rq_factor_multiplier = 0.45,
            starting_rq_factor_multiplier = 0.25,
            candidate_spot_count = 18,
            has_starting_area_placement = true
        }
    ),
})
