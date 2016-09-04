data:extend(
{
	{
    	type = "technology",
    	name = "hydro-power",
    	icon = "__Clean_Energy__/graphics/hydro.png",
    	icon_size = 160,
    	effects =
    	{
    		{
     		   	type = "unlock-recipe",
        		recipe = "hydro-generator"
      		},
    	},
    	prerequisites = {"solar-energy", "electric-energy-accumulators-1", "electric-energy-distribution-2"},
    	unit =
    	{
      		count = 5,
      		ingredients =
      		{
        		{"science-pack-1", 10},
        		{"science-pack-2", 5},
        		{"science-pack-3", 1},
      		},
      		time = 120
    	},
    	order = "c-g-a",
		},
	{
    	type = "technology",
    	name = "geothermal-power",
    	icon = "__Clean_Energy__/graphics/thermal-research.png",
    	icon_size = 150,
    	effects =
    {
      	{
        type = "unlock-recipe",
        recipe = "geothermal-generator"
      	},
    	},
    	prerequisites = {"hydro-power", "advanced-electronics-2", "flammables", "advanced-material-processing-4"},
    	unit =
    	{
      		count = 50,
      		ingredients =
      			{
        			{"science-pack-1", 3},
        			{"science-pack-2", 2},
        			{"science-pack-3", 1},
        			{"alien-science-pack", 2},
      			},
      		time = 120
    	},
    	order = "c-g-a",
  	},
})