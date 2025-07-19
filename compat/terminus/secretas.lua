require "util"

local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

PlanetsLib:update({
    {
        type = "space-location",
        name = "secretas",
        orbit = {
            parent = {
                type = "space-location",
                name = "terminus",
            },
            distance = 35,
            orientation = 0.5,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_35.png",
                size = 4096,
            },
        }
    },
    {
        type = "planet",
        name = "frozeta",
        orbit = {
            parent = {
                type = "space-location",
                name = "terminus",
            },
            distance = 35,
            orientation = 0.46,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_35.png",
                size = 4096,
            },
        },
        redrawn_connections_exclude = true,
    }
})

deleteRoute("secretas-edge")
deleteRoute("aquilo-secretas")



data:extend({
    {
        type = "space-connection",
        name = "paracelsin-to-secretas",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "paracelsin",
        to = "secretas",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
    {
        type = "space-connection",
        name = "secretas-to-frozeta",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "secretas",
        to = "frozeta",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    }
})
