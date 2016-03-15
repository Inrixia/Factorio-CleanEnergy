data:extend({
	{
		type = "item",
		name = "hydro-generator",
		icon = "__Clean_Energy__/graphics/hydro-icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy",	
		order = "b[steam-power]-c[hydro-generator]",		
		place_result = "hydro-generator",
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