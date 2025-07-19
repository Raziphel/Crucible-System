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
            distance = 195,
            orientation = 0.35
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
            orientation = 0.0,
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
            orientation = 0.08,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_45.png",
                size = 4096,
            }
        }
    }
})


--Adds Eidolon Star
PlanetsLib:extend({
    {
        type = "space-location",
        name = "eidolon",
        starmap_icon = "__crucible_system__/graphics/icons/eidolon.png",
        starmap_icon_size = 4096,
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 150,
            orientation = 0.25,
        },
        sprite_only = true,
        magnitude = 120,
        redrawn_connections_exclude = true,
    },
})

PlanetsLib:extend({
    {
        type = "space-location",
        name = "sye-eidolon",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        solar_power_in_space = 15,
        orbit = {
            parent = {
                type = "space-location",
                name = "eidolon",
            },
            distance = 35,
            orientation = 0.55,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_35.png",
                size = 4096,
            },
        }
    }
})

--Adds Noctyra Star
PlanetsLib:extend({
    {
        type = "space-location",
        name = "noctyra",
        starmap_icon = "__crucible_system__/graphics/icons/noctyra.png",
        starmap_icon_size = 4096,
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 128,
            orientation = 0.45,
        },
        sprite_only = true,
        magnitude = 120,
        redrawn_connections_exclude = true,
    },
})

PlanetsLib:extend({
    {
        type = "space-location",
        name = "sye-noctyra",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        solar_power_in_space = 15,
        orbit = {
            parent = {
                type = "space-location",
                name = "noctyra",
            },
            distance = 25,
            orientation = 0.05,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_25.png",
                size = 2048,
            },
        },
    }
})


--Adds Terminus Star
PlanetsLib:extend({
    {
        type = "space-location",
        name = "terminus",
        starmap_icon = "__crucible_system__/graphics/icons/terminus.png",
        starmap_icon_size = 4096,
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 300,
            orientation = 0.27,
        },
        sprite_only = true,
        magnitude = 120,
        redrawn_connections_exclude = true,
    },
})

PlanetsLib:extend({
    {
        type = "space-location",
        name = "sye-terminus",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        solar_power_in_space = 5,
        orbit = {
            parent = {
                type = "space-location",
                name = "terminus",
            },
            distance = 50,
            orientation = 0.75,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_50.png",
                size = 4096,
            },
        },
    }
})



-- Now begins the connections!
-- Mostly Crucibles - Rest we're moved to compat

data:extend({
    { -- Fulgora to Nauvis
        type = "space-connection",
        name = "fulgora-to-sye-nauvis",
        subgroup = "planet-connections",
        icon = "__crucible_system__/graphics/icons/edge-icon.png",
        from = "fulgora",
        to = "sye-nauvis",
        order = "h",
        length = 10000,
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
        length = 10000,
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
