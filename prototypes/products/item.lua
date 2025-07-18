local item_sounds = require("__base__.prototypes.item_sounds")

data:extend({
    {
        type = "item-subgroup",
        name = "legion-processes",
        group = "intermediate-products",
        order = "n"
    },
    {
        type = "item",
        name = "iridium-ore",
        icon = "__crucible_system__/graphics/icons/iridium-ore.png",
        subgroup = "legion-processes",
        color_hint = { text = "T" },
        order = "c[iridium]-a[iridium-ore]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "legion",
        weight = 10 * kg
    },
    {
        type = "item",
        name = "iridium-plate",
        icon = "__crucible_system__/graphics/icons/iridium-plate.png",
        subgroup = "legion-processes",
        color_hint = { text = "T" },
        order = "c[iridium]-a[iridium-plate]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "legion",
        weight = 10 * kg
    },
})
