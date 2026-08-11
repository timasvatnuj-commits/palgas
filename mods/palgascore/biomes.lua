minetest.register_biome({
    name = "grassland",
    node_top = "palgascore:dirt_with_grass", 
    depth_top = 1,
    node_filler = "palgascore:dirt",  
        depth_filler = 3,
    y_min = 1,
    humidity_point=60,
    heat_point=50,
})
minetest.register_biome({
    name = "sand_land",
    node_top = "palgascore:sand",  -- ✅ Sand covers the surface
    depth_top = 1,  -- ✅ Only 1 layer of sand
    node_filler = "palgascore:stone",  -- ✅ Stone below sand
    depth_filler = 3,  -- ✅ 3 layers of stone
    y_min = 0,
    y_max = 100,
    heat_point=70,
    humidity_point=20,
})
minetest.register_decoration({
    deco_type = "simple",
    place_on = {"palgascore:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.3, 
    y_min = 1,
    y_max = 100, 
    decoration = "palgascore:grass",
})
minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"palgascore:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.003,
    schematic = minetest.get_modpath("palgascore") .. "/schematics/tree.mts",
    flags = "place_center_x, place_center_z",
    rotation = "random",
})
-- snowlands config
minetest.register_node ("palgascore:dirt_with_snow",{
   description="Dirt with snow",
   tiles={"snow.png", "dirt.png", "dirt_snow_side.png"},
   groups = {crumbly = 1}
})
minetest.register_node("palgascore:snow", {
    description = "Snow Pile",
    drawtype = "nodebox",
    tiles = {"snow.png"},
    paramtype = "light",
    node_box = {
        type = "fixed",
        fixed = {
            
            {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
        },
    },
    groups = {crumbly = 2, falling_node = 1},
    buildable_to=true
})
minetest.register_biome({
name = "snowland",
    node_top = "palgascore:dirt_with_snow",  -- ✅ Grass-covered dirt on top
    depth_top = 1,  -- ✅ Only 1 layer of grass dirt
    node_filler = "palgascore:dirt",  -- ✅ Dirt below grass
    depth_filler = 3,  -- ✅ 3 layers of dirt
    y_min = 1,  -- ✅ Appears at ground level
    heat_point=20,
    humidity_point=60,
})
minetest.register_decoration({
    deco_type = "simple",  -- 
    place_on = {"palgascore:dirt_with_snow"},
    sidelen = 16,  -- ✅ Decoration grid size
    fill_ratio = 9999999999999999999999999999999999999999999, 
    y_min = 1, 
    y_max = 100,
    decoration = "palgascore:snow",  -- ✅ The grass node to place
})
