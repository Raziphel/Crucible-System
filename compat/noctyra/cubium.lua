require "util"
require "const"

local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

PlanetsLib:update({
    {
        type = "planet",
        name = "cubium",
        orbit = {
            parent = {
                type = "space-location",
                name = "noctyra",
            },
            distance = 23,
            orientation = 0.85,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_23.png",
                size = 4096,
            },
        }
    }
})

deleteRoute("vulcanus-cubium")
deleteRoute("gleba-cubium")

data:extend({
    {
        type = "space-connection",
        name = "noctyra-to-cubium",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        subgroup = "planet-connections",
        from = "sye-noctyra",
        to = "cubium",
        order = "h",
        length = 22500,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.vulcanus_gleba)
    }
})
