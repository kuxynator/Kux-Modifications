require "features.advancedCombinator"
require "features.railloaderInventorySize"
require "features.attachNotesSignPost"
require "features.landPump"

--[[
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
]]