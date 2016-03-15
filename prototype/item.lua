data:extend({
	{
		type = "item",
		name = "tidal-generator",
		icon = "__Clean_Energy__/graphics/tidal.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy",	
		order = "b[steam-power]-c[tidal-generator]",		
		place_result = "tidal-generator",
		stack_size = 24,
	},
	{
		type = "item",
		name = "geothermal-generator",
		icon = "__Clean_Energy__/graphics/thermal-icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy",	
		order = "b[steam-power]-d[geothermal-generator]",		
		place_result = "geothermal-generator",
		stack_size = 24,
	},
})