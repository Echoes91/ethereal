-- Clear default mapgen definitions
minetest.clear_registered_biomes()
minetest.clear_registered_decorations()
--minetest.clear_registered_ores()

-- Biomes (for 0.4.11 dev with new changes from Paramat)
if ethereal.bamboo == 1 then
minetest.register_biome({
	name			= "bamboo",
	node_top		= "ethereal:bamboo_dirt",	depth_top			= 1,
	node_filler		= "default:dirt",			depth_filler		= 5,
	y_min			= 1,						y_max				= 71,
	heat_point		= 45.0,						humidity_point		= 75.0,
})
print ("Ethereal Bamboo Enabled")
end

if ethereal.mesa == 1 then
minetest.register_biome({
	name           = "mesa",
	node_top       = "bakedclay:red",			depth_top      = 1,
	node_filler    = "bakedclay:orange",		depth_filler   = 5,
	y_min     = 2,							y_max     = 71,
	heat_point     = 25.0,						humidity_point = 28.0,
})
print ("Ethereal Mesa Enabled")
end

if ethereal.alpine == 1 then
minetest.register_biome({
	name           = "alpine",
	node_top       = "default:dirt_with_snow",	depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 2,
	y_min     = 40,						y_max     = 90,
	heat_point     = 10.0,						humidity_point = 40.0,
})
print ("Ethereal Alpine Enabled")
end

if ethereal.healing == 1 then
minetest.register_biome({
	name           = "healing",
	node_top       = "default:dirt_with_snow",	depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 2,
	y_min     = 75,						y_max     = 140,
	heat_point     = 10.0,						humidity_point = 40.0,
})
print ("Ethereal Healing Enabled")
end

if ethereal.snowy == 1 then
minetest.register_biome({
	name           = "snowy",
	node_top       = "ethereal:cold_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 2,
	y_min     = 5,							y_max     = 40,
	heat_point     = 10.0,						humidity_point = 40.0,
})
print ("Ethereal Snowy Enabled")
end

if ethereal.frost == 1 then
minetest.register_biome({
	name           = "frost",
	node_top       = "ethereal:crystal_dirt",	depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 1,							y_max     = 71,
	heat_point     = 10.0,						humidity_point = 40.0,
})
print ("Ethereal Frost Enabled")
end

if ethereal.grassy == 1 then
minetest.register_biome({
	name           = "grassy",
	node_top       = "ethereal:green_dirt", 	depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 1,							y_max     = 91,
	heat_point     = 13.0,						humidity_point = 40.0,
})
print ("Ethereal Grassy Enabled")
end

if ethereal.caves == 1 then
minetest.register_biome({
	name           = "caves",
	node_top       = "default:desert_stone",	depth_top      = 3,
	node_filler    = "air",						depth_filler   = 8,
	y_min     = 4,							y_max     = 41,
	heat_point     = 15.0,						humidity_point = 25.0,
})
print ("Ethereal Caves Enabled")
end

if ethereal.grayness == 1 then
minetest.register_biome({
	name           = "grayness",
	node_top       = "ethereal:gray_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 1,							y_max     = 41,
	heat_point     = 15.0,						humidity_point = 30.0,
})
print ("Ethereal Grayness Enabled")
end

if ethereal.grassytwo == 1 then
minetest.register_biome({
	name           = "grassytwo",
	node_top       = "ethereal:green_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 1,							y_max     = 91,
	heat_point     = 15.0,						humidity_point = 40.0,
})
print ("Ethereal GrassyTwo Enabled")
end

if ethereal.prairie == 1 then
minetest.register_biome({
	name           = "prairie",
	node_top       = "ethereal:prairie_dirt",	depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 3,							y_max     = 26,
	heat_point     = 20.0,						humidity_point = 40.0,
})
print ("Ethereal Prairie Enabled")
end

if ethereal.jumble == 1 then
minetest.register_biome({
	name           = "jumble",
	node_top       = "ethereal:green_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 1,							y_max     = 71,
	heat_point     = 25.0,						humidity_point = 50.0,
})
print ("Ethereal Jumble Enabled")
end

if ethereal.junglee == 1 then
minetest.register_biome({
	name           = "junglee",
	node_top       = "ethereal:jungle_dirt",	depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 1,							y_max     = 71,
	heat_point     = 30.0,						humidity_point = 60.0,
})
print ("Ethereal Junglee Enabled")
end

