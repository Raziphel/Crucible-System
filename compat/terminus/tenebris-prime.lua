require "util"
require "const"

local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

PlanetsLib:update({
    {
        type = "planet",
        name = "tenebris",
        orbit = {
            parent = {
                type = "space-location",
                name = "terminus",
            },
            distance = ,
            orientation = 0.75,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_35.png", -- Just putting this here so it doesn't have an orbit (Just and extra orbit ring for aquilo)
                size = 4096,
            },
        }
    }
})

deleteRoute("fulgora-tenebris")
deleteRoute("tenebris-solar-system-edge")

routes = {}
any_edge = false

data:extend({
    {
        type = "space-connection",
        name = "crucible-to-tenebris",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "sye-crucible",
        to = "tenebris",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
    {
        type = "space-connection",
        name = "eidolon-to-tenebris",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "sye-eidolon",
        to = "tenebris",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
    {
        type = "space-connection",
        name = "tenebris-to-sye-terminus",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "tenebris",
        to = "sye-terminus",
        order = "h",
        length = 30000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    }
})
