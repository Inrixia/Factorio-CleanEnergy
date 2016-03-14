data:extend(
{
  {
    type = "noise-layer",
    name = "superheated-steam"
  },
  {
    type = "autoplace-control",
    name = "superheated-steam",
    richness = true,
    order = "b-a"
  },
  {
    type = "resource",
    name = "superheated-steam",
    icon = "__Clean_Energy__/graphics/geothermal-deposit.png",
    flags = {"placeable-neutral"},
    category = "basic-fluid",
    order="a-b-a",
    infinite = true,
    minimum = 750,
    normal = 7500,
    minable =
    {
      hardness = 0,
      mining_time = 0,
      results =
      {
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "superheated-steam",
      sharpness = 1,
      max_probability = 0.04,
      richness_multiplier = 150000,
      richness_base = 5000,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.105,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.67,
          noise_layer = "superheated-steam",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__Clean_Energy__/graphics/geothermal-deposit.png",
        priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=0.8, g=0.1, b=0.8},
    map_grid = false
  }
})
