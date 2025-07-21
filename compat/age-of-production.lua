local rro = require("lib.remove-replace-object")


-- Smeltery
local smeltery_tech = data.raw["technology"]["aop-smeltery"]
rro.replace(smeltery_tech.prerequisites, "quantum-processor", "holmium-processing")
table.insert(smeltery_tech.prerequisites, "tungsten-steel")
smeltery_tech.unit = {
    count = 5000,
    time = 90,
    ingredients = {
        { "automation-science-pack",      1 },
        { "logistic-science-pack",        1 },
        { "chemical-science-pack",        1 },
        { "production-science-pack",      1 },
        { "utility-science-pack",         1 },
        { "space-science-pack",           1 },
        { "metallurgic-science-pack",     1 },
        { "electromagnetic-science-pack", 1 },
    }
}

local smeltery_recipe = data.raw.recipe["aop-smeltery"]

smeltery_recipe.ingredients = {
    { type = "item",  name = "tungsten-plate",   amount = 100 },
    { type = "item",  name = "iron-gear-wheel",  amount = 100 },
    { type = "item",  name = "holmium-plate",    amount = 50 },
    { type = "item",  name = "refined-concrete", amount = 25 },
    { type = "item",  name = "processing-unit",  amount = 25 },
    { type = "item",  name = "foundry",          amount = 1 },
    { type = "fluid", name = "lubricant",        amount = 100 },
}
