require "util"

local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

-- flip gleba to be south of Nauvia/Fulgora instead of north
PlanetsLib:update({
    {
        type = "planet",
        name = "gleba",
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 20,
            orientation = 0.45,
        }
    }
})

-- move Aquilo, edge and shattered planet to crucible system
PlanetsLib:update({
    {
        type = "planet",
        name = "aquilo",
        orbit = {
            parent = {
                type = "space-location",
                name = "crucible",
            },
            distance = 45,
            orientation = 0.25,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_45.png",
                size = 4096,
            },
        }
    }
})

PlanetsLib:update({
    {
        type = "space-location",
        name = "solar-system-edge",
        orbit = {
            parent = {
                type = "space-location",
                name = "crucible",
            },
            distance = 50,
            orientation = 0.25,
            sprite = {
                type = "sprite",
                filename = "__crucible_system__/graphics/orbits/orbit_50.png",
                size = 4096,
            },
        }
    }
})

PlanetsLib:update({
    {
        type = "space-location",
        name = "shattered-planet",
        orbit = {
            parent = {
                type = "space-location",
                name = "crucible",
            },
            distance = 150,
            orientation = 0.25
        }
    }
})

deleteRoute("vulcanus-gleba")
deleteRoute("gleba-aquilo")
deleteRoute("fulgora-aquilo")

data:extend({
    {
        type = "space-connection",
        name = "crucible-to-aquilo",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "sye-crucible",
        to = "aquilo",
        order = "h",
        length = 15000,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    }
})