if ethereal.desert ==1 then
minetest.register_biome({
	name           = "desert",
	node_top       = "default:desert_sand",		depth_top      = 5,
	node_filler    = "default:desert_stone",	depth_filler   = 70,
	y_min     = 3,							y_max     = 23,
	heat_point     = 35.0,						humidity_point = 20.0,
})
print ("Ethereal Desert Enabled")
end

if ethereal.grove == 1 then
minetest.register_biome({
	name           = "grove",
	node_top       = "ethereal:grove_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 3,							y_max     = 23,
	heat_point     = 40.0,						humidity_point = 60.0,
})
print ("Ethereal Grove Enabled")
end

if ethereal.mushroom == 1 then
minetest.register_biome({
	name           = "mushroom",
	node_top       = "ethereal:mushroom_dirt",	depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 1,							y_max     = 50,
	heat_point     = 45.0,						humidity_point = 65.0,
})
print ("Ethereal Mushroom Enabled")
end

if ethereal.desertstone == 1 then
minetest.register_biome({
	name           = "desertstone",
	node_top       = "default:sandstone",		depth_top      = 7,
	node_filler    = "default:desert_stone",	depth_filler   = 70,
	y_min     = 3,							y_max     = 23,
	heat_point     = 50.0,						humidity_point = 20.0,
})
print ("Ethereal DesertStone Enabled")
end

if ethereal.quicksand == 1 then
minetest.register_biome({
	name			= "quicksand",
	node_top		= "ethereal:quicksand2",	depth_top = 3,
	node_filler		= "default:gravel",			depth_filler = 1,
	y_min		= 1,						y_max = 1,
	heat_point		= 50,						humidity_point = 38,
})
print ("Ethereal Quicksand Enabled")
end

if ethereal.lake == 1 then
minetest.register_biome({
	name			= "lake",
	node_top		= "default:sand",			depth_top = 2,
	node_filler		= "default:gravel",			depth_filler = 1,
	node_water		= "default:water_source",	node_dust_water= "default:water_source",
	y_min		= -31000,					y_max = 3,
	heat_point		= 50,						humidity_point = 40,
})
print ("Ethereal Lake Enabled")
end

if ethereal.plains == 1 then
minetest.register_biome({
	name           = "plains",
	node_top       = "ethereal:dry_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 3,							y_max     = 61,
	heat_point     = 55.0,						humidity_point = 25.0,
})
print ("Ethereal Plains Enabled")
end

if ethereal.fiery == 1 then
minetest.register_biome({
	name           = "fiery",
	node_top       = "ethereal:fiery_dirt",		depth_top      = 1,
	node_filler    = "default:dirt",			depth_filler   = 5,
	y_min     = 5,							y_max     = 65,
	heat_point     = 80.0,						humidity_point = 10.0,
})
print ("Ethereal Fiery Enabled")
end

if ethereal.sandclay == 1 then
minetest.register_biome({
	name           = "sandclay",
	node_top       = "default:sand",			depth_top      = 3,
	node_filler    = "default:clay",			depth_filler   = 2,
	y_min     = 1,							y_max     = 11,
	heat_point     = 65.0,						humidity_point = 2.0,
})
print ("Ethereal SandClay Enabled")
end

-- Schematics Decoration
local path = minetest.get_modpath("ethereal").."/schematics/"

minetest.register_decoration({							-- Redwood Tree
	deco_type = "schematic",
	place_on = {"bakedclay:red","bakedclay:orange"},
	sidelen = 80, -- was 16
	fill_ratio = 0.01, -- was 0.025
	biomes = {"mesa"},
	schematic = path.."redwood.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Banana Tree
	deco_type = "schematic",
	place_on = "ethereal:grove_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.015,
	biomes = {"grove"},
	schematic = path.."bananatree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Healing Tree
	deco_type = "schematic",
	place_on = "default:dirt_with_snow",
	sidelen = 80, -- was 16
	fill_ratio = 0.04,
	biomes = {"healing"},
	schematic = path.."yellowtree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Frost Tree
	deco_type = "schematic",
	place_on = "ethereal:crystal_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.010,
	biomes = {"frost"},
	schematic = path.."frosttrees.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Giant Mushroom
	deco_type = "schematic",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.070,
	biomes = {"mushroom"},
	schematic = path.."mushroomone.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Small Lava Crater
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.012,
	biomes = {"fiery"},
	schematic = path.."volcanom.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Large Lava Crater
	deco_type = "schematic",
	place_on = "ethereal:fiery_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.010,
	biomes = {"fiery"},
	schematic = path.."volcanol.mts",
	flags = "place_center_x, place_center_z",
--	replacements = {{"default:stone", "default:desert_stone"}},
})

minetest.register_decoration({							-- Jungle Tree
	deco_type = "schematic",
	place_on = "ethereal:jungle_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.3, -- was 0.250
	biomes = {"junglee"},
	schematic = path.."jungletree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Willow Tree
	deco_type = "schematic",
	place_on = "ethereal:gray_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.025,
	biomes = {"grayness"},
	schematic = path.."willow.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Pine Tree
	deco_type = "schematic",
	place_on = {"ethereal:cold_dirt", "default:dirt_with_snow"},
	sidelen = 80, -- was 16
	fill_ratio = 0.025,
	biomes = {"snowy", "alpine"},
	schematic = path.."pinetree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Apple Tree
	deco_type = "schematic",
	place_on = "ethereal:green_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.030,
	biomes = {"grassy, jumble"},
	schematic = path.."tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"ethereal:green_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.005,
	biomes = {"grassytwo"},
	schematic = path.."tree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Orange Tree
	deco_type = "schematic",
	place_on = {"ethereal:prairie_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.005,
	biomes = {"prairie"},
	schematic = path.."orangetree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Acacia Tree
	deco_type = "schematic",
	place_on = {"default:desert_sand"},
	sidelen = 80, -- was 16
	fill_ratio = 0.004,
	biomes = {"desert"},
	schematic = path.."acaciatree.mts",
	flags = "place_center_x, place_center_z",
})

minetest.register_decoration({							-- Big Old Tree
	deco_type = "schematic",
	place_on = "ethereal:green_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.010,
	biomes = {"grassytwo"},
	schematic = path.."bigtree.mts",
	flags = "place_center_x, place_center_z",
})

-- Simple Decoration
minetest.register_decoration({							-- Scorched Tree
	deco_type = "simple",
	place_on = "ethereal:dry_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.006,
	biomes = {"plains"},
	decoration = "ethereal:scorched_tree",
	height_max = 6,
})

minetest.register_decoration({							-- Bamboo Stalks
	deco_type = "simple",
	place_on = "ethereal:bamboo_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.055,
	biomes = {"bamboo"},
	decoration = "ethereal:bamboo",
	height_max = 5,
})

minetest.register_decoration({							-- Bamboo Sprouts & Grass
	deco_type = "simple",
	place_on = "ethereal:bamboo_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.25,
	biomes = {"bamboo"},
	decoration = {"ethereal:bamboo_sprout", "default:grass_2", "default:grass_3"},
})

minetest.register_decoration({							-- Dry Shrub
	deco_type = "simple",
	place_on = {"ethereal:dry_dirt", "default:sand", "default:desert_sand", "sandstone", "bakedclay:red"},
	sidelen = 80, -- was 16
	fill_ratio = 0.015,
	biomes = {"plains", "lake", "desert", "desertstone", "mesa"},
	decoration = "default:dry_shrub",
})

minetest.register_decoration({							-- Flowers & Strawberry
	deco_type = "simple",
	place_on = "ethereal:green_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.030,
	biomes = {"grassy", "grassy", "grassytwo"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola", "ethereal:strawberry_7"},
})

minetest.register_decoration({							-- Prairie Flowers & Strawberry
	deco_type = "simple",
	place_on = "ethereal:prairie_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.050,
	biomes = {"prairie"},
	decoration = {"flowers:dandelion_white", "flowers:dandelion_yellow", "flowers:geranium", "flowers:rose", "flowers:tulip", "flowers:viola", "ethereal:strawberry_7"},
})

minetest.register_decoration({							-- Crystal Spike & Crystal Grass
	deco_type = "simple",
	place_on = "ethereal:crystal_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.02,
	biomes = {"frost"},
	decoration = {"ethereal:crystal_spike", "ethereal:crystalgrass"},
})

minetest.register_decoration({							-- Red Shrub
	deco_type = "simple",
	place_on = "ethereal:fiery_dirt", 
	sidelen = 80, -- was 16
	fill_ratio = 0.20,
	biomes = {"fiery"},
	decoration = "ethereal:dry_shrub",
})

minetest.register_decoration({							-- Snowy Grass
	deco_type = "simple",
	place_on = {"ethereal:gray_dirt", "ethereal:cold_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.05,
	biomes = {"grayness", "snowy"},
	decoration = "ethereal:snowygrass",
})

minetest.register_decoration({							-- Cactus
	deco_type = "simple",
	place_on = "default:sandstone",
	sidelen = 80, -- was 16
	fill_ratio = 0.010,
	biomes = {"desertstone"},
	decoration = "default:cactus",
	height_max = 3,
})

minetest.register_decoration({							-- Cactus
	deco_type = "simple",
	place_on = "default:desert_sand",
	sidelen = 80, -- was 16
	fill_ratio = 0.010,
	biomes = {"desert"},
	decoration = "default:cactus",
	height_max = 4,
})

minetest.register_decoration({							-- Wild Mushroom
	deco_type = "simple",
	place_on = "ethereal:mushroom_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.015,
	biomes = {"mushroom"},
	decoration = "ethereal:mushroom_plant",
})

minetest.register_decoration({							-- Jungle Grass
	deco_type = "simple",
	place_on = {"ethereal:jungle_dirt", "ethereal:green_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.18,
	biomes = {"junglee", "jumble"},
	decoration = "default:junglegrass",
})

minetest.register_decoration({							-- Grass
	deco_type = "simple",
	place_on = {"ethereal:green_dirt_top", "ethereal:jungle_dirt", "ethereal:prairie_dirt", "ethereal:grove_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.40, -- was 0.50
	biomes = {"grassy", "grassytwo", "jumble", "junglee", "prairie", "grove"},
	decoration = "default:grass_2", "default:grass_3", "default:grass_4", "default:grass_5",
})

minetest.register_decoration({							-- Ferns
	deco_type = "simple",
	place_on = "ethereal:grove_dirt",
	sidelen = 80, -- was 16
	fill_ratio = 0.20,
	biomes = {"grove"},
	decoration = "ethereal:fern",
})

minetest.register_decoration({							-- Snow
	deco_type = "simple",
	place_on = {"ethereal:cold_dirt", "default:dirt_with_snow"},
	sidelen = 80, -- was 16
	fill_ratio = 0.80,
	biomes = {"snowy", "alpine"},
	decoration = "default:snow",
})

minetest.register_decoration({							-- Wild Onion
	deco_type = "simple",
	place_on = {"ethereal:green_dirt", "ethereal:prairie_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.25, -- was 0.35
	biomes = {"grassy", "grassytwo", "jumble", "prairie"},
	decoration = "ethereal:onion_4",
})

minetest.register_decoration({							-- Papyrus
	deco_type = "simple",
	place_on = {"ethereal:green_dirt", "ethereal:jungle_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.1,
	biomes = {"grassy", "junglee"},
	decoration = "default:papyrus",
	height_max = 4,
	spawn_by = "default:water_source",
	num_spawn_by = 1,
})

-- Palm Tree on Sand next to Water
minetest.register_on_generated(function(minp, maxp, seed)
	--if maxp.y >= 2 and minp.y <= 0 then -- orig
	if maxp.y > 1 and minp.y < 1 then -- new
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
					minetest.place_schematic({x=x-4,y=2,z=z-4}, path.."palmtree.mts", 0, '', 0)
				end
			end
		end
	end
end)

-- Farming Redo Plants
if minetest.get_modpath("farming") and farming.mod == "redo" then

minetest.register_decoration({						-- Potato
	deco_type = "simple",
	place_on = {"ethereal:jungle_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.035,
	biomes = {"junglee"},
	decoration = "farming:potato_3",
})

minetest.register_decoration({						-- Carrot, Cucumber, Potato, Tomato, Corn, Coffee, Raspberry, Rhubarb
	deco_type = "simple",
	place_on = {"ethereal:green_dirt", "ethereal:prairie_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.05,
	biomes = {"grassy", "grassytwo", "prairie", "jumble"},
	decoration = {"farming:carrot_7", "farming:cucumber_4", "farming:potato_3", "farming:tomato_7", "farming:corn_8", "farming:coffee_5", "farming:raspberry_4", "farming:rhubarb_3", "farming:blueberry_4"},
})

minetest.register_decoration({						-- Melon, Pumpkin
	deco_type = "simple",
	place_on = {"ethereal:green_dirt", "ethereal:jungle_dirt"},
	sidelen = 80, -- was 16
	fill_ratio = 0.015,
	biomes = {"grassy", "grassytwo", "junglee", "jumble"},
	decoration = {"farming:melon_8", "farming:pumpkin_8"},
	spawn_by = "default:water_source",
	num_spawn_by = 1,
})

end
