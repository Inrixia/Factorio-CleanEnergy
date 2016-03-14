data:extend(
{
  {
    type = "technology",
    name = "tidal-power",
    icon = "__Clean_Energy__/graphics/tidal-generator-research.png",
    icon_size = 160,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tidal-generator"
      },
    },
    prerequisites = {"steel-processing"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 15},
        {"science-pack-2", 10},
        {"science-pack-3", 5},
      },
      time = 30
    },
    order = "c-g-a",
  },
})