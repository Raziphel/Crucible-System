local asteroid_type = "entropium"
local asteroid_sizes = { "chunk", "small", "medium", "big", "huge" }
local shared_health = { 0, 100, 400, 2000, 5000 }
local shared_mass = { 0, 200000, 500000, 5000000, 100000000 }
local sizes_resolution = {
    { 50,  1 }, -- chunk
    { 128, 1 }, -- small
    { 230, 0 }, -- medium
    { 304, 6 }, -- big
    { 512, 0 }  -- huge
}
local collision_radiuses = { 0.4, 0.5, 1, 2, 4.5 }
local graphics_scale = { 0.5, 0.5, 0.5, 0.6, 0.75 }
local letter = { "a", "b", "c", "d", "e" }

local shading_data = {
    normal_strength = 1.2,
    light_width = 0,
    brightness = 0.9,
    specular_strength = 2,
    specular_power = 2,
    specular_purity = 0,
    sss_contrast = 1,
    sss_amount = 0,
    lights = {
        { color = { 0.96, 1, 0.99 },    direction = { 0.7, 0.6, -1 } },
        { color = { 0.57, 0.33, 0.23 }, direction = { -0.72, -0.46, 1 } },
        { color = { 0.1, 0.1, 0.1 },    direction = { -0.4, -0.25, -0.5 } },
    },
    ambient_light = { 0.01, 0.01, 0.01 },
}

local function asteroid_variation(size, scale)
    return {
        color_texture = {
            filename = "__crucible_system__/graphics/entity/asteroids/" ..
                asteroid_sizes[size] .. "-" .. asteroid_type .. "-asteroid.png",
            size = sizes_resolution[size][1],
            scale = scale
        },
        shadow_shift = { 0.25 * size, 0.25 * size },
        normal_map = {
            filename = "__crucible_system__/graphics/entity/asteroids/" ..
                asteroid_sizes[size] .. "-" .. asteroid_type .. "-asteroid.png",
            premul_alpha = false,
            size = sizes_resolution[size][1],
            scale = scale
        },
        roughness_map = {
            filename = "__crucible_system__/graphics/entity/asteroids/" ..
                asteroid_sizes[size] .. "-" .. asteroid_type .. "-asteroid.png",
            premul_alpha = false,
            size = sizes_resolution[size][1],
            scale = scale
        }
    }
end

local function asteroid_graphics_set(rotation_speed, variations)
    local result = table.deepcopy(shading_data)
    result.rotation_speed = rotation_speed
    result.variations = variations
    return result
end

for size_index, size_name in ipairs(asteroid_sizes) do
    local name = (size_name == "chunk")
        and (asteroid_type .. "-asteroid-chunk")
        or (size_name .. "-" .. asteroid_type .. "-asteroid")

    local variations = { asteroid_variation(size_index, graphics_scale[size_index]) }
    local selection_radius = collision_radiuses[size_index] * 1.1 + 0.1

    data:extend({
        {
            type = size_name == "chunk" and "asteroid-chunk" or "asteroid",
            name = name,
            icon = "__crucible_system__/graphics/entity/asteroids/chunk-entropium-asteroid.png",
            icon_size = 64,
            localised_description = { "entity-description." .. asteroid_type .. "-asteroid" },
            graphics_set = asteroid_graphics_set(0.0003 * (6 - size_index), variations),
            subgroup = size_name == "chunk" and "space-material" or "space-environment",
            order = "a[" .. asteroid_type .. "]-" .. letter[size_index] .. "[" .. size_name .. "]",

            selection_box = size_name ~= "chunk" and
                { { -selection_radius, -selection_radius }, { selection_radius, selection_radius } } or nil,
            collision_box = size_name ~= "chunk" and
                { { -collision_radiuses[size_index], -collision_radiuses[size_index] }, { collision_radiuses[size_index], collision_radiuses[size_index] } } or
                nil,
            collision_mask = size_name ~= "chunk" and { layers = { object = true }, not_colliding_with_itself = true } or
                nil,

            -- only chunks are minable
            minable = size_name == "chunk" and {
                mining_time = 0.2,
                result = name,
                mining_particle = "metallic-asteroid-chunk-particle-medium"
            } or nil,

            -- full asteroids
            overkill_fraction = size_name ~= "chunk" and 0.01 or nil,
            max_health = size_name ~= "chunk" and shared_health[size_index] or nil,
            mass = size_name ~= "chunk" and shared_mass[size_index] or nil,
            flags = size_name ~= "chunk" and { "placeable-enemy", "placeable-off-grid", "not-repairable", "not-on-map" } or
                nil,
        }
    })
