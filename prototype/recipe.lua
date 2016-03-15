data:extend({
{
	type = "recipe",
   	name = "hydro-generator",
   	energy_required = 10,
   	enabled = "false",
   	ingredients =
   	{
     	{"processing-unit", 5},
     	{"steel-plate", 25},
  		{"copper-cable", 15},
  		{"iron-gear-wheel", 10},
  		{"pipe", 16}
   	},
   	result = "hydro-generator"
 },
 	{
 	type = "recipe",
   	name = "geothermal-generator",
   	energy_required = 20,
   	enabled = "false",
   	ingredients =
   	{
     	{"basic-mining-drill", 1},
     	{"steel-plate", 30},
  		{"processing-unit", 15},
  		{"pipe", 8},
  		{"storage-tank", 2},
  		{"small-pump", 4}
   	},
   	result = "geothermal-generator"
 },
})