local legion = data.raw["planet"]["legion"]

-- Remove any non existing decoratives from map gen settings
for key, _ in pairs(legion.map_gen_settings.autoplace_settings.decorative.settings) do
    if not data.raw["optimized-decorative"][key] or not data.raw["optimized-decorative"][key].autoplace then
        legion.map_gen_settings.autoplace_settings.decorative.settings[key] = nil
    end
end

-- Remove any non existing entities from map gen settings
for key, _ in pairs(legion.map_gen_settings.autoplace_settings.entity.settings) do
    if (not data.raw["simple-entity"][key] or not data.raw["simple-entity"][key].autoplace) and not data.raw["resource"][key] then
        legion.map_gen_settings.autoplace_settings.entity.settings[key] = nil
    end
end
