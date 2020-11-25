
if mods["advanced-combinator"] then
	local advancedCombinatorRecipe = data.raw.recipe["advanced-combinator"]
	advancedCombinatorRecipe.ingredients = {
		{ "constant-combinator", 1 },
		{ "arithmetic-combinator", 1 },
		{ "green-wire", 1 },
		{ "red-wire", 1 }
	}
	local advancedCombinatorEntity = data.raw["constant-combinator"]["advanced-combinator"]
	advancedCombinatorEntity.active_energy_usage = "50KW" --500KW
	advancedCombinatorEntity.circuit_wire_max_distance = 32
end

if mods["railloader"] then
	local railunloaderChestEntity = data.raw["container"]["railunloader-chest"]
	railunloaderChestEntity.inventory_size = 500 --320
end 

if mods["attach-notes"] then
	local signpostEntity = data.raw["storage-tank"]["signpost"]
	signpostEntity.collision_mask =  {"layer-11"} --???
	--signpostEntity.collision_box = {{0, 0}, {0, 0}} --{{-0.2, -0.2}, {0.2, 0.2}}
	signpostEntity.selection_box = {{-0.5, -0.5}, {0.5, 0.2}} --{{-0.5, -0.5}, {0.5, 0.5}}
end

-- copy from PlacePump
data.raw["offshore-pump"]["offshore-pump"].placeable_position_visualization = nil
data.raw["offshore-pump"]["offshore-pump"].flags = {"placeable-neutral", "player-creation"}
data.raw["offshore-pump"]["offshore-pump"].adjacent_tile_collision_test = { "water-tile", "ground-tile", "floor-layer" }
data.raw["offshore-pump"]["offshore-pump"].adjacent_tile_collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"}
data.raw["offshore-pump"]["offshore-pump"].fluid_box_tile_collision_test = { "water-tile", "ground-tile", "floor-layer" }

-- https://wiki.factorio.com/Prototype/Recipe
data:extend{
	{
		type = "recipe",
		name = "kux-deadlock-stack-electronic-circuit",
		enabled = true,
		ingredients =
		{
		  { "deadlock-stack-copper-cable", 45 },
		  { "deadlock-stack-wood", 45 }
		},
		result = "deadlock-stack-electronic-circuit",
		result_count = 15,
		energy_required = 1,
		hide_from_player_crafting = true
    },
	{
		type = "recipe",
		name = "kux-deadl0ck-stackx-iron-plate",
		enabled = true,
		ingredients =
		{
		  { "deadlock-stack-iron-ore", 30 }
		},
		result = "deadlock-stack-iron-plate",
		result_count = 15,
		energy_required = 1,
		hide_from_player_crafting = true
	},
	{
		type = "recipe",
		name = "kux-deadlock-stack-copper-plate",
		enabled = true,
		ingredients =
		{
		  { "deadlock-stack-copper-ore", 30 }
		},
		result = "deadlock-stack-copper-plate",
		result_count = 15,
		energy_required = 1,
		hide_from_player_crafting = true
    },
}