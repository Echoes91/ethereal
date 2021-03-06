-- Ice Brick
minetest.register_node("ethereal:icebrick", {
	description = "Ice Brick",
	tiles = {"brick_ice.png"},
	paramtype = "light",
	freezemelt = "default:water_source",
	groups = {cracky=3, melts=1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = 'ethereal:icebrick 4',
	recipe = {
		{'default:ice', 'default:ice'},
		{'default:ice', 'default:ice'},
	}
})

-- Snow Brick
minetest.register_node("ethereal:snowbrick", {
	description = "Snow Brick",
	tiles = {"brick_snow.png"},
	paramtype = "light",
--	leveled = 7,
	--drawtype = "nodebox",
	freezemelt = "default:water_source",
	groups = {crumbly=3, melts=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_snow_footstep", gain=0.25},
		dug = {name="default_snow_footstep", gain=0.75},
	}),
	on_construct = function(pos)
		pos.y = pos.y - 1
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name="default:dirt_with_snow"})
		end
	end,
})

minetest.register_craft({
	output = 'ethereal:snowbrick 4',
	recipe = {
		{'default:snowblock', 'default:snowblock'},
		{'default:snowblock', 'default:snowblock'},
	}
})

-- Over time Cobble placed in water changes to Mossy Cobble
minetest.register_abm({
	nodenames = {"default:cobble"},
	neighbors={"default:water_source"},
	interval = 30,
	chance = 10,
	action = function(pos, node)
	        minetest.add_node(pos, {name="default:mossycobble"})
	end
})

-- If Crystal Spike, Crystal Dirt, Snow near Water, change Water to Ice
minetest.register_abm({
	nodenames = {"ethereal:crystal_spike", "ethereal:crystal_dirt", "default:snow", "default:snowblock", "ethereal:snowbrick"},
	neighbors = {"default:water_source"},
	interval = 15,
	chance = 2,
	action = function(pos, node)
		local pos0 = {x=pos.x-1,y=pos.y-1,z=pos.z-1}
		local pos1 = {x=pos.x+1,y=pos.y+1,z=pos.z+1}

		local water = minetest.find_nodes_in_area(pos0, pos1, "default:water_source")
		if water then
			minetest.set_node(water[1], {name="default:ice"})
		end
	end,
})

-- If Heat Source near Ice or Snow then melt
minetest.register_abm({
	nodenames = {"default:ice", "default:snowblock", "default:snow", "default:dirt_with_snow", "ethereal:snowbrick", "ethereal:icebrick"},
	--nodenames = {"group:melts", "default:dirt_with_snow"},
	--neighbors = {"group:hot"},
	neighbors = {"fire:basic_fire", "default:lava_source", "default:lava_flowing", "default:furnace_active", "default:torch"},
	interval = 1, -- 10
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)

		--print ("NODE:", string.split(node.name, ":")[1])

		if node.name == "default:ice" or node.name == "default:snowblock" 
		or node.name == "ethereal:icebrick" or node.name == "ethereal:snowbrick" then
			minetest.add_node(pos,{name="default:water_source"})
		elseif node.name == "default:snow" then -- or string.split(node.name, ":")[1]then
			minetest.add_node(pos,{name="default:water_flowing"})
		elseif node.name == "default:dirt_with_snow" then
			minetest.add_node(pos,{name="default:dirt_with_grass"})
		end
		nodeupdate(pos)
	end,
})

-- If Water Source near Dry Dirt, change to normal Dirt
minetest.register_abm({
	nodenames = {"ethereal:dry_dirt"},
	neighbors = {"group:water"},
	interval = 15,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.add_node(pos,{name="default:dirt"})
	end,
})
--[[
-- If water next to mushroom pore then remove water
minetest.register_abm({
	nodenames = {"ethereal:mushroom_pore"},
	neighbors = {"group:water"},
	interval = 2,
	chance = 1,
	action = function(pos, node)
		local pos0 = {x=pos.x-1,y=pos.y-1,z=pos.z-1}
		local pos1 = {x=pos.x+1,y=pos.y+1,z=pos.z+1}

		local water = minetest.find_nodes_in_area(pos0, pos1, "group:water")
		if water then
			for n = 1, #water do
				minetest.set_node(water[n], {name="air"})
			end
		end
	end,
})
]]
--[[
-- If torch next to water then drop torch
minetest.register_abm({
	nodenames = {"default:torch"},
	neighbors = {"default:water_source", "default:water_flowing"},
	interval = 1,
	chance = 1,

	action = function(pos, node)
		local pos0 = {x=pos.x-1,y=pos.y,z=pos.z-1}
		local pos1 = {x=pos.x+1,y=pos.y+1,z=pos.z+1}
		if #minetest.find_nodes_in_area(pos0, pos1, {"default:water_source", "default:water_flowing"}) > 0 then
			minetest.set_node(pos, {name="default:water_flowing"})
			minetest.add_item(pos, {name = "default:torch"})
		end
	end,
})
]]
