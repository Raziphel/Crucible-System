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
        name = "bauxite-ore",
        icon = "__crucible_system__/graphics/icons/bauxite-ore.png",
        subgroup = "legion-processes",
        color_hint = { text = "T" },
        order = "c[bauxite]-a[bauxite-ore]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "legion",
        weight = 10 * kg
    },
    {
        type = "item",
        name = "alumina",
        icon = "__crucible_system__/graphics/icons/alumina-icon.png",
        subgroup = "legion-processes",
        color_hint = { text = "T" },
        order = "c[alumina]-a[alumina]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "legion",
        weight = 10 * kg
    },
    {
        type = "item",
        name = "aluminum-plate",
        icon = "__crucible_system__/graphics/icons/aluminum-plate.png",
        subgroup = "legion-processes",
        color_hint = { text = "T" },
        order = "c[aluminum]-a[aluminum-plate]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "legion",
        weight = 10 * kg
    },
    {
        type = "item",
        name = "shale-ore",
        icon = "__crucible_system__/graphics/icons/shale-ore.png",
        subgroup = "legion-processes",
        color_hint = { text = "T" },
        order = "c[raw-shale]-a[raw-shale]",
        inventory_move_sound = item_sounds.resource_inventory_move,
        pick_sound = item_sounds.resource_inventory_pickup,
        drop_sound = item_sounds.resource_inventory_move,
        stack_size = 50,
        default_import_location = "legion",
        weight = 10 * kg
    },
})
