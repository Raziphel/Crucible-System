local legion_grass_1 = table.deepcopy(data.raw["tile"]["grass-1"])
legion_grass_1.name = "legion-grass-1"
local legion_grass_2 = table.deepcopy(data.raw["tile"]["grass-2"])
legion_grass_2.name = "legion-grass-2"
local legion_grass_3 = table.deepcopy(data.raw["tile"]["grass-3"])
legion_grass_3.name = "legion-grass-3"
local legion_grass_4 = table.deepcopy(data.raw["tile"]["grass-4"])
legion_grass_4.name = "legion-grass-4"
local legion_red_desert_0 = table.deepcopy(data.raw["tile"]["red-desert-0"])
legion_red_desert_0.name = "legion-red-desert-0"
local legion_dirt_1 = table.deepcopy(data.raw["tile"]["dirt-1"])
legion_dirt_1.name = "legion-dirt-1"

data:extend{
    legion_grass_1,
    legion_red_desert_0,
    legion_dirt_1
}