local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")

data:extend({
    {
        type = "item",
        name = "entropium-asteroid-chunk",
        icon = "__crucible_system__/graphics/entity/asteroids/chunk-entropium-asteroid.png",
        subgroup = "space-material",
        order = "a[carbonic]-e[chunk]",
        inventory_move_sound = space_age_item_sounds.rock_inventory_move,
        pick_sound = space_age_item_sounds.rock_inventory_pickup,
        drop_sound = space_age_item_sounds.rock_inventory_move,
        stack_size = 1,
        weight = 100 * kg,
        random_tint_color = item_tints.iron_rust
    },

})
