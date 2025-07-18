require("prototypes.legion.planet-updates")

-- Remove the unlock-space-location effect from the Promethium Science Pack technology
for i, effect in pairs(data.raw.technology["promethium-science-pack"].effects) do
    if effect.type == "unlock-space-location" and effect.location == "solar-system-edge" then
        table.remove(data.raw.technology["promethium-science-pack"].effects, i)
        break
    end
end

-- Add the unlock-space-location effect to planet-discovery-aquilo tech instead
table.insert(data.raw.technology["planet-discovery-aquilo"].effects, {
    type = "unlock-space-location",
    space_location = "solar-system-edge"
})
