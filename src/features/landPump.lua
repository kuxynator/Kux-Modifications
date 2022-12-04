if settings.startup["Kux-Modifications-EnableOffshorePumpOnLand"].value then
	--print("=== offshore-pump ==============================================================\n"..serpent.block(data.raw["offshore-pump"]["offshore-pump"]))
	-- copy from PlacePump
	data.raw["offshore-pump"]["offshore-pump"].placeable_position_visualization = nil
	data.raw["offshore-pump"]["offshore-pump"].flags = {"placeable-neutral", "player-creation"}
	data.raw["offshore-pump"]["offshore-pump"].adjacent_tile_collision_test = { "water-tile", "ground-tile", "floor-layer" }
	data.raw["offshore-pump"]["offshore-pump"].adjacent_tile_collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"}
	data.raw["offshore-pump"]["offshore-pump"].fluid_box_tile_collision_test = { "water-tile", "ground-tile", "floor-layer" }
	--TODO placeable like original (water/land)
end

--[[
{
  adjacent_tile_collision_box = {
    {
      -1,
      -2
    },
    {
      1,
      -1
    }
  },
  adjacent_tile_collision_mask = {
    "ground-tile"
  },
  adjacent_tile_collision_test = {
    "water-tile"
  },
  always_draw_fluid = true,
  center_collision_mask = {
    "water-tile",
    "object-layer",
    "player-layer"
  },
  circuit_connector_sprites = {
    {
      blue_led_light_offset = {
        -0.703125,
        -0.09375
      },
      connector_main = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
        height = 50,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.5,
          -0.234375
        },
        width = 52,
        x = 0,
        y = 150
      },
      led_blue = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
        height = 60,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.5,
          -0.265625
        },
        width = 60,
        x = 0,
        y = 180
      },
      led_blue_off = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
        height = 44,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.5,
          -0.265625
        },
        width = 46,
        x = 0,
        y = 132
      },
      led_green = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.5,
          -0.265625
        },
        width = 48,
        x = 0,
        y = 138
      },
      led_light = {
        intensity = 0,
        size = 0.9
      },
      led_red = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.5,
          -0.265625
        },
        width = 48,
        x = 0,
        y = 138
      },
      red_green_led_light_offset = {
        -0.6875,
        -0.203125
      },
      wire_pins = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
        height = 58,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.5,
          -0.265625
        },
        width = 62,
        x = 0,
        y = 174
      },
      wire_pins_shadow = {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
        height = 54,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.34375,
          -0.140625
        },
        width = 70,
        x = 0,
        y = 162
      }
    },
    {
      blue_led_light_offset = {
        -0.1875,
        0.4375
      },
      connector_main = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
        height = 50,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.21875,
          0.171875
        },
        width = 52,
        x = 104,
        y = 150
      },
      connector_shadow = {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04b-base-shadow-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.078125,
          0.53125
        },
        width = 62,
        x = 124,
        y = 138
      },
      led_blue = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
        height = 60,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.21875,
          0.140625
        },
        width = 60,
        x = 120,
        y = 180
      },
      led_blue_off = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
        height = 44,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.21875,
          0.140625
        },
        width = 46,
        x = 92,
        y = 132
      },
      led_green = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.21875,
          0.140625
        },
        width = 48,
        x = 96,
        y = 138
      },
      led_light = {
        intensity = 0,
        size = 0.9
      },
      led_red = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.21875,
          0.140625
        },
        width = 48,
        x = 96,
        y = 138
      },
      red_green_led_light_offset = {
        -0.203125,
        0.328125
      },
      wire_pins = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
        height = 58,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.21875,
          0.140625
        },
        width = 62,
        x = 124,
        y = 174
      },
      wire_pins_shadow = {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
        height = 54,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.0625,
          0.265625
        },
        width = 70,
        x = 140,
        y = 162
      }
    },
    {
      blue_led_light_offset = {
        -0.703125,
        -0.09375
      },
      connector_main = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
        height = 50,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.421875,
          -0.140625
        },
        width = 52,
        x = 0,
        y = 100
      },
      led_blue = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
        height = 60,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.421875,
          -0.171875
        },
        width = 60,
        x = 0,
        y = 120
      },
      led_blue_off = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
        height = 44,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.421875,
          -0.171875
        },
        width = 46,
        x = 0,
        y = 88
      },
      led_green = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.421875,
          -0.171875
        },
        width = 48,
        x = 0,
        y = 92
      },
      led_light = {
        intensity = 0,
        size = 0.9
      },
      led_red = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.421875,
          -0.171875
        },
        width = 48,
        x = 0,
        y = 92
      },
      red_green_led_light_offset = {
        -0.625,
        -0.1875
      },
      wire_pins = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
        height = 58,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.421875,
          -0.171875
        },
        width = 62,
        x = 0,
        y = 116
      },
      wire_pins_shadow = {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
        height = 54,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.265625,
          -0.046875
        },
        width = 70,
        x = 0,
        y = 108
      }
    },
    {
      blue_led_light_offset = {
        0.203125,
        0.4375
      },
      connector_main = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
        height = 50,
        priority = "low",
        scale = 0.5,
        shift = {
          0.171875,
          0.171875
        },
        width = 52,
        x = 104,
        y = 150
      },
      connector_shadow = {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04b-base-shadow-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          -0.390625,
          -0.3125
        },
        width = 62,
        x = 124,
        y = 138
      },
      led_blue = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
        height = 60,
        priority = "low",
        scale = 0.5,
        shift = {
          0.171875,
          0.140625
        },
        width = 60,
        x = 120,
        y = 180
      },
      led_blue_off = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
        height = 44,
        priority = "low",
        scale = 0.5,
        shift = {
          0.171875,
          0.140625
        },
        width = 46,
        x = 92,
        y = 132
      },
      led_green = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          0.171875,
          0.140625
        },
        width = 48,
        x = 96,
        y = 138
      },
      led_light = {
        intensity = 0,
        size = 0.9
      },
      led_red = {
        draw_as_glow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
        height = 46,
        priority = "low",
        scale = 0.5,
        shift = {
          0.171875,
          0.140625
        },
        width = 48,
        x = 96,
        y = 138
      },
      red_green_led_light_offset = {
        0.1875,
        0.328125
      },
      wire_pins = {
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
        height = 58,
        priority = "low",
        scale = 0.5,
        shift = {
          0.171875,
          0.140625
        },
        width = 62,
        x = 124,
        y = 174
      },
      wire_pins_shadow = {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
        height = 54,
        priority = "low",
        scale = 0.5,
        shift = {
          0.328125,
          0.265625
        },
        width = 70,
        x = 140,
        y = 162
      }
    }
  },
  circuit_wire_connection_points = {
    {
      shadow = {
        green = {
          -0.125,
          0.4375
        },
        red = {
          0.1875,
          0.453125
        }
      },
      wire = {
        green = {
          -0.671875,
          0.109375
        },
        red = {
          -0.59375,
          -0.0625
        }
      }
    },
    {
      shadow = {
        green = {
          0.28125,
          0.828125
        },
        red = {
          0.5,
          0.78125
        }
      },
      wire = {
        green = {
          0.140625,
          0.421875
        },
        red = {
          0.078125,
          0.1875
        }
      }
    },
    {
      shadow = {
        green = {
          -0.484375,
          0.71875
        },
        red = {
          -0.15625,
          0.734375
        }
      },
      wire = {
        green = {
          -0.671875,
          0.15625
        },
        red = {
          -0.515625,
          0.046875
        }
      }
    },
    {
      shadow = {
        green = {
          -0.03125,
          -0.015625
        },
        red = {
          0.1875,
          -0.0625
        }
      },
      wire = {
        green = {
          0.53125,
          0.421875
        },
        red = {
          0.46875,
          0.1875
        }
      }
    }
  },
  circuit_wire_max_distance = 9,
  close_sound = {
    {
      filename = "__base__/sound/machine-close.ogg",
      volume = 0.5
    }
  },
  collision_box = {
    {
      -0.6,
      -1.05
    },
    {
      0.6,
      0.3
    }
  },
  collision_mask = {
    "object-layer",
    "train-layer"
  },
  corpse = "offshore-pump-remnants",
  damaged_trigger_effect = {
    damage_type_filters = "fire",
    entity_name = "spark-explosion",
    offset_deviation = {
      {
        -0.5,
        -0.5
      },
      {
        0.5,
        0.5
      }
    },
    offsets = {
      {
        0,
        1
      }
    },
    type = "create-entity"
  },
  dying_explosion = "offshore-pump-explosion",
  flags = {
    "placeable-neutral",
    "player-creation",
    "filter-directions"
  },
  fluid = "water",
  fluid_box = {
    base_area = 1,
    base_level = 1,
    filter = "water",
    pipe_connections = {
      {
        position = {
          0,
          1
        },
        type = "output"
      }
    },
    pipe_covers = {
      east = {
        layers = {
          {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
            height = 64,
            hr_version = {
              filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
              height = 128,
              priority = "extra-high",
              scale = 0.5,
              width = 128
            },
            priority = "extra-high",
            width = 64
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
            height = 64,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
              height = 128,
              priority = "extra-high",
              scale = 0.5,
              width = 128
            },
            priority = "extra-high",
            width = 64
          }
        }
      },
      north = {
        layers = {
          {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            height = 64,
            hr_version = {
              filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
              height = 128,
              priority = "extra-high",
              scale = 0.5,
              width = 128
            },
            priority = "extra-high",
            width = 64
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
            height = 64,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
              height = 128,
              priority = "extra-high",
              scale = 0.5,
              width = 128
            },
            priority = "extra-high",
            width = 64
          }
        }
      },
      south = {
        layers = {
          {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
            height = 64,
            hr_version = {
              filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
              height = 128,
              priority = "extra-high",
              scale = 0.5,
              width = 128
            },
            priority = "extra-high",
            width = 64
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
            height = 64,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
              height = 128,
              priority = "extra-high",
              scale = 0.5,
              width = 128
            },
            priority = "extra-high",
            width = 64
          }
        }
      },
      west = {
        layers = {
          {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
            height = 64,
            hr_version = {
              filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
              height = 128,
              priority = "extra-high",
              scale = 0.5,
              width = 128
            },
            priority = "extra-high",
            width = 64
          },
          {
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
            height = 64,
            hr_version = {
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
              height = 128,
              priority = "extra-high",
              scale = 0.5,
              width = 128
            },
            priority = "extra-high",
            width = 64
          }
        }
      }
    },
    production_type = "output"
  },
  fluid_box_tile_collision_test = {
    "ground-tile"
  },
  graphics_set = {
    animation = {
      east = {
        layers = {
          {
            animation_speed = 0.25,
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East.png",
            frame_count = 32,
            height = 52,
            hr_version = {
              animation_speed = 0.25,
              filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East.png",
              frame_count = 32,
              height = 102,
              line_length = 8,
              priority = "high",
              scale = 0.5,
              shift = {
                0.46875,
                -0.0625
              },
              width = 124
            },
            line_length = 8,
            priority = "high",
            shift = {
              0.4375,
              -0.0625
            },
            width = 64
          },
          {
            animation_speed = 0.25,
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-shadow.png",
            frame_count = 32,
            height = 34,
            hr_version = {
              animation_speed = 0.25,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-shadow.png",
              frame_count = 32,
              height = 66,
              line_length = 8,
              priority = "high",
              scale = 0.5,
              shift = {
                0.84375,
                0.25
              },
              width = 180
            },
            line_length = 8,
            priority = "high",
            shift = {
              0.875,
              0.25
            },
            width = 88
          }
        }
      },
      ignore = true,
      north = {
        layers = {
          {
            animation_speed = 0.25,
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North.png",
            frame_count = 32,
            height = 84,
            hr_version = {
              animation_speed = 0.25,
              filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North.png",
              frame_count = 32,
              height = 162,
              line_length = 8,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.03125,
                -0.46875
              },
              width = 90
            },
            line_length = 8,
            priority = "high",
            shift = {
              -0.0625,
              -0.5
            },
            width = 48
          },
          {
            animation_speed = 0.25,
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-shadow.png",
            frame_count = 32,
            height = 70,
            hr_version = {
              animation_speed = 0.25,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-shadow.png",
              frame_count = 32,
              height = 134,
              line_length = 8,
              priority = "high",
              scale = 0.5,
              shift = {
                0.40625,
                -0.21875
              },
              width = 150
            },
            line_length = 8,
            priority = "high",
            shift = {
              0.375,
              -0.25
            },
            width = 78
          }
        }
      },
      south = {
        layers = {
          {
            animation_speed = 0.25,
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South.png",
            frame_count = 32,
            height = 96,
            hr_version = {
              animation_speed = 0.25,
              filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South.png",
              frame_count = 32,
              height = 192,
              line_length = 8,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.03125,
                0
              },
              width = 92
            },
            line_length = 8,
            priority = "high",
            shift = {
              -0.0625,
              0
            },
            width = 48
          },
          {
            animation_speed = 0.25,
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-shadow.png",
            frame_count = 32,
            height = 66,
            hr_version = {
              animation_speed = 0.25,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-shadow.png",
              frame_count = 32,
              height = 128,
              line_length = 8,
              priority = "high",
              scale = 0.5,
              shift = {
                0.46875,
                0.71875
              },
              width = 164
            },
            line_length = 8,
            priority = "high",
            shift = {
              0.5,
              0.6875
            },
            width = 80
          }
        }
      },
      west = {
        layers = {
          {
            animation_speed = 0.25,
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West.png",
            frame_count = 32,
            height = 52,
            hr_version = {
              animation_speed = 0.25,
              filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West.png",
              frame_count = 32,
              height = 102,
              line_length = 8,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.46875,
                -0.0625
              },
              width = 124
            },
            line_length = 8,
            priority = "high",
            shift = {
              -0.5,
              -0.0625
            },
            width = 64
          },
          {
            animation_speed = 0.25,
            draw_as_shadow = true,
            filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-shadow.png",
            frame_count = 32,
            height = 34,
            hr_version = {
              animation_speed = 0.25,
              draw_as_shadow = true,
              filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-shadow.png",
              frame_count = 32,
              height = 66,
              line_length = 8,
              priority = "high",
              scale = 0.5,
              shift = {
                -0.09375,
                0.25
              },
              width = 172
            },
            line_length = 8,
            priority = "high",
            shift = {
              -0.125,
              0.25
            },
            width = 88
          }
        }
      }
    },
    base_pictures = {
      east = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-legs.png",
        height = 32,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-legs.png",
          height = 60,
          scale = 0.5,
          shift = {
            0.125,
            0.40625
          },
          width = 106
        },
        shift = {
          0.125,
          0.375
        },
        width = 54
      },
      north = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-legs.png",
        height = 52,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-legs.png",
          height = 106,
          scale = 0.5,
          shift = {
            -0.03125,
            -0.15625
          },
          width = 114
        },
        shift = {
          -0.0625,
          -0.125
        },
        width = 60
      },
      south = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-legs.png",
        height = 54,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-legs.png",
          height = 108,
          scale = 0.5,
          shift = {
            -0.0625,
            0.1875
          },
          width = 110
        },
        shift = {
          -0.0625,
          0.1875
        },
        width = 56
      },
      west = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-legs.png",
        height = 32,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-legs.png",
          height = 64,
          scale = 0.5,
          shift = {
            -0.1875,
            0.375
          },
          width = 108
        },
        shift = {
          -0.1875,
          0.375
        },
        width = 54
      }
    },
    base_render_layer = "ground-patch",
    fluid_animation = {
      east = {
        animation_speed = 0.25,
        apply_runtime_tint = true,
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-fluid.png",
        frame_count = 32,
        height = 24,
        hr_version = {
          animation_speed = 0.25,
          apply_runtime_tint = true,
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-fluid.png",
          frame_count = 32,
          height = 50,
          line_length = 8,
          scale = 0.5,
          shift = {
            0.1875,
            -0.34375
          },
          width = 38
        },
        line_length = 8,
        shift = {
          0.1875,
          -0.3125
        },
        width = 20
      },
      north = {
        animation_speed = 0.25,
        apply_runtime_tint = true,
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-fluid.png",
        frame_count = 32,
        height = 20,
        hr_version = {
          animation_speed = 0.25,
          apply_runtime_tint = true,
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-fluid.png",
          frame_count = 32,
          height = 40,
          line_length = 8,
          scale = 0.5,
          shift = {
            -0.03125,
            -0.6875
          },
          width = 40
        },
        line_length = 8,
        shift = {
          -0.0625,
          -0.6875
        },
        width = 22
      },
      south = {
        animation_speed = 0.25,
        apply_runtime_tint = true,
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-fluid.png",
        frame_count = 32,
        height = 8,
        hr_version = {
          animation_speed = 0.25,
          apply_runtime_tint = true,
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-fluid.png",
          frame_count = 32,
          height = 14,
          line_length = 8,
          scale = 0.5,
          shift = {
            -0.03125,
            -0.125
          },
          width = 36
        },
        line_length = 8,
        shift = {
          -0.0625,
          -0.125
        },
        width = 20
      },
      west = {
        animation_speed = 0.25,
        apply_runtime_tint = true,
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-fluid.png",
        frame_count = 32,
        height = 24,
        hr_version = {
          animation_speed = 0.25,
          apply_runtime_tint = true,
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-fluid.png",
          frame_count = 32,
          height = 50,
          line_length = 8,
          scale = 0.5,
          shift = {
            -0.21875,
            -0.34375
          },
          width = 36
        },
        line_length = 8,
        shift = {
          -0.25,
          -0.3125
        },
        width = 20
      }
    },
    glass_pictures = {
      east = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-glass.png",
        height = 18,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-glass.png",
          height = 32,
          scale = 0.5,
          shift = {
            0.15625,
            -0.40625
          },
          width = 30
        },
        shift = {
          0.125,
          -0.4375
        },
        width = 18
      },
      north = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-glass.png",
        height = 20,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-glass.png",
          height = 40,
          scale = 0.5,
          shift = {
            -0.0625,
            -0.6875
          },
          width = 36
        },
        shift = {
          -0.0625,
          -0.6875
        },
        width = 18
      },
      south = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-glass.png",
        height = 12,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-glass.png",
          height = 24,
          scale = 0.5,
          shift = {
            -0.03125,
            -0.1875
          },
          width = 40
        },
        shift = {
          -0.0625,
          -0.1875
        },
        width = 22
      },
      west = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-glass.png",
        height = 16,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-glass.png",
          height = 32,
          scale = 0.5,
          shift = {
            -0.1875,
            -0.4375
          },
          width = 30
        },
        shift = {
          -0.1875,
          -0.4375
        },
        width = 16
      }
    },
    underwater_layer_offset = 30,
    underwater_pictures = {
      east = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-underwater.png",
        height = 38,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-underwater.png",
          height = 72,
          scale = 0.5,
          shift = {
            1.21875,
            0.53125
          },
          width = 40
        },
        shift = {
          1.25,
          0.5
        },
        width = 18
      },
      north = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-underwater.png",
        height = 16,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-underwater.png",
          height = 36,
          scale = 0.5,
          shift = {
            -0.03125,
            -1
          },
          width = 98
        },
        shift = {
          -0.0625,
          -1.0625
        },
        width = 52
      },
      south = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-underwater.png",
        height = 26,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-underwater.png",
          height = 48,
          scale = 0.5,
          shift = {
            -0.03125,
            1.53125
          },
          width = 98
        },
        shift = {
          -0.0625,
          1.5
        },
        width = 52
      },
      west = {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-underwater.png",
        height = 34,
        hr_version = {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-underwater.png",
          height = 72,
          scale = 0.5,
          shift = {
            -1.25,
            0.53125
          },
          width = 40
        },
        shift = {
          -1.25,
          0.5625
        },
        width = 20
      }
    }
  },
  icon = "__base__/graphics/icons/offshore-pump.png",
  icon_mipmaps = 4,
  icon_size = 64,
  max_health = 150,
  min_perceived_performance = 0.5,
  minable = {
    mining_time = 0.1,
    result = "offshore-pump"
  },
  name = "offshore-pump",
  open_sound = {
    {
      filename = "__base__/sound/machine-open.ogg",
      volume = 0.5
    }
  },
  picture = 0,
  placeable_position_visualization = {
    filename = "__core__/graphics/cursor-boxes-32x32.png",
    height = 64,
    priority = "extra-high-no-scale",
    scale = 0.5,
    width = 64,
    x = 192
  },
  pumping_speed = 20,
  resistances = {
    {
      percent = 70,
      type = "fire"
    },
    {
      percent = 30,
      type = "impact"
    }
  },
  selection_box = {
    {
      -0.6,
      -1.49
    },
    {
      0.6,
      0.49000000000000004
    }
  },
  tile_height = 1,
  tile_width = 1,
  type = "offshore-pump",
  vehicle_impact_sound = {
    {
      filename = "__base__/sound/car-metal-impact-2.ogg",
      volume = 0.5
    },
    {
      filename = "__base__/sound/car-metal-impact-3.ogg",
      volume = 0.5
    },
    {
      filename = "__base__/sound/car-metal-impact-4.ogg",
      volume = 0.5
    },
    {
      filename = "__base__/sound/car-metal-impact-5.ogg",
      volume = 0.5
    },
    {
      filename = "__base__/sound/car-metal-impact-6.ogg",
      volume = 0.5
    }
  },
  water_reflection = {
    orientation_to_variation = true,
    pictures = {
      filename = "__base__/graphics/entity/offshore-pump/offshore-pump-reflection.png",
      height = 156,
      priority = "extra-high",
      scale = 1,
      shift = {
        0,
        0.59375
      },
      variation_count = 4,
      width = 132
    },
    rotate = false
  },
  working_sound = {
    audible_distance_modifier = 0.7,
    fade_in_ticks = 4,
    fade_out_ticks = 20,
    match_volume_to_activity = true,
    max_sounds_per_type = 3,
    sound = {
      {
        filename = "__base__/sound/offshore-pump.ogg",
        volume = 0.5
      }
    }
  }
}
]]