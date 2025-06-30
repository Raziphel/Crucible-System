local planet_map_gen = require("prototypes/legion/planet/planet-map-gen")
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

data:extend(
{
    {
        type = "planet",
        name = "legion",
        icon = "__syndicate-galaxy__/graphics/icons/legion.png",
        starmap_icon = "__syndicate-galaxy__/graphics/icons/legion-starmap.png",
        starmap_icon_size = 512,
        gravity_pull = 20,
        distance = 30, --how far away the planet is from the center
        orientation = 0.52,
        magnitude = 1.2,
        order = "b[legion]",
        subgroup = "planets",
        map_seed_offset = 0,
        map_gen_settings = planet_map_gen.legion(),
        pollutant_type = nil,
        solar_power_in_space = 60,
        platform_procession_set =
        {
        arrival = {"planet-to-platform-b"},
        departure = {"platform-to-planet-a"}
        },
        planet_procession_set =
        {
        arrival = {"platform-to-planet-b"},
        departure = {"planet-to-platform-a"}
        },
        surface_properties =
        {
        ["day-night-cycle"] = 8 * minute,
        ["magnetic-field"] = 25,
        ["solar-power"] = 30,
        pressure = 4000,
        gravity = 40
        },
    },
    {
        type = "space-connection",
        name = "legion",
        icon = "__syndicate-galaxy__/graphics/icons/legion.png",
        subgroup = "planet-connections",
        from = "fulgora",
        to = "legion",
        order = "a",
        length = 15000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
    },
})