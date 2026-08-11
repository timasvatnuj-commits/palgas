--added nodes NOT in order. list and nodegroups will be added as project develops. but to make early convenience, nodes from mgg and mgc will be listed accordingly. (thanks github copilot for the trial and eror while making the notes)
--gen nodes
minetest.register_node("palgascore:sand", {
    description = "Sand",
    tiles = {"sand_texture.png"},
    groups = {falling_node = 1, crumbly = 1}  -- Enables gravity
})
--replace this note with the rest of the mygamegen nodes from init.lua
minetest.register_node("palgascore:dirt", {
    description = "Stable Dirt",
    tiles = {"dirt.png"},
    groups = {crumbly = 1},  -- Normal dirt, does not fall
    drop = "palgascore:loose_dirt",  -- Drops loose dirt when broken
})
minetest.register_node("palgascore:loose_dirt", {
    description = "Loose Dirt",
    tiles = {"loose_dirt.png"},
    groups = {crumbly = 1, falling_node = 1},  -- Loose dirt that falls
})

minetest.register_node("palgascore:dirt_with_grass", {
    description = "Dirt with Grass",
    tiles = {"grass_top.png", "dirt.png", "grass_side.png"},
    groups = {crumbly = 1},  -- Normal dirt with grass
    drop = {  
        max_items = 2,  -- Drops two items
        items = {
            {items = {"palgascore:loose_dirt"}, rarity = 1},  -- Always drops loose dirt
            {items = {"palgascore:grass"}, rarity = 1},  -- Always drops grass
        }
    },
})

minetest.register_node("palgascore:grass", {
    description = "Tall Grass",
    drawtype = "plantlike",
    waving = 1,
    tiles = {"grass.png"},
    inventory_image = "grass.png",
    wield_image = "grass.png",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
    groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
})

minetest.register_node("palgascore:stone", {
    description = "Stone",
    tiles = {"stone_texture.png"},
    groups = {cracky = 3, stone = 1},
    drop = "palgascore:cobblestone",  -- Drops cobblestone when mined
})
--tree and leaves
minetest.register_node("palgascore:tree", {
    description = "Tree",
    tiles = {"tree_top.png", "tree_top.png", "tree_side.png"},
    groups = {choppy = 2, flammable = 2},
})
minetest.register_node("palgascore:leaves", {
    description = "Leaves",
    drawtype = "allfaces_optional",
    waving = 1,
    tiles = {"leaves.png"},
    paramtype = "light",
    groups = {snappy = 1, flammable = 2, leafdecay = 3},

})
minetest.register_node("palgascore:water_source", {
    description = "Water",
    tiles = {"water_texture.png"},
    drawtype = "liquid",
    paramtype = "light",
    liquidtype = "source",
    liquid_alternative_flowing = "palgascore:water_flowing",
    liquid_alternative_source = "palgascore:water_source",
    liquid_viscosity = 1,  -- Lower viscosity makes water flow faster
    liquid_renewable = true,
    drowning = 1,
    post_effect_color = {a = 150, r = 0, g = 100, b = 255},
    groups = {water = 3, liquid = 1},
    floodable = true,  -- Allows water to spread
    on_construct = function(pos)
        -- Force water to spread when placed
        local below = {x = pos.x, y = pos.y - 1, z = pos.z}
        if minetest.get_node(below).name == "air" then
            minetest.set_node(below, {name = "palgascore:water_flowing"})
        end
    end,
	walkable = false,
	pointable = false,
	buildable_to = true,
    waving=3
})
minetest.register_node("palgascore:water_flowing", {
    description = "Flowing Water",
    tiles = {"wateranimated.png"},
    drawtype = "flowingliquid",  -- Forces flowing behavior
    paramtype = "light",
    liquidtype = "flowing",
        special_tiles = {
        {
            name = "wateranimated.png",
            backface_culling = false,
            animation = {
                type = "vertical_frames",
                aspect_w = 85,
                aspect_h = 85,
                length = 0.8, -- speed of animation
            },
        },
        {
            name = "wateranimated.png",
            backface_culling = true,
            animation = {
                type = "vertical_frames",
                aspect_w = 85,
                aspect_h = 85,
                length = 0.8,
            },
        },
    },
waving=3,
    liquid_alternative_flowing = "palgascore:water_flowing",
    liquid_alternative_source = "palgascore:water_source",
    liquid_viscosity = 1,
    liquid_renewable = true,
    drowning = 1,
    post_effect_color = {a = 150, r = 0, g = 100, b = 255},  -- Adds water tint
    groups = {water = 3, liquid = 1, not_in_creative_inventory = 1},
	walkable = false,
	buildable_to = true,
	pointable = false,
})
--mygamecraftable nodes
minetest.register_node("palgascore:door_closed", {
    description = "Door",
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            {0.5, -0.5, -0.4375, -0.5, 1.5, -0.5}, -- front slice
        },
    },
    tiles = {
        "door_side.png", "door_side.png", "door_side.png", "door_side.png",
        "door_front.png", "door_front.png"
    },
    paramtype2 = "facedir",
    groups = {choppy = 2},
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        -- rotate one step when opening
        local new_param2 = (node.param2 + 1) % 4
        minetest.swap_node(pos, {name = "palgascore:door_open", param2 = new_param2})
    end,
})
minetest.register_node("palgascore:door_open", {
    description = "Door (Open)",
    drawtype = "nodebox",
    drop="mygamecraftable:door_closed",
    node_box = {
        type = "fixed",
        fixed = {
            {0.5, -0.5, -0.4375, -0.5, 1.5, -0.5}, -- right edge slice
        },
    },
    tiles = {
        "door_side.png", "door_side.png", "door_side.png", "door_side.png",
        "door_front.png", "door_front.png"
    },
    paramtype2 = "facedir",
    groups = {choppy = 2},
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        -- rotate one step back when closing
        local new_param2 = (node.param2 - 1) % 4
        minetest.swap_node(pos, {name = "palgascore:door_closed", param2 = new_param2})
    end,
})
minetest.register_node("palgascore:plank",{
    description="Planks",
    tiles={"plank.png"},
    groups={choppy=2, wood}
})
minetest.register_node("palgascore:chest", {
    description = "Chest",
    tiles = {
        "chest_top.png", "chest_top.png",
        "chest_side.png", "chest_side.png",
        "chest_side.png", "chest_front.png"
    },
    groups = {choppy = 2},
    paramtype2 = "facedir",

    -- Create empty inventory when placed
    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string("infotext", "Chest")
        local inv = meta:get_inventory()
        inv:set_size("main", 8*4) -- 32 slots
    end,

    -- Show chest UI when right-clicked
    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
        minetest.show_formspec(player:get_player_name(), "mygamecraftable:chest",
            "size[8,9]" ..
            "list[nodemeta:" .. pos.x .. "," .. pos.y .. "," .. pos.z .. ";main;0,0;8,4;]" ..
            "list[current_player;main;0,5;8,4;]" ..
            "listring[nodemeta:" .. pos.x .. "," .. pos.y .. "," .. pos.z .. ";main]" ..
            "listring[current_player;main]"
        )
    end,

    
})
--end of old nodes
minetest.register_node("palgascore:furnace", {
    description = "Functional Furnace",
    tiles = {
        "furnace_top.png", "furnace_top.png",
        "furnace_side.png", "furnace_side.png",
        "furnace_side.png", "furnace_front.png"
    },
    groups = {cracky = 2},


    on_construct = function(pos)
        local meta = minetest.get_meta(pos)
        meta:set_string("formspec",
            "size[8,9]" ..
            "list[current_name;src;2.75,0.5;1,1;]" ..
            "list[current_name;fuel;2.75,2.5;1,1;]" ..
            "list[current_name;dst;5.75,1.5;2,2;]" ..
            "list[current_player;main;0,5;8,4;]")
        meta:set_string("infotext", "Furnace")
        local inv = meta:get_inventory()
        inv:set_size("src", 1)
        inv:set_size("fuel", 1)
        inv:set_size("dst", 4)
        meta:set_int("fuel_time", 0)
        meta:set_int("fuel_total", 0)
        meta:set_int("src_time", 0)
        
        minetest.get_node_timer(pos):start(1.0)
    end,

    on_timer = function(pos, elapsed)
        local meta = minetest.get_meta(pos)
        local inv = meta:get_inventory()

        local src = inv:get_stack("src", 1)
        local fuel = inv:get_stack("fuel", 1)

        local fuel_time = meta:get_int("fuel_time")
        local fuel_total = meta:get_int("fuel_total")
        local src_time = meta:get_int("src_time")
        local formspec =
            "size[8,9]" ..
            "list[current_name;src;2.75,0.5;1,1;]" ..
            "list[current_name;fuel;2.75,2.5;1,1;]" ..
            "list[current_name;dst;5.75,1.5;2,2;]" ..
            "list[current_player;main;0,5;8,4;]" ..
            "label[0,0;Fuel: " .. fuel_time .. "s]" ..
            "label[0,0.5;Fuel inserted: " .. fuel_total .. "s]" ..
            "label[0,1;Progress: " .. src_time .. "s]"

        meta:set_string("formspec", formspec)


        -- If fuel is burning
        if fuel_time > 0 then
            fuel_time = fuel_time - elapsed
            src_time = src_time + elapsed

            local cooked = minetest.get_craft_result({
                method = "cooking",
                width = 1,
                items = {src}
            })

            if cooked.time > 0 and src_time >= cooked.time then
                src:take_item(1)
                inv:set_stack("src", 1, src)
                if inv:room_for_item("dst", cooked.item) then
                    inv:add_item("dst", cooked.item)
                end
                src_time = 0
            end
        else
            -- Try to consume new fuel
            local fuel_def = minetest.get_craft_result({
                method = "fuel",
                width = 1,
                items = {fuel}
            })
            if fuel_def.time > 0 then
                fuel:take_item(1)
                inv:set_stack("fuel", 1, fuel)
                fuel_time = fuel_def.time
                fuel_total = fuel_def.time
            end
        end

        meta:set_int("fuel_time", fuel_time)
        meta:set_int("fuel_total", fuel_total)
        meta:set_int("src_time", src_time)

        return true -- keep timer running
    end,
})
-- cobblestone
minetest.register_node("palgascore:cobblestone", {
    description = "Cobblestone",
    tiles = {"cobble.png"},
    groups = {cracky = 3,},
})
minetest.register_node("palgascore:lava_source", {
    description = "Lava Source",
    drawtype = "liquid",
    tiles = {"lava.png"},
    special_tiles = {
        {name = "lava.png", backface_culling = false},
        {name = "lava.png", backface_culling = true},
    },
    paramtype = "light",
    light_source = 14,
    walkable = false,
    pointable = true,
    diggable = false,
    buildable_to = true,
    damage_per_second = 4,
    liquidtype = "source",
    liquid_alternative_flowing = "palgascore:lava_flowing",
    liquid_alternative_source = "palgascore:lava_source",
    liquid_viscosity = 7,
    liquid_renewable = false,
    post_effect_color = {a=192, r=255, g=64, b=0},
    groups = {lava=1, liquid=3, hot=1},
})
minetest.register_node("palgascore:lava_flowing", {
    description = "Flowing Lava",
    drawtype = "flowingliquid",
    tiles = {"lava.png"},
    special_tiles = {
        {
            name = "lava_animated.png",
            animation = {type="vertical_frames", aspect_w=85, aspect_h=85, length=3},
            backface_culling = false,
        },
        {
            name = "lava_animated.png",
            animation = {type="vertical_frames", aspect_w=85, aspect_h=85, length=3},
            backface_culling = true,
        },
    },
    paramtype = "light",
    light_source = 14,
    walkable = false,
    pointable = true,
    diggable = false,
    buildable_to = true,
    damage_per_second = 4,
    liquidtype = "flowing",
    liquid_alternative_flowing = "palgascore:lava_flowing",
    liquid_alternative_source = "palgascore:lava_source",
    liquid_viscosity = 7,
    liquid_renewable = false,
    post_effect_color = {a=192, r=255, g=64, b=0},
    groups = {lava=1, liquid=3, hot=1, not_in_creative_inventory=1},
})
-- ores
minetest.register_node("palgascore:iron_ore", {
    description = "Iron Ore",
    tiles = {"iron_ore.png"},
    groups = {cracky = 4, ore = 1},
})
minetest.register_node("palgascore:gold_ore", {
    description = "Gold Ore",
    tiles = {"gold_ore.png"},
    groups = {cracky = 4, ore = 1},
})
minetest.register_node("palgascore:coal_ore", {
    description = "Coal Ore",
    tiles = {"coal_ore.png"},
    groups = {cracky = 3, ore = 1},
    drop = "palgascore:coal_lump",  -- Drops coal lump when mined
})
minetest.register_node("palgascore:diamond_ore", {
    description = "Diamond Ore",
    tiles = {"diamond_ore.png"},
    groups = {cracky = 5, ore = 1},
})
minetest.register_node("palgascore:emerald_ore", {
    description = "Emerald Ore",
    tiles = {"emerald_ore.png"},
    groups = {cracky = 6, ore = 1},
})
-- other ores
minetest.register_node("palgascore:pyrite_ore", {
    description = "Pyrite Ore",
    tiles = {"pyrite_ore.png"},
    groups = {cracky = 3, ore = 1},
})
minetest.register_node("palgascore:ruby_ore", {
    description = "Ruby Ore",
    tiles = {"ruby_ore.png"},
    groups = {cracky = 6, ore = 1},
})
minetest.register_node("palgascore:sapphire_ore", {
    description = "Sapphire Ore",
    tiles = {"sapphire_ore.png"},
    groups = {cracky = 7, ore = 1},
})
minetest.register_node("palgascore:copper_ore", {
    description = "Copper Ore",
    tiles = {"copper_ore.png"},
    groups = {cracky = 3, ore = 1},
})
minetest.register_node("palgascore:tin_ore", {
    description = "Tin Ore",
    tiles = {"tin_ore.png"},
    groups = {cracky = 3, ore = 1},
})
minetest.register_node("palgascore:silver_ore", {
    description = "Silver Ore",
    tiles = {"silver_ore.png"},
    groups = {cracky = 3, ore = 1},
})
minetest.register_node("palgascore:amethyst_ore", {
    description = "Amethyst Ore",
    tiles = {"amethyst_ore.png"},
    groups = {cracky = 3, ore = 1},
})
minetest.register_node("palgascore:aluminium_ore", {
    description = "Aluminium Ore",
    tiles = {"aluminium_ore.png"},
    groups = {cracky = 3, ore = 1},
})
--glass
minetest.register_node("palgascore:glass", {
    description = "Glass",
    drawtype = "glasslike",
    tiles = {"glass.png"},
    paramtype = "light",
    sunlight_propagates = true,
    groups = {cracky = 1, oddly_breakable_by_hand = 3},
    drop = "",  -- Drops nothin
})
--torch
minetest.register_node("palgascore:torch", {
    description = "Torch",
    drawtype = "torchlike",
    tiles = {"torch.png"},
    inventory_image = "torch.png",
    wield_image = "torch.png",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
    groups = {choppy = 2, dig_immediate = 3, flammable = 2},
    light_source = 14,
})
