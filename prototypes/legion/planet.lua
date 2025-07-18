local planet_map_gen = require("prototypes/legion/planet-map-gen")

PlanetsLib:extend({
    {
        type = "planet",
        name = "legion",
        icon = "__crucible_system__/graphics/icons/legion.png",
        icon_size = 920,
        starmap_icon = "__crucible_system__/graphics/icons/legion.png",
        starmap_icon_size = 920,
        gravity_pull = 20,
        magnitude = 2.0,
        order = "b[crucible]",
        subgroup = "planets",
        map_seed_offset = 0,
        map_gen_settings = planet_map_gen.legion(),
        pollutant_type = nil,
        solar_power_in_space = 60,
        orbit = {
            parent = {
                type = "space-location",
                name = "geass",
            },
            distance = 12,
            orientation = 0.1,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/legion-orbit.png",
                size = 983,
            }
        },

        platform_procession_set = {
            arrival = { "planet-to-platform-b" },
            departure = { "platform-to-planet-a" }
        },
        planet_procession_set = {
            arrival = { "platform-to-planet-b" },
            departure = { "planet-to-platform-a" }
        },
        surface_properties = {
            ["day-night-cycle"] = 20 * minute,
            ["magnetic-field"] = 25,
            ["solar-power"] = 30,
            pressure = 4000,
            gravity = 40
        },
        surface_render_parameters = {
            day_night_cycle_color_lookup =
            {
                { 0.0,  "__space-age__/graphics/lut/vulcanus-1-day.png" },
                { 0.20, "__space-age__/graphics/lut/vulcanus-1-day.png" },
                { 0.45, "__space-age__/graphics/lut/vulcanus-2-night.png" },
                { 0.55, "__space-age__/graphics/lut/vulcanus-2-night.png" },
                { 0.80, "__space-age__/graphics/lut/vulcanus-1-day.png" },
            },
            terrain_tint_effect =
            {
                noise_texture =
                {
                    filename = "__space-age__/graphics/terrain/vulcanus/tint-noise.png",
                    size = 4096
                },

                offset = { 0.2, 0, 0.4, 0.8 },
                intensity = { 0.5, 0.2, 0.3, 1.0 },
                scale_u = { 3, 1, 1, 1 },
                scale_v = { 1, 1, 1, 1 },

                global_intensity = 0.3,
                global_scale = 0.1,
                zoom_factor = 3,
                zoom_intensity = 0.6
            }
        },
    },
})

PlanetsLib.borrow_music(data.raw["planet"]["vulcanus"], data.raw["planet"]["legion"])
