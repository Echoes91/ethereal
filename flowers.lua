-- Flowers spread over all types of soil
minetest.register_abm({
	nodenames = {"group:flora"},
	neighbors = {"group:soil"},
	interval = 40,
	chance = 20,
	action = function(pos, node)

		local light = minetest.get_node_light(pos)

		if not light or light < 13 then
			return
		end

		local pos0 = {x=pos.x-4,y=pos.y-2,z=pos.z-4}
		local pos1 = {x=pos.x+4,y=pos.y+2,z=pos.z+4}

		if #minetest.find_nodes_in_area(pos0, pos1, "group:flora") > 3 then

			local crystal = minetest.find_nodes_in_area(pos0, pos1, {"ethereal:crystalgrass"})
			if #crystal > 6 then
				local ppos = crystal[1]
				ppos.y = ppos.y - 1
				local nod = minetest.get_node(ppos).name
				ppos.y = ppos.y + 1
				if nod == "ethereal:crystal_dirt" then
					minetest.set_node(crystal[1], {name="ethereal:crystal_spike"})
				end
			end

			return
		end

		local seedling = minetest.find_nodes_in_area(pos0, pos1, {"group:soil"})

		if #seedling > 0 then
			seedling = seedling[math.random(#seedling)]
			seedling.y = seedling.y + 1
			light = minetest.get_node_light(seedling)
			if not light or light < 13 then
				return
			end
			if minetest.get_node(seedling).name == "air" then
				minetest.set_node(seedling, {name=node.name})
			end
		end
	end,
})
