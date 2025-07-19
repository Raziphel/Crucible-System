require "util"
require "const"

local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")


deleteRoute("dea-dia-edge")

-- move Dea Dia to the center
PlanetsLib:update({
    {
        type = "space-location",
        name = "star-dea-dia",
        orbit = {
            parent = {
                type = "space-location",
                name = "star",
            },
            distance = 110,
            orientation = 0.35,
        },
        redrawn_connections_exclude = true,
    }
})

-- reset all of the planets locations to fix orbits
PlanetsLib:update({
    {
        type = "space-location",
        name = "dea-dia-system-edge",
        orbit = {
            parent = {
                type = "space-location",
                name = "star-dea-dia",
            },
            distance = 5,
            orientation = 0.5
        },
    }
})
PlanetsLib:update({
    {
        type = "planet",
        name = "planet-dea-dia",
        orbit = {
            parent = {
                type = "space-location",
                name = "star-dea-dia",
            },
            distance = 10,
            orientation = 0,
            sprite = {
                type = "sprite",
                filename = "__dea-dia-system__/graphics/orbits/orbit-dea-dia.png",
                size = 2563,
                scale = 0.25,
            }
        }
    }
})
PlanetsLib:update({
    {
        type = "planet",
        name = "lemures",
        orbit = {
            parent = {
                type = "planet",
                name = "planet-dea-dia",
            },
            distance = 5,
            orientation = 0.1,
            sprite = {
                type = "sprite",
                filename = "__dea-dia-system__/graphics/orbits/orbit-lemures.png",
                size = 1283,
                scale = 0.25,
            }
        }
    }
})
PlanetsLib:update({
    {
        type = "planet",
        name = "prosephina",
        orbit = {
            parent = {
                type = "planet",
                name = "planet-dea-dia",
            },
            distance = 6,
            orientation = -0.25,
            sprite = {
                type = "sprite",
                filename = "__dea-dia-system__/graphics/orbits/orbit-prosephina.png",
                size = 1539,
                scale = 0.25,
            }
        }
    }
})


data:extend({
    { -- Nauvis to Dea Dia
        type = "space-connection",
        name = "nauvis-to-dea-dia",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "sye-nauvis",
        to = "dea-dia-system-edge",
        order = "h",
        length = 20000,
        redrawn_connections_keep = true,
        redrawn_connections_rescale = false,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
    },
    { -- Dea Dia to Crucible
        type = "space-connection",
        name = "dea-dia-to-crucible",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "dea-dia-system-edge",
        to = "sye-crucible",
        order = "h",
        length = 55000,
        redrawn_connections_keep = true,
        redrawn_connections_rescale = false,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_aquilo)
    },
    { -- Dea Dia to Crucible
        type = "space-connection",
        name = "dea-dea-to-crucible",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "dea-dia-system-edge",
        to = "sye-crucible",
        order = "h",
        length = 35000,
        redrawn_connections_keep = true,
        redrawn_connections_rescale = false,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
    },
    { -- Dea Dia to Noctyra
        type = "space-connection",
        name = "dea-dea-to-noctyra",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "dea-dia-system-edge",
        to = "sye-noctyra",
        order = "h",
        length = 35000,
        redrawn_connections_keep = true,
        redrawn_connections_rescale = false,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
    },
    { -- Dea Dia to Eidolon
        type = "space-connection",
        name = "dea-dea-to-eidolon",
        subgroup = "planet-connections",
        icon = "__space-age__/graphics/icons/solar-system-edge.png",
        from = "dea-dia-system-edge",
        to = "sye-eidolon",
        order = "h",
        length = 35000,
        redrawn_connections_keep = true,
        redrawn_connections_rescale = false,
        asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus)
    },
})
