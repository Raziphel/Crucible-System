local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

data:extend({
    {
        type = "space-connection",
        name = "gleba-to-syndicate",
        localised_name = "Gleba to syndicate stargate",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "gleba",
        to = "syndicate-stargate",
        order = "h",
        length = 20000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
    {
        type = "space-connection",
        name = "aquilo-to-syndicate",
        localised_name = "Aquilo to syndicate stargate",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "aquilo",
        to = "syndicate-stargate",
        order = "h",
        length = 20000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
    {
        type = "space-connection",
        name = "stargate-to-stargate",
        localised_name = "Nauvis stargate to Syndicate stargate",
        subgroup = "planet-connections",
        icon = "__syndicate_galaxy__/graphics/icons/edge-icon.png",
        from = "nauvis-stargate",
        to = "syndicate-stargate",
        order = "h",
        length = 250,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
    {
        type = "space-connection",
        name = "stargate-to-legion",
        localised_name = "Syndicate stargate to Legion",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "nauvis-stargate",
        to = "legion",
        order = "h",
        length = 2000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
})
