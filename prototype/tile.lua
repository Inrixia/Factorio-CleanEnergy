data:extend(
  {
    {
      type = "tile",
      name = "New-Concrete-path",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "concrete"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.4,
      layer = 62,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__base__/graphics/terrain/concrete/concrete1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__base__/graphics/terrain/concrete/concrete2.png",
            count = 4,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__base__/graphics/terrain/concrete/concrete4.png",
            count = 4,
            size = 4,
            probability = 1,
          },
        },
        inner_corner =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__base__/graphics/terrain/concrete/concrete-o.png",
          count = 1
        }
      },
      walking_sound =
      {
        {
          filename = "__base__/sound/walking/concrete-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=200, g=200, b=200},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
    }
  })