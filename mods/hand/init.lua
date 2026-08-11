minetest.override_item("", {
    tool_capabilities = {
        max_drop_level = 0,
        groupcaps = {
            crumbly = {times = {[1]=0.5, [2]=0.7, [3]=1}, uses=0, maxlevel=1},
	        snappy = {times = {[1]=0.0, [2]=0.2, [3]=0.4}, uses=0, maxlevel=1},
			choppy = {times = {[1]=0.5, [2]=0.9}, uses=0, maxlevel=1},
        },
        damage_groups = {fleshy=2},
    },
})