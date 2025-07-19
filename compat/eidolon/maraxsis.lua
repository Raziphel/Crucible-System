require "util"
require "const"

local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

PlanetsLib:update({
    {
        type = "planet",
        name = "maraxsis",
        orbit = {
            parent = {
                type = "space-location",
                name = "eidolon",
            },
            distance = 25,
            orientation = 0.64,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_25.png",
                size = 4096,
            },
        }
    }
})

deleteRoute("vulcanus-maraxsis")
deleteRoute("fulgora-maraxsis")
deleteRoute("maraxsis-tenebris")



data:extend({
    {
        type = "space-connection",
        name = "eidolon-to-maraxsis",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "sye-eidolon",
        to = "maraxsis",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
})
