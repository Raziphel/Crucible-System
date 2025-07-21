local legion = data.raw["planet"]["legion"]

-- Remove any non-existing decoratives or ones that could spawn on resources
for key, _ in pairs(legion.map_gen_settings.autoplace_settings.decorative.settings) do
    local decorative = data.raw["optimized-decorative"][key]

    -- Remove if it doesn't exist or doesn't have autoplace data
    if not decorative or not decorative.autoplace then
        legion.map_gen_settings.autoplace_settings.decorative.settings[key] = nil
    else
        -- Forcefully disallow spawning on resource tiles
        legion.map_gen_settings.autoplace_settings.decorative.settings[key].place_on_resource = false
    end
end

-- Remove any non existing entities from map gen settings
for key, _ in pairs(legion.map_gen_settings.autoplace_settings.entity.settings) do
    if (not data.raw["simple-entity"][key] or not data.raw["simple-entity"][key].autoplace) and not data.raw["resource"][key] then
        legion.map_gen_settings.autoplace_settings.entity.settings[key] = nil
    end
end
