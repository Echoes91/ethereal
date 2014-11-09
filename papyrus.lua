-- Override default Papyrus to make it walkable
minetest.override_item("default:papyrus", {walkable=true, sunlight_propagates=true})


-- Have Papyrus grow up to 4 high and Bamboo grow up to 5 in height (shared abm)
minetest.register_abm({
	nodenames = {"default:papyrus", "ethereal:bamboo"},
	neighbors = {"group:soil"},
	interval = 50,
	chance = 20,
	action = function(pos, node)

		local type = minetest.get_node(pos).name
		local high = 4

		pos.y = pos.y-1
		local name = minetest.get_node(pos).name

		if minetest.get_item_group(name, "soil") < 1 or minetest.find_node_near(pos, 3, {"group:water"}) == nil then
			return
		end

		if type == "ethereal:bamboo" then
			high = 5
		end

		pos.y = pos.y+1
		local height = 0

		while minetest.get_node(pos).name == type and height < high do
			height = height+1
			pos.y = pos.y+1
		end

		if height < high then
			if minetest.get_node(pos).name == "air" then
				minetest.set_node(pos, {name=type})
			end
		end

	end,
})
