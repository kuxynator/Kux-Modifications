-- copy from PlacePump
data.raw["offshore-pump"]["offshore-pump"].placeable_position_visualization = nil
data.raw["offshore-pump"]["offshore-pump"].flags = {"placeable-neutral", "player-creation"}
data.raw["offshore-pump"]["offshore-pump"].adjacent_tile_collision_test = { "water-tile", "ground-tile", "floor-layer" }
data.raw["offshore-pump"]["offshore-pump"].adjacent_tile_collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"}
data.raw["offshore-pump"]["offshore-pump"].fluid_box_tile_collision_test = { "water-tile", "ground-tile", "floor-layer" }