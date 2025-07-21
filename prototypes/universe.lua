require "const"
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")
local asteroid_fields = require("__crucible_system__/prototypes/crucible/asteroids")

--Adds a new location for interstellar travel in nauvis
PlanetsLib:extend({
    {
        type = "space-location",
        name = "sye-nauvis",
        localised_name = "Nauvis system edge",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        solar_power_in_space = 20,
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 34,
            orientation = 0.4,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_35.png",
                size = 4096,
            },
        },
    }
})

--Adds Crucible Star
PlanetsLib:extend({
    {
        type = "space-location",
        name = "crucible",
        starmap_icon = "__crucible_system__/graphics/icons/crucible.png",
        starmap_icon_size = 4096,
        sprite_only = true,
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 120,
            orientation = 0.3
        },
        magnitude = 120,
    },
})

PlanetsLib:extend({
    {
        type = "space-location",
        name = "sye-crucible",
        icon = "__crucible_system__/graphics/icons/edge-icon.png",
        solar_power_in_space = 1,
        orbit = {
            parent = {
                type = "space-location",
                name = "crucible",
            },
            distance = 50,
            orientation = -0.3,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_50.png",
                size = 4096,
            }
        }
    }
})

PlanetsLib:extend({
    {
        type = "space-location",
        name = "shattered-nekros",
        icon = "__crucible_system__/graphics/icons/shattered-nekros.png",
        icon_size = 512,
        starmap_icon = "__crucible_system__/graphics/icons/shattered-nekros.png",
        starmap_icon_size = 512,
        solar_power_in_space = 7,
        asteroid_spawn_definitions = asteroid_fields.shattered_nekros_asteroids,
        orbit = {
            parent = {
                type = "space-location",
                name = "crucible",
            },
            distance = 45,
            orientation = -0.2,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_45.png",
                size = 4096,
            }
        }
    }
})


-- Now begins the connections!

data:extend({
    { -- Fulgora to Nauvis
        type = "space-connection",
        name = "fulgora-to-sye-nauvis",
        subgroup = "planet-connections",
        icon = "__crucible_system__/graphics/icons/edge-icon.png",
        from = "fulgora",
        to = "sye-nauvis",
        order = "h",
        length = 15000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora)
    },
    { -- Gleba to Nauvis
        type = "space-connection",
        name = "gleba-to-sye-nauvis",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "gleba",
        to = "sye-nauvis",
        order = "h",
        length = 15000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_fulgora)
    },
    { -- Nauvis to Crucible
        type = "space-connection",
        name = "sye-nauvis-to-sye-crucible",
        subgroup = "planet-connections",
        icon = "__crucible_system__/graphics/icons/edge-icon.png",
        from = "sye-nauvis",
        to = "sye-crucible",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora)
    },
    { -- Crucible to Legion
        type = "space-connection",
        name = "system-edge-to-legion",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "sye-crucible",
        to = "legion",
        order = "h",
        length = 40000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
    },
    { -- Crucible to Shattered Nekros
        type = "space-connection",
        name = "system-edge-to-shattered-nekros",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "sye-crucible",
        to = "shattered-nekros",
        order = "h",
        length = 20000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
    },
    { -- Shattered Nekros to Legion
        type = "space-connection",
        name = "shattered-nekros-to-legion",
        subgroup = "planet-connections",
        icon = "__crucible_system__/graphics/icons/shattered-nekros.png",
        from = "shattered-nekros",
        to = "legion",
        order = "h",
        length = 20000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
    },
})
