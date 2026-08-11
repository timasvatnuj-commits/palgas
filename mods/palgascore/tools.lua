-- wood
minetest.register_craftitem("palgascore:pick_wood", {
    description = "Wooden Pickaxe",
    inventory_image = "pick_wood.png",
    stack_max = 1,
    tool_capabilities = {
        groupcaps = {
            cracky = {times = {[1]=0.8, [2]=1.1, [3]=1.3}}
        }
    }
})
minetest.register_craftitem("palgascore:axe_wood", {
    description = "Wooden Axe",
    inventory_image = "axe_wood.png",
    stack_max = 1,
    tool_capabilities = {
        groupcaps = {
            choppy = {times = {[1]=0.44, [2]=0.83}}
        }
    }
})
minetest.register_craftitem("palgascore:shovel_wood", {
    description = "Wooden Shovel",
    inventory_image = "shovel_wood.png",
    stack_max = 1,
    tool_capabilities = {
        groupcaps = {
            crumbly = {times = {[1]=0.35, [2]=0.5, [3]=0.65}}
        }
    }
})
minetest.register_craftitem("palgascore:sword_wood", {
    description = "Wooden Sword",
    inventory_image = "sword_wood.png",
    stack_max = 1,
    tool_capabilities = {
        groupcaps = {
            snappy = {times = {[1]=0.0, [2]=0.0, [3]=0.25}}
        }
    }
})
minetest.register_craftitem("palgascore:pick_stone", {
    description = "Stone Pickaxe",
    inventory_image = "pick_stone.png",
    stack_max = 1,
    tool_capabilities = {
        group_caps={cracky = {times = {[1]=0.71, [2]=0.9, [3]=1.1, [4]=1.5}}}
    }
})
minetest.register_craftitem("palgascore:axe_stone", {
    description = "Stone Axe",
    inventory_image = "axe_stone.png",
    stack_max = 1,
    tool_capabilities={
        group_caps={choppy={times={[1]=0.22, [2]=0.56, [3]=0.83}}}
    }
})
minetest.register_craftitem("palgascore:shovel_stone", {
    description = "Stone Shovel",
    inventory_image = "shovel_stone.png",
    stack_max = 1,
    tool_capabilitites={
            groupcaps={crumbly={times={[1]=0.15, [2]=0.35, [3]=0.44}}}
    }
})
minetest.register_craftitem("palgascore:sword_stone", {
    description = "Stone Sword",
    inventory_image = "sword_stone.png",
    stack_max = 1,
    tool_capabilities={
        groupcaps={snappy={times={[1]=0.0,[2]=0.0,[3]=0.0,[4]=0.23}}}
    }
})
minetest.register_craftitem("palgascore:pick_bronze", {
    description = "Bronze Pickaxe",
    inventory_image = "pick_bronze.png",
    stack_max = 1,
    tool_capabilities = {
        groupcaps={cracky={times={[1]=0.55, [2]=0.75, [3]=0.92, [4]=1.5}}}
    }
})
minetest.register_craftitem("palgascore:axe_bronze", {
    description = "Bronze Axe",
    inventory_image = "axe_bronze.png",
    stack_max = 1,
    tool_capabilities={
        groupcaps={choppy={times={[1]=0.17, [2]=0.27, [3]=0.32}}}
    }
})
minetest.register_craftitem("palgascore:shovel_bronze", {
    description = "Bronze Shovel",
    inventory_image = "shovel_bronze.png",
    stack_max = 1,
    tool_capabilities={
        groupcaps={crumbly={times={[1]=0.08, [2]=0.14, [3]=0.22}}}
    }
})
minetest.register_craftitem("palgascore:sword_bronze", {
    description = "Bronze Sword",
    inventory_image = "sword_bronze.png",
    stack_max = 1,
    tool_capabilities={
        groupcaps={snappy={times={[1]=0.0,[2]=0.0,[3]=0.0,[4]=0.0}}}
    }
})