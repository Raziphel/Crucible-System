require "util"
require "const"

local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

PlanetsLib:update({
    {
        type = "planet",
        name = "corrundum",
        orbit = {
            parent = {
                type = "space-location",
                name = "crucible",
            },
            distance = 22,
            orientation = 0.85,
            -- distance = 20,
            -- orientation = 0.0,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_22.png",
                size = 2048,
            },
        }
    }
})

deleteRoute("vulcanus-corrundum")
deleteRoute("gleba-corrundum")
deleteRoute("aquilo-corrundum")
deleteRoute("nauvis-corrundum")


data:extend({
    {
        type = "space-connection",
        name = "crucible-to-corrundum",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        subgroup = "planet-connections",
        from = "sye-crucible",
        to = "corrundum",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
    },
    {
        type = "space-connection",
        name = "corrundum-to-legion",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        subgroup = "planet-connections",
        from = "corrundum",
        to = "legion",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
    }
})
