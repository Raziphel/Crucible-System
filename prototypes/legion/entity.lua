data:extend({
    {
        type = "assembling-machine",
        name = "alloy-forge",
        icon = "__crucible_system__/graphics/icons/alloy-forge-icon.png",
        icon_size = 64,
        flags = { "placeable-neutral", "placeable-player", "player-creation", "not-rotatable" },
        minable = { hardness = 0.2, mining_time = 2, result = "alloy-forge" },
        max_health = 2000,
        inventory_size = 300,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        resistances = {
            { type = "fire", percent = 90 }
        },
        collision_box = { { -3.9, -3.9 }, { 3.9, 3.9 } },
        selection_box = { { -4, -4 }, { 4, 4 } },
        fluid_boxes = {
            -- West
            { production_type = "input", volume = 1000, pipe_picture = assembler3pipepictures(), pipe_covers = pipecoverspictures(), pipe_connections = { { direction = defines.direction.west, flow_direction = "input", position = { -3.7, 1.52 } } }, secondary_draw_orders = { north = -1 } },
            { production_type = "input", volume = 1000, pipe_picture = assembler3pipepictures(), pipe_covers = pipecoverspictures(), pipe_connections = { { direction = defines.direction.west, flow_direction = "input", position = { -3.7, 3.6 } } },  secondary_draw_orders = { north = -1 } },

            -- East
            { production_type = "input", volume = 1000, pipe_picture = assembler3pipepictures(), pipe_covers = pipecoverspictures(), pipe_connections = { { direction = defines.direction.east, flow_direction = "output", position = { 3.7, 1.52 } } }, secondary_draw_orders = { north = -1 } },
            { production_type = "input", volume = 1000, pipe_picture = assembler3pipepictures(), pipe_covers = pipecoverspictures(), pipe_connections = { { direction = defines.direction.east, flow_direction = "output", position = { 3.7, 3.6 } } },  secondary_draw_orders = { north = -1 } }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        graphics_set = {
            animation = {
                layers = {
                    {
                        filename = "__crucible_system__/graphics/entity/alloy-forge/alloy-forge-hr-shadow.png",
                        priority = "high",
                        width = 900,
                        height = 800,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 120,
                        draw_as_shadow = true,
                        animation_speed = 0.2,
                        scale = 0.5
                    },
                    {
                        priority = "high",
                        width = 530,
                        height = 530,
                        frame_count = 120,
                        animation_speed = 0.2,
                        scale = 0.5,
                        stripes = {
                            {
                                filename =
                                "__crucible_system__/graphics/entity/alloy-forge/alloy-forge-hr-animation-1.png",
                                width_in_frames = 8,
                                height_in_frames = 8
                            },
                            {
                                filename =
                                "__crucible_system__/graphics/entity/alloy-forge/alloy-forge-hr-animation-2.png",
                                width_in_frames = 8,
                                height_in_frames = 7
                            }
                        }
                    }
                }
            },
            working_visualisations = {
                {
                    fadeout = true,
                    secondary_draw_order = 1,
                    animation = {
                        priority = "high",
                        width = 530,
                        height = 530,
                        frame_count = 120,
                        draw_as_glow = true,
                        scale = 0.5,
                        animation_speed = 0.2,
                        blend_mode = "additive",
                        stripes = {
                            {
                                filename =
                                "__crucible_system__/graphics/entity/alloy-forge/alloy-forge-hr-emission-1.png",
                                width_in_frames = 8,
                                height_in_frames = 8
                            },
                            {
                                filename =
                                "__crucible_system__/graphics/entity/alloy-forge/alloy-forge-hr-emission-2.png",
                                width_in_frames = 8,
                                height_in_frames = 7
                            }
                        }
                    }
                }
            },
            reset_animation_when_frozen = true
        },
        crafting_categories = {
            "metallurgy", "advanced-metallurgy"
        },
        crafting_speed = 8,
        impact_category = "metal",
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 30 }
        },
        energy_usage = "5.5MW",
        ingredient_count = 9,
        module_slots = 6,
        allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
        heating_energy = feature_flags["freezing"] and "100kW" or nil,
        circuit_connector = circuit_connector_definitions["foundry"],
        circuit_wire_max_distance = 20,
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        squeak_behaviour = false,
        working_sound = {
            audible_distance_modifier = 0.5,
            fade_in_ticks = 4,
            fade_out_ticks = 20,
            sound = {
                filename = "__base__/sound/assembling-machine-t3-1.ogg",
                volume = 0.45
            }
        }
    }
})