end


local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

-- Random spawn point generator
local function random_spawn_points(count, probability_range, distance_range)
    local points = {}

    -- Step 1: generate unsorted list of distances
    local distances = {}
    for _ = 1, count do
        table.insert(distances, math.random(distance_range.min, distance_range.max))
    end

    -- Step 2: sort and force ascending
    table.sort(distances)
    for i = 2, #distances do
        if distances[i] <= distances[i - 1] then
            distances[i] = distances[i - 1] + 1
        end
    end

    -- Step 3: create spawn points
    for i = 1, count do
        table.insert(points, {
            position = math.random(),
            probability = math.random() * (probability_range.max - probability_range.min) + probability_range.min,
            angle_when_stopped = 1,
            speed = asteroid_util.standard_speed,
            distance = distances[i]
        })
    end

    return points
end


-- Create asteroid field with specified data
function create_location_asteroid_field(data)
    local result = {}
    for _, entry in ipairs(data) do
        table.insert(result, {
            asteroid = entry.name,
            probability = entry.probability or 0.5,
            angle_when_stopped = 1,
            speed = asteroid_util.standard_speed
        })
    end
    return result
end

-- Create asteroid field with spawn points
function create_connection_asteroid_field(data)
    local result = {}
    for _, entry in ipairs(data) do
        local spawns = entry.spawn_count
            and random_spawn_points(
                entry.spawn_count,
                entry.prob_range or { min = 0.2, max = 0.6 },
                entry.dist_range or { min = 50, max = 500 }
            )
            or {
                {
                    position = 0.5,
                    probability = entry.probability or 0.5,
                    angle_when_stopped = 1,
                    speed = asteroid_util.standard_speed,
                    distance = 250
                }
            }

        -- ✅ Sort distances in ascending order (required by Factorio)
        table.sort(spawns, function(a, b)
            return a.distance < b.distance
        end)

        table.insert(result, {
            asteroid = entry.name,
            spawn_points = spawns
        })
    end
    return result
end

local fulgora_to_crucible_edge_asteroids = create_connection_asteroid_field({
    -- Entropium asteroids
    { name = "small-entropium-asteroid", spawn_count = 3 },
    -- Metallic asteroids
    { name = "small-metallic-asteroid",  spawn_count = 7 },
    { name = "medium-metallic-asteroid", spawn_count = 5 },
    -- Oxide asteroids
    { name = "small-oxide-asteroid",     spawn_count = 7 },
    { name = "medium-oxide-asteroid",    spawn_count = 5 },
    -- Carbonic asteroids
    { name = "small-carbonic-asteroid",  spawn_count = 7 },
    { name = "medium-carbonic-asteroid", spawn_count = 5 },
})


local shattered_nekros_asteroids = create_location_asteroid_field({
    -- Entropium asteroids
    { name = "small-entropium-asteroid",  probability = 0.05 },
    { name = "medium-entropium-asteroid", probability = 0.04 },
    { name = "big-entropium-asteroid",    probability = 0.03 },
    -- Metallic asteroids
    { name = "small-metallic-asteroid",   probability = 0.01 },
    { name = "medium-metallic-asteroid",  probability = 0.01 },
    -- Oxide asteroids
    { name = "small-oxide-asteroid",      probability = 0.01 },
    { name = "medium-oxide-asteroid",     probability = 0.01 },
    -- Carbonic asteroids
    { name = "small-carbonic-asteroid",   probability = 0.01 },
    { name = "medium-carbonic-asteroid",  probability = 0.01 },
})

return {
    fulgora_to_crucible_edge_asteroids = fulgora_to_crucible_edge_asteroids,
    shattered_nekros_asteroids = shattered_nekros_asteroids
}


-- I genuinely can't tell if this is good or horrible...  Probably a bit of both.
-- I mean, it works, but it's a bit of a mess.
