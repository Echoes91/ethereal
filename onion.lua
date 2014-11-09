-- Wild Onion Plant
minetest.register_craftitem("ethereal:wild_onion_plant", {
	description = "Wild Onion",
	groups = {not_in_creative_inventory=1},
	inventory_image = "wild_onion.png",
	on_use = minetest.item_eat(2),
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "ethereal:wild_onion_1")
	end
})
minetest.register_alias("ethereal:wild_onion_craftingitem", "ethereal:wild_onion_plant")

-- Define Onion growth stages
minetest.register_node("ethereal:onion_1", {
	drawtype = "plantlike",
	tiles = {"ethereal_wild_onion_1.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	drop = {
		items = {
			{items = {"ethereal:wild_onion_plant 1"},rarity=1},
			}
	},
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,attached_node=1,onion=1,growing=1,not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_alias("ethereal:wild_onion_1", "ethereal:onion_1")

minetest.register_node("ethereal:onion_2", {
	drawtype = "plantlike",
	tiles = {"ethereal_wild_onion_2.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	drop = {
		items = {
			{items = {"ethereal:wild_onion_plant 1"},rarity=1},
		}
	},
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,attached_node=1,onion=2,growing=1,not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_alias("ethereal:wild_onion_2", "ethereal:onion_2")

minetest.register_node("ethereal:onion_3", {
	drawtype = "plantlike",
	tiles = {"ethereal_wild_onion_3.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	is_ground_content = true,
	drop = {
		items = {
			{items = {"ethereal:wild_onion_plant 1"},rarity=1},
			{items = {"ethereal:wild_onion_plant 2"},rarity=3},
			}
	},
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,attached_node=1,onion=3,growing=1,not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_alias("ethereal:wild_onion_3", "ethereal:onion_3")

minetest.register_node("ethereal:onion_4", {
	drawtype = "plantlike",
	tiles = {"ethereal_wild_onion_4.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	drop = {
		items = {
			{items = {"ethereal:wild_onion_plant 1"},rarity=1},
			{items = {"ethereal:wild_onion_plant 3"},rarity=3},
			}
	},
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,attached_node=1,onion=4,growing=1,not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_alias("ethereal:wild_onion_4", "ethereal:onion_4")

minetest.register_node("ethereal:onion_5", {
	drawtype = "plantlike",
	tiles = {"ethereal_wild_onion_5.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
	drop = {
		items = {
			{items = {"ethereal:wild_onion_plant 2"},rarity=1},
			{items = {"ethereal:wild_onion_plant 3"},rarity=2},
			}
	},
	selection_box = {type = "fixed",fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},},
	groups = {snappy=3,flammable=2,plant=1,attached_node=1,onion=5,not_in_creative_inventory=1},
	sounds = default.node_sound_leaves_defaults(),
})
minetest.register_alias("ethereal:wild_onion_5", "ethereal:onion_5")

-- Abm for growing Wild Onion
if farming.mod ~= "redo" then

minetest.register_abm({
	nodenames = {"group:onion"},
	neighbors = {"farming:soil_wet"},
	interval = 50,
	chance = 3,
	action = function(pos, node)
		-- return if already full grown
		if minetest.get_item_group(node.name, "onion") == 5 then
			return
		end
		
		-- check if on wet soil
		pos.y = pos.y-1
		local n = minetest.get_node(pos)
		if minetest.get_item_group(n.name, "soil") < 3 then
			return
		end
		pos.y = pos.y+1
		
		-- check light
		if not minetest.get_node_light(pos) then
			return
		end
		if minetest.get_node_light(pos) < 13 then
			return
		end
		
		-- grow
		local height = minetest.get_item_group(node.name, "onion") + 1
		minetest.set_node(pos, {name="ethereal:wild_onion_"..height})
	end
})

end

-- Temporary compatibility lines for Xanadu server
minetest.register_alias("ethereal:onion_7", "ethereal:onion_4")
minetest.register_alias("ethereal:onion_8", "ethereal:onion_5")
minetest.register_alias("ethereal:wild_onion_7", "ethereal:onion_4")
minetest.register_alias("ethereal:wild_onion_8", "ethereal:onion_5")
