local planet_map_gen = require("prototypes/legion/planet/planet-map-gen")

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
        tier = 4,
        orbit = {
            parent = {
                type = "space-location",
                name = "geass",
            },
            distance = 12,
            orientation = 0.25,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/legion-orbit.png",
                size = 3075,
                scale = 0.25,
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
    },
})
