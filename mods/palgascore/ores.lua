-- look at folder
-- look at file
--look at how to use minetest.register_ore
-- look at nodes.lua
-- thats the rules for you
--and do NOT use local
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:coal_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = 16,
})
--next
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:iron_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -16,
})
--next
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:copper_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -8,
})
--next
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:gold_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -32,
})
--next
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:diamond_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -64,
})
--next
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:emerald_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -96,
})
--sapphire
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:sapphire_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -128,
})
--ruby
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:ruby_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -256,
})
--pyrite
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:pyrite_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -40,
})
--aluminum and amethyst
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:aluminium_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -30,
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:amethyst_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 1,
    clust_size     = 1,
    y_min          = -31000,
    y_max          = -10,
})
--tin
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "palgascore:tin_ore",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = -16,
})
--blobs of dirt and sand
minetest.register_ore({
    ore_type       = "blob",
    ore            = "palgascore:dirt",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = 16,
})
minetest.register_ore({
    ore_type       = "blob",
    ore            = "palgascore:sand",
    wherein        = "palgascore:stone",
    clust_scarcity = 8*8*8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_min          = -31000,
    y_max          = 16,
})

