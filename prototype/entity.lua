data:extend
({
  {
  type = "generator",
  name = "hydro-generator",
  icon = "__Clean_Energy__/graphics/hydro.png",
  flags = {"placeable-neutral", "player-creation"},
  collision_mask = {"object-layer", "ground-tile"},
  minable = {mining_time = 1, result = "hydro-generator"},
  max_health = 300,
  corpse = "big-remnants",
  dying_explosion = "medium-explosion",
  effectivity = 1,
  fluid_usage_per_tick = 0.03,
  resistances =
  {
  },
  collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  fluid_box =
  {
    base_area = 1,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
    },
  },
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-output"
  },
  horizontal_animation =
  {
    filename = "__Clean_Energy__/graphics/hydro.png",
    width = 96,
    height = 96,
    frame_count = 1,
    line_length = 1,
  },
  vertical_animation =
  {
    filename = "__Clean_Energy__/graphics/hydro.png",
    width = 96,
    height = 96,
    frame_count = 1,
    line_length = 1,
  },
  smoke =
  {
    {
      name = "light-smoke",
      north_position = {0.9, 0.0},
      east_position = {-2.0, -2.0},
      frequency = 10 / 32,
      starting_vertical_speed = 0.08,
      slow_down_factor = 1,
      starting_frame_deviation = 60
    }
  },
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/idle1.ogg",
      volume = 0.6
    },
    match_speed_to_activity = true,
  },
  min_perceived_performance = 0.25,
  performance_to_sound_speedup = 0.5
  },
  
  {
  type = "generator",
  name = "geothermal-generator",
  icon = "__Clean_Energy__/graphics/thermal-icon.png",
  flags = {"placeable-neutral", "player-creation"},
  collision_mask = {"object-layer", "player-layer", "water-tile", "item-layer",},
  minable = {mining_time = 1, result = "geothermal-generator"},
  max_health = 300,
  corpse = "big-remnants",
  dying_explosion = "big-explosion",
  effectivity = 1,
  fluid_usage_per_tick = 0.1,
  resistances =
  {
  },
  collision_box = {{-1.5, -2.35}, {1.5, 2.35}},
  selection_box = {{-1.5, -2.5}, {1.5, 1.5}},
  fluid_box =
  {
    base_area = 1,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
      { position = {0, -3} },
    },
  },
  energy_source =
  {
    type = "electric",
    usage_priority = "secondary-output"
  },
  horizontal_animation =
  {
	filename = "__Clean_Energy__/graphics/thermal.png",
   	width = 128,
   	height = 150,
   	frame_count = 1,
   	line_length = 1,
   	shift = {0.55, -0.33}
  },
  vertical_animation =
  {
	filename = "__Clean_Energy__/graphics/thermal.png",
   	width = 128,
   	height = 150,
   	frame_count = 1,
   	line_length = 1,
   	shift = {0.55, -0.33}
  },
  smoke =
  {
    {
      name = "light-smoke",
      north_position = {0, -1.7},
      east_position = {-1.0, -1.0},
      frequency = 1,
      starting_vertical_speed = 0.08,
      slow_down_factor = 1,
      starting_frame_deviation = 60,
    }
  },
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  working_sound =
  {
    sound =
    {
      filename = "__base__/sound/electric-furnace.ogg",
      volume = 0.6
    },
    match_speed_to_activity = true,
  },
  min_perceived_performance = 0.25,
  performance_to_sound_speedup = 0.5
},

{
	type = "fluid",
	name = "superheated-steam",
	default_temperature = 0,
	max_temperature = 100,
	heat_capacity = "1KJ",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__base__/graphics/icons/fluid/water.png",
    order = "a[fluid]-z[superheated-steam]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
})