
--crafting recipes for palgascore
minetest.register_craft({
    output="palgascore:stick 4",
    recipe={
        {"palgascore:plank"},
        {"palgascore:plank"},
    },
})
minetest.register_craft({
    output="palgascore:chest",
    recipe={
        {"palgascore:plank", "palgascore:plank", "palgascore:plank"},
        {"palgascore:plank", "", "palgascore:plank"},
        {"palgascore:plank", "palgascore:plank", "palgascore:plank"},
    },
})
minetest.register_craft({
    output="palgascore:plank 4",
    recipe={
        {"palgascore:tree"}
    },
})

minetest.register_craft({
    output="palgascore:door_closed",
    recipe={
        {"palgascore:plank", "palgascore:plank",},
        {"palgascore:plank", "palgascore:plank",},
        {"palgascore:plank", "palgascore:plank",},
    },
})
minetest.register_craft({
    type = "fuel",
    recipe = "palgascore:plank",
    burntime = 15,
})
minetest.register_craft({
    type = "fuel",
    recipe = "palgascore:tree",
    burntime = 60,
})
minetest.register_craft({
    type = "fuel",
    recipe = "palgascore:stick",
    burntime = 5,
})
minetest.register_craft({
    type = "fuel",
    recipe = "palgascore:coal_lump",
    burntime = 80,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:iron_lump",
    output = "palgascore:iron_ingot",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:gold_lump",
    output = "palgascore:gold_ingot",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:copper_lump",
    output = "palgascore:copper_ingot",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:tin_lump",
    output = "palgascore:tin_ingot",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:silver_lump",
    output = "palgascore:silver_ingot",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:bronze_lump",
    output = "palgascore:bronze_ingot",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:purple_gold_lump",
    output = "palgascore:purple_gold_ingot",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:rose_gold_lump",
    output = "palgascore:rose_gold_ingot",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:green_gold_lump",
    output = "palgascore:green_gold_ingot",
    cooktime = 10,
})
-- aluminum lump to ingot
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:aluminum_lump",
    output = "palgascore:aluminum_ingot",
    cooktime = 10,
})
--alloying recipes
minetest.register_craft({
    type = "shapeless",
    output = "palgascore:bronze_lump",
    recipe = {"palgascore:copper_lump", "palgascore:tin_lump", "palgascore:tin_lump"},
})
minetest.register_craft({
    type = "shapeless",
    output = "palgascore:rose_gold_lump",
    recipe = {"palgascore:gold_lump", "palgascore:copper_lump", "palgascore:copper_lump"},
})
minetest.register_craft({
    type = "shapeless",
    output = "palgascore:purple_gold_lump",
    recipe = {"palgascore:gold_lump", "palgascore:aluminum_lump", "palgascore:aluminum_lump"},
})
minetest.register_craft({
    type = "shapeless",
    output = "palgascore:green_gold_lump",
    recipe = {"palgascore:gold_lump", "palgascore:silver_lump", "palgascore:silver_lump"},
})
-- the tool crafts
minetest.register_craft({
    output = "palgascore:pick_wood",
    recipe = {
        {"palgascore:plank", "palgascore:plank", "palgascore:plank"},
        {"", "palgascore:stick", ""},
        {"", "palgascore:stick", ""},
    },
})
minetest.register_craft({
    output = "palgascore:axe_wood",
    recipe = {
        {"palgascore:plank", "palgascore:plank"},
        {"palgascore:plank", "palgascore:stick"},
        {"", "palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:shovel_wood",
    recipe = {
        {"palgascore:plank"},
        {"palgascore:stick"},
        {"palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:sword_wood",
    recipe = {
        {"palgascore:plank"},
        {"palgascore:plank"},
        {"palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:furnace",
    recipe = {
        {"palgascore:cobblestone", "palgascore:cobblestone", "palgascore:cobblestone"},
        {"palgascore:cobblestone", "", "palgascore:cobblestone"},
        {"palgascore:cobblestone", "palgascore:cobblestone", "palgascore:cobblestone"},
    },
})
--more tool
minetest.register_craft({
    output = "palgascore:pick_stone",
    recipe = {
        {"palgascore:cobblestone", "palgascore:cobblestone", "palgascore:cobblestone"},
        {"", "palgascore:stick", ""},
        {"", "palgascore:stick", ""},
    },
})
minetest.register_craft({
    output = "palgascore:axe_stone",
    recipe = {
        {"palgascore:cobblestone", "palgascore:cobblestone"},
        {"palgascore:cobblestone", "palgascore:stick"},
        {"", "palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:shovel_stone",
    recipe = {
        {"palgascore:cobblestone"},
        {"palgascore:stick"},
        {"palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:sword_stone",
    recipe = {
        {"palgascore:cobblestone"},
        {"palgascore:cobblestone"},
        {"palgascore:stick"},
    },
})
--even more tool craft continuing to emerald
minetest.register_craft({
    output = "palgascore:pick_emerald",
    recipe = {
        {"palgascore:emerald", "palgascore:emerald", "palgascore:emerald"},
        {"", "palgascore:stick", ""},
        {"", "palgascore:stick", ""},
    },
})
minetest.register_craft({
    output = "palgascore:axe_emerald",
    recipe = {
        {"palgascore:emerald", "palgascore:emerald"},
        {"palgascore:emerald", "palgascore:stick"},
        {"", "palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:shovel_emerald",
    recipe = {
        {"palgascore:emerald"},
        {"palgascore:stick"},
        {"palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:sword_emerald",
    recipe = {
        {"palgascore:emerald"},
        {"palgascore:emerald"},
        {"palgascore:stick"},
    },
})
--tools iron to sapphire craft
minetest.register_craft({
    output = "palgascore:pick_sapphire",
    recipe = {
        {"palgascore:sapphire", "palgascore:sapphire", "palgascore:sapphire"},
        {"", "palgascore:stick", ""},
        {"", "palgascore:stick", ""},
    },
})
minetest.register_craft({
    output = "palgascore:axe_sapphire",
    recipe = {
        {"palgascore:sapphire", "palgascore:sapphire"},
        {"palgascore:sapphire", "palgascore:stick"},
        {"", "palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:shovel_sapphire",
    recipe = {
        {"palgascore:sapphire"},
        {"palgascore:stick"},
        {"palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:sword_sapphire",
    recipe = {
        {"palgascore:sapphire"},
        {"palgascore:sapphire"},
        {"palgascore:stick"},
    },
})
--iron to diamond tools
minetest.register_craft({
    output = "palgascore:pick_diamond",
    recipe = {
        {"palgascore:diamond", "palgascore:diamond", "palgascore:diamond"},
        {"", "palgascore:stick", ""},
        {"", "palgascore:stick", ""},
    },
})
minetest.register_craft({
    output = "palgascore:axe_diamond",
    recipe = {
        {"palgascore:diamond", "palgascore:diamond"},
        {"palgascore:diamond", "palgascore:stick"},
        {"", "palgascore:stick"},
    },
})  
minetest.register_craft({
    output = "palgascore:shovel_diamond",
    recipe = {
        {"palgascore:diamond"},
        {"palgascore:stick"},
        {"palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:sword_diamond",
    recipe = {
        {"palgascore:diamond"},
        {"palgascore:diamond"},
        {"palgascore:stick"},
    },
})
--iron to gold tools
minetest.register_craft({
    output = "palgascore:pick_gold",
    recipe = {
        {"palgascore:gold_ingot", "palgascore:gold_ingot", "palgascore:gold_ingot"},
        {"", "palgascore:stick", ""},
        {"", "palgascore:stick", ""},
    },
})
minetest.register_craft({
    output = "palgascore:axe_gold",
    recipe = {
        {"palgascore:gold_ingot", "palgascore:gold_ingot"},
        {"palgascore:gold_ingot", "palgascore:stick"},
        {"", "palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:shovel_gold",
    recipe = {
        {"palgascore:gold_ingot"},
        {"palgascore:stick"},
        {"palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:sword_gold",
    recipe = {
        {"palgascore:gold_ingot"},
        {"palgascore:gold_ingot"},
        {"palgascore:stick"},
    },
})
--iron to iron tools
minetest.register_craft({
    output = "palgascore:pick_iron",
    recipe = {
        {"palgascore:iron_ingot", "palgascore:iron_ingot", "palgascore:iron_ingot"},
        {"", "palgascore:stick", ""},
        {"", "palgascore:stick", ""},
    },
})
minetest.register_craft({
    output = "palgascore:axe_iron",
    recipe = {
        {"palgascore:iron_ingot", "palgascore:iron_ingot"},
        {"palgascore:iron_ingot", "palgascore:stick"},
        {"", "palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:shovel_iron",
    recipe = {
        {"palgascore:iron_ingot"},
        {"palgascore:stick"},
        {"palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:sword_iron",
    recipe = {
        {"palgascore:iron_ingot"},
        {"palgascore:iron_ingot"},
        {"palgascore:stick"},
    },
})
--bronze to bronze tools
minetest.register_craft({
    output = "palgascore:pick_bronze",
    recipe = {
        {"palgascore:bronze_ingot", "palgascore:bronze_ingot", "palgascore:bronze_ingot"},
        {"", "palgascore:stick", ""},
        {"", "palgascore:stick", ""},
    },
})
minetest.register_craft({
    output = "palgascore:axe_bronze",
    recipe = {
        {"palgascore:bronze_ingot", "palgascore:bronze_ingot"},
        {"palgascore:bronze_ingot", "palgascore:stick"},
        {"", "palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:shovel_bronze",
    recipe = {
        {"palgascore:bronze_ingot"},
        {"palgascore:stick"},
        {"palgascore:stick"},
    },
})
minetest.register_craft({
    output = "palgascore:sword_bronze",
    recipe = {
        {"palgascore:bronze_ingot"},
        {"palgascore:bronze_ingot"},
        {"palgascore:stick"},
    },
})
--smelt ore to lump
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:coal_ore",
    output = "palgascore:coal_lump",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:iron_ore",
    output = "palgascore:iron_lump",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:copper_ore",
    output = "palgascore:copper_lump",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:gold_ore",
    output = "palgascore:gold_lump",
    cooktime = 10,
})
--skip gems
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:aluminum_ore",
    output = "palgascore:aluminum_lump",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:silver_ore",
    output = "palgascore:silver_lump",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:tin_ore",
    output = "palgascore:tin_lump",
    cooktime = 10,
})
--pyrite ore to pyritre
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:pyrite_ore",
    output = "palgascore:pyrite",
    cooktime = 10,
})
--glass and torch
minetest.register_craft({
    type = "cooking",
    output = "palgascore:glass",
    recipe = "palgascore:sand",
    cooktime = 10,
})
minetest.register_craft({
    output = "palgascore:torch 4",
    recipe = {
        {"palgascore:coal_lump"},
        {"palgascore:stick"},
    },
})
--do rest of ores
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:amethyst_ore",
    output = "palgascore:amethyst",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:emerald_ore",
    output = "palgascore:emerald",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:sapphire_ore",
    output = "palgascore:sapphire",
    cooktime = 10,
})
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:ruby_ore",
    output = "palgascore:ruby",
    cooktime = 10,
})
--aluminum ore to aluminum
minetest.register_craft({
    type = "cooking",
    recipe = "palgascore:aluminum_ore",
    output = "palgascore:aluminum_lump",
    cooktime = 10,
})