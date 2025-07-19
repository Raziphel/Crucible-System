require "util"

local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

PlanetsLib:update({
    {
        type = "planet",
        name = "paracelsin",
        orbit = {
            parent = {
                type = "space-location",
                name = "terminus",
            },
            distance = 35,
            orientation = 0.6,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_35.png",
                size = 4096,
            },
        }
    }
})

deleteRoute("fulgora-paracelsin")
deleteRoute("nauvis-paracelsin")
deleteRoute("aquilo-solar-system-edge")

data:extend({
    {
        type = "space-connection",
        name = "aquilo-to-paracelsin",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "aquilo",
        to = "paracelsin",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
})
