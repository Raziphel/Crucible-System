local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

data:extend({
    {
        type = "space-connection",
        name = "shattered-planet-to-system-edge",
        localised_name = "Shattered planet to Crucible system edge",
        subgroup = "planet-connections",
        icon = "__crucible_system__/graphics/icons/edge-icon.png",
        from = "shattered-planet",
        to = "crucible-system-edge",
        order = "h",
        length = 4000000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora)
    },
    {
        type = "space-connection",
        name = "system-edge-to-legion",
        localised_name = "Crucible system edge to Legion",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "crucible-system-edge",
        to = "legion",
        order = "h",
        length = 2000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_fulgora)
    },
})
