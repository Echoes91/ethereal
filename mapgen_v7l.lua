-- Disable Ridges (NOTE: changed sidelen from 16 to 80 in all decoration)
minetest.register_on_mapgen_init(function(mapgen_params)
   mapgen_params.flags = "nov7_ridges"
   minetest.set_mapgen_params(mapgen_params)
end)

-- Warm Biome
minetest.register_biome({
	name           = "clay",
	node_top       = "default:sand",			depth_top      = 3,
	node_filler    = "default:clay",			depth_filler   = 2,
	height_min     = 1,							height_max     = 11,
	heat_point     = 65.0,						humidity_point = 2.0,
})

minetest.register_biome({
	name = "lake",
	node_top = "default:sand",					depth_top = 2,
	node_filler = "default:gravel",				depth_filler = 1,
	node_water = "default:water_source",		node_dust_water= "default:water_source",
	height_min = -31000,						height_max = 3,
	heat_point = 50,							humidity_point = 40,
})

minetest.register_biome({
	name = "quicksand",
	node_top = "ethereal:quicksand2",		depth_top = 3,
	node_filler = "default:gravel",			depth_filler = 1,
	height_min = 1,							height_max = 1,
	heat_point = 50,						humidity_point = 38,
})

minetest.register_biome({
	name           = "grass",
	node_top       = "ethereal:green_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 3,
	height_min     = 1,							height_max     = 20,
	heat_point     = 10.0,						humidity_point = 40.0,
})

minetest.register_biome({
	name           = "prairie",
	node_top       = "ethereal:prairie_dirt",	depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 3,
	height_min     = 21,						height_max     = 40,
	heat_point     = 10.0,						humidity_point = 40.0,
})

minetest.register_biome({
	name           = "cold",
	node_top       = "ethereal:cold_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 3,
	height_min     = 41,						height_max     = 60,
	heat_point     = 10.0,						humidity_point = 40.0,
})

minetest.register_biome({
	name           = "snow",
	node_top       = "default:dirt_with_snow",	depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 3,
	height_min     = 61,						height_max     = 80,
	heat_point     = 10.0,						humidity_point = 40.0,
})

minetest.register_biome({
	name           = "alpine",
	node_top       = "default:snowblock", 		depth_top      = 1,
	node_filler    = "default:dirt_with_snow",	depth_filler   = 1,
	height_min     = 81,						height_max     = 120,
	heat_point     = 10.0,						humidity_point = 40.0,
})

-- Cold Biome
minetest.register_biome({
	name           = "ice",
	node_top       = "default:ice",						depth_top      = 1,
	node_filler    = "default:water_source",			depth_filler   = 1,
	height_min     = 1,									height_max     = 1,
	heat_point     = 5.0,								humidity_point = 30.0,
})

minetest.register_biome({
	name           = "gray",
	node_top       = "ethereal:gray_dirt	",			depth_top      = 1,
	node_filler    = "default:dirt",					depth_filler   = 3,
	height_min     = 1,									height_max     = 30,
	heat_point     = 15.0,								humidity_point = 30.0,
})

minetest.register_biome({
	name           = "frost",
	node_top       = "ethereal:crystal_dirt",			depth_top      = 1,
	node_filler    = "default:dirt",					depth_filler   = 3,
	height_min     = 31,								height_max     = 60,
	heat_point     = 15.0,								humidity_point = 30.0,
})

minetest.register_biome({
	name           = "cold2",
	node_top       = "ethereal:cold_dirt",				depth_top      = 1,
	node_filler    = "default:dirt",					depth_filler   = 3,
	height_min     = 61,								height_max     = 90,
	heat_point     = 15.0,								humidity_point = 30.0,
})

minetest.register_biome({
	name           = "healing",
	node_top       = "default:dirt_with_snow",			depth_top      = 1,
	node_filler    = "default:dirt",					depth_filler   = 3,
	height_min     = 91,								height_max     = 120,
	heat_point     = 15.0,								humidity_point = 30.0,
})

-- Humid Biome
minetest.register_biome({
	name           = "jungle",	
	node_top       = "ethereal:jungle_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",				depth_filler   = 3,
	height_min     = 1,								height_max     = 20,
	heat_point     = 40.0,							humidity_point = 60.0,
})

minetest.register_biome({
	name           = "bamboo",
	node_top       = "ethereal:bamboo_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",				depth_filler   = 3,
	height_min     = 21,							height_max     = 40,
	heat_point     = 40.0,							humidity_point = 60.0,
})

minetest.register_biome({
	name           = "mushroom",
	node_top       = "ethereal:mushroom_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",				depth_filler   = 3,
	height_min     = 41,							height_max     = 60,
	heat_point     = 40.0,							humidity_point = 60.0,
})

minetest.register_biome({
	name           = "grove",
	node_top       = "ethereal:grove_dirt",			depth_top      = 1,
	node_filler    = "default:dirt",				depth_filler   = 3,
	height_min     = 61,							height_max     = 100,
	heat_point     = 40.0,							humidity_point = 60.0,
})

-- Hot Biomes
minetest.register_biome({
	name           = "plains",
	node_top       = "ethereal:dry_dirt",			depth_top      = 1,
	node_filler    = "default:dirt",				depth_filler   = 3,
	height_min     = 4,								height_max     = 36,
	heat_point     = 59.0,							humidity_point = 25.0,
})

minetest.register_biome({
	name           = "fiery",
	node_top       = "ethereal:fiery_dirt",			depth_top      = 1,
	node_filler    = "default:dirt",				depth_filler   = 3,
	height_min     = 16,							height_max     = 35,
	heat_point     = 60.0,							humidity_point = 25.0,
})

minetest.register_biome({
	name           = "desertstone",
	node_top       = "default:sandstone",			depth_top      = 3,
	node_filler    = "default:desert_stone",		depth_filler   = 70,
	height_min     = 36,							height_max     = 50,
	heat_point     = 60.0,							humidity_point = 25.0,
})

minetest.register_biome({
	name           = "desert",
	node_top       = "default:desert_sand",			depth_top      = 5,
	node_filler    = "default:desert_stone",		depth_filler   = 70,
	height_min     = 51,							height_max     = 80,
	heat_point     = 60.0,							humidity_point = 25.0,
})

-- Caves and Mesa
minetest.register_biome({
	name           = "mesa",
	node_top       = "bakedclay:red",				depth_top      = 1,
	node_filler    = "bakedclay:orange",			depth_filler   = 5,
	height_min     = 1,								height_max     = 40,
	heat_point     = 15.0,							humidity_point = 20.0,
})

minetest.register_biome({
	name           = "caves",
	node_top       = "default:desert_stone",		depth_top      = 3,
	node_filler    = "air",							depth_filler   = 8,
	height_min     = 41,							height_max     = 60,
	heat_point     = 15.0,							humidity_point = 20.0,
})

-- Schematics
local path = minetest.get_modpath("ethereal").."/schematics/"

minetest.register_decoration({					-- Acacia Tree
	deco_type = "schematic",
	place_on = {"default:desert_sand"},
	sidelen = 16,
	fill_ratio = 0.004,
	biomes = {"desert"},
	schematic = path.."acaciatree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Redwood Tree
	deco_type = "schematic",
	place_on = {"bakedclay:red","bakedclay:orange"},
	sidelen = 80,
	fill_ratio = 0.025,
	biomes = {"mesa"},
	schematic = path.."redwood.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Pine Tree
	deco_type = "schematic",
	place_on = {"ethereal:cold_dirt", "default:dirt_with_snow"},
	sidelen = 80,
	fill_ratio = 0.025,
	biomes = {"snow", "cold", "cold2"},
	schematic = path.."pinetree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Apple Tree
	deco_type = "schematic",
	place_on = "ethereal:green_dirt",
	sidelen = 80,
	fill_ratio = 0.030,
	biomes = {"grass"},
	schematic = path.."tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Orange Tree
	deco_type = "schematic",
	place_on = {"ethereal:prairie_dirt"},
	sidelen = 80,
	fill_ratio = 0.005,
	biomes = {"prairie"},
	schematic = path.."orangetree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Big Old Tree
	deco_type = "schematic",
	place_on = "ethereal:green_dirt",
	sidelen = 80,
	fill_ratio = 0.010,
	biomes = {"grass"},
	schematic = path.."bigtree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Willow Tree
	deco_type = "schematic",
	place_on = "ethereal:gray_dirt",
	sidelen = 80,
	fill_ratio = 0.025,
	biomes = {"gray"},
	schematic = path.."willow.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Healing Tree
	deco_type = "schematic",
	place_on = "default:dirt_with_snow",
	sidelen = 80,
	fill_ratio = 0.04,
	biomes = {"healing"},
	schematic = path.."yellowtree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Frost Tree
	deco_type = "schematic",
	place_on = "ethereal:crystal_dirt",
	sidelen = 80,
	fill_ratio = 0.010,
	biomes = {"frost"},
	schematic = path.."frosttrees.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Jungle Tree
	deco_type = "schematic",
	place_on = "ethereal:jungle_dirt",
	sidelen = 80,
	fill_ratio = 0.3,
	biomes = {"jungle"},
	schematic = path.."jungletree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Banana Tree
	deco_type = "schematic",
	place_on = "ethereal:grove_dirt",
	sidelen = 80,
	fill_ratio = 0.015,
	biomes = {"grove"},
	schematic = path.."bananatree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Giant Mushroom
	deco_type = "schematic",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 80,
	fill_ratio = 0.070,
	biomes = {"mushroom"},
	schematic = path.."mushroomone.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Small Lava Crater
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt",
	sidelen = 80,
	fill_ratio = 0.012,
	biomes = {"fiery"},
	schematic = path.."volcanom.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({					-- Large Lava Crater
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt",
	sidelen = 80,
	fill_ratio = 0.010,
	biomes = {"fiery"},
	schematic = path.."volcanol.mts",
	flags = "place_center_x, place_center_z",
--	replacements = {{"default:stone", "default:desert_stone"}},
})

minetest.register_decoration({					-- Scorched Tree
	deco_type = "simple",
	place_on = "ethereal:dry_dirt",
	sidelen = 80,
	fill_ratio = 0.006,
	biomes = {"plains", "plains2"},
	decoration = "ethereal:scorched_tree",
	height_max = 6,
})

-- Decoration
minetest.register_decoration({					-- Bamboo Stalks
	deco_type = "simple",
	place_on = "ethereal:bamboo_dirt",
	sidelen = 80,
	fill_ratio = 0.055,
	biomes = {"bamboo"},
	decoration = "ethereal:bamboo",
	height_max = 5,
})

minetest.register_decoration({					-- Bamboo Sprouts and Grass for filler
	deco_type = "simple",
	place_on = "ethereal:bamboo_dirt",
	sidelen = 80,
	fill_ratio = 0.25,
	biomes = {"bamboo"},
	decoration = {"ethereal:bamboo_sprout", "default:grass_2", "default:grass_3"},
})

minetest.register_decoration({					-- Dry Shrub
	deco_type = "simple",
	place_on = {"default:sand", "bakedclay:red"},
	sidelen = 80,
	fill_ratio = 0.015,
	biomes = {"lake", "clay", "mesa"},
	decoration = "default:dry_shrub",
})

minetest.register_decoration({					-- Grass
	deco_type = "simple",
	place_on = {"ethereal:green_dirt", "ethereal:prairie_dirt", "ethereal:jungle_dirt", "ethereal:grove_dirt"},
	sidelen = 80,
	fill_ratio = 0.40,
	biomes = {"grass", "prairie", "cold", "cold2", "jungle", "grove"},
	decoration = "default:grass_2", "default:grass_3", "default:grass_4", "default:grass_5",
})

minetest.register_decoration({					-- Flowers
	deco_type = "simple",
	place_on = "ethereal:green_dirt",
	sidelen = 80,
	fill_ratio = 0.030,
	biomes = {"grass"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola"},
})

minetest.register_decoration({					-- Flowers & Strawberry
	deco_type = "simple",
	place_on = "ethereal:prairie_dirt",
	sidelen = 80,
	fill_ratio = 0.050,
	biomes = {"prairie"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola", "ethereal:strawberry_7"},
})

minetest.register_decoration({					-- Wild Onions
	deco_type = "simple",
	place_on = {"ethereal:green_dirt", "ethereal:prairie_dirt"},
	sidelen = 80,
	fill_ratio = 0.25,
	biomes = {"grass", "prairie"},
	decoration = "ethereal:onion_4",
})

minetest.register_decoration({					-- Snowy Grass
	deco_type = "simple",
	place_on = {"ethereal:cold_dirt", "default:dirt_with_snow", "ethereal:gray_dirt_top"},
	sidelen = 80,
	fill_ratio = 0.05,
	biomes = {"cold", "cold2", "snow", "gray"},
	decoration = "ethereal:snowygrass",
})

minetest.register_decoration({					-- Snow
	deco_type = "simple",
	place_on = {"ethereal:cold_dirt", "default:dirt_with_snow", "default:snowblock"},
	sidelen = 80,
	fill_ratio = 0.80,
	biomes = {"cold", "cold2", "snow", "alpine"},
	decoration = "default:snow",
})

minetest.register_decoration({					-- Crystal Spike & Grass
	deco_type = "simple",
	place_on = "ethereal:crystal_dirt",
	sidelen = 80,
	fill_ratio = 0.02,
	biomes = {"frost"},
	decoration = {"ethereal:crystal_spike", "ethereal:crystalgrass"},
})

minetest.register_decoration({					-- Wild Mushroom
	deco_type = "simple",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 80,
	fill_ratio = 0.015,
	biomes = {"mushroom"},
	decoration = "ethereal:mushroom_plant",
})

minetest.register_decoration({					-- Jungle Grass
	deco_type = "simple",
	place_on = {"ethereal:jungle_dirt"},
	sidelen = 80,
	fill_ratio = 0.18,
	biomes = {"jungle"},
	decoration = "default:junglegrass",
})

minetest.register_decoration({					-- Ferns
	deco_type = "simple",
	place_on = "ethereal:grove_dirt",
	sidelen = 80,
	fill_ratio = 0.20,
	biomes = {"grove"},
	decoration = "ethereal:fern",
})

minetest.register_decoration({					-- Red Shrub
	deco_type = "simple",
	place_on = "ethereal:fiery_dirt", 
	sidelen = 80,
	fill_ratio = 0.20,
	biomes = {"fiery"},
	decoration = "ethereal:dry_shrub",
})

minetest.register_decoration({					-- Cactus
	deco_type = "simple",
	place_on = "default:sandstone",
	sidelen = 80,
	fill_ratio = 0.010,
	biomes = {"desertstone"},
	decoration = "default:cactus",
	height_max = 3,
})

minetest.register_decoration({					-- Papyrus
	deco_type = "simple",
	place_on = {"ethereal:green_dirt", "ethereal:jungle_dirt"},
	sidelen = 16,
	fill_ratio = 0.1,
	biomes = {"grass", "jungle"},
	decoration = "default:papyrus",
	height_max = 4,
	spawn_by = "default:water_source",
	num_spawn_by = 1,
})

-- Palm Tree on Sand near Water
minetest.register_on_generated(function(minp, maxp, seed)
	if maxp.y >= 2 and minp.y <= 0 then
		local perlin1 = minetest.get_perlin(354, 3, 0.7, 100)
		-- Assume X and Z lengths are equal
		local divlen = 8
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)
			-- Find random positions for palm based on this random
			local pr = PseudoRandom(seed+1)
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				if minetest.get_node({x=x,y=1,z=z}).name == "default:sand" and
					minetest.find_node_near({x=x,y=1,z=z}, 1, "default:water_source") then
					schematic = path.."palmtree.mts"
					minetest.place_schematic({x=x-4,y=2,z=z-4}, schematic, 0, "", 0)
				end
			end
		end
	end
end)

-- Farming Redo Plants
if minetest.get_modpath("farming") and farming.mod == "redo" then

minetest.register_decoration({					-- Potato
	deco_type = "simple",
	place_on = {"ethereal:jungle_dirt"},
	sidelen = 80,
	fill_ratio = 0.045,
	biomes = {"jungle"},
	decoration = "farming:potato_3",
})

minetest.register_decoration({					-- Carrot, Cucumber, Potato, Tomato, Corn, Coffee, Raspberry, Rhubarb
	deco_type = "simple",
	place_on = {"ethereal:green_dirt", "ethereal:prairie_dirt"},
	sidelen = 80,
	fill_ratio = 0.05,
	biomes = {"grass", "prairie"},
	decoration = {"farming:carrot_7", "farming:cucumber_4", "farming:potato_3", "farming:tomato_7", "farming:corn_8", "farming:coffee_5", "farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4"},
})

minetest.register_decoration({					-- Melon, Pumpkin
	deco_type = "simple",
	place_on = {"default:green_dirt", "ethereal:jungle_dirt"},
	sidelen = 80,
	fill_ratio = 0.015,
	biomes = {"grass", "jungle"},
	decoration = {"farming:melon_8", "farming:pumpkin_8"},
	spawn_by = "default:water_source",
	num_spawn_by = 1,
})

end
