local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")
local asteroid_fields = require("__crucible_system__/prototypes/system/asteroids")

data:extend({
    { -- Fulgora to Crucible System Edge
        type = "space-connection",
        name = "fulgora-to-system-edge",
        localised_name = "System edge to Crucible system edge",
        subgroup = "planet-connections",
        icon = "__crucible_system__/graphics/icons/edge-icon.png",
        from = "fulgora",
        to = "crucible-system-edge",
        order = "h",
        length = 100000,
        asteroid_spawn_definitions = asteroid_fields.fulgora_to_crucible_edge_asteroids
    },
    { -- Crucible System Edge to Legion
        type = "space-connection",
        name = "system-edge-to-legion",
        localised_name = "Crucible system edge to Legion",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "crucible-system-edge",
        to = "legion",
        order = "h",
        length = 15000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
    },
    { -- Crucible System Edge to Shattered Nekros
        type = "space-connection",
        name = "system-edge-to-shattered-nekros",
        localised_name = "Crucible system edge to Legion",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "crucible-system-edge",
        to = "shattered-nekros",
        order = "h",
        length = 2000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
    },
    { -- Shattered Nekros to Legion
        type = "space-connection",
        name = "shattered-nekros-to-legion",
        localised_name = "Shattered Nekros to Legion",
        subgroup = "planet-connections",
        icon = "__crucible_system__/graphics/icons/shattered-nekros.png",
        from = "shattered-nekros",
        to = "legion",
        order = "h",
        length = 13000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo)
    },
})
