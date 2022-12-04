DataStage = "data"
require "tools"
require "features.advancedCombinator"
require "features.railloaderInventorySize"
require "features.attachNotesSignPost"
require "features.landPump"
require "features.fasterStartItems"
require "features.improvements"
require "features.surfacesReloaded"
require "features.spaceExploration"

--assembler-pipe-passthrough
if mods["assembler-pipe-passthrough"] then
	_G.appmod = appmod or {}
	appmod.blacklist = appmod.blacklist or {}
	if mods["Transport_Drones"] then
		appmod.blacklist["request-depot"]=true
		appmod.blacklist["fuel-depot"]=true
	end
	if mods["Mining_Drones"] then
		appmod.blacklist["mining-depot"]=true
	end
end

-- early ASIF
--[[ 
for _,tech in pairs(data.raw.technology) do
	if String.endsWith(tech.name, "asif") then
		print("### "..tech.name.." "..String.new("#",80-4-#tech.name-1))
		print(serpent.block(tech))
		if tech.name == "asif" then
			tech.prerequisites = {"automation-2"} --  "rocket-silo"
		end

		tech.unit = {
			count = 250, -- 25000, 500000, 1000000
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack",   1},
				--{"chemical-science-pack",   1},
				--{"production-science-pack", 1},
				--{"utility-science-pack",    1},
				--{"space-science-pack",      1}
			}
		}
	end
end
]]
--TODO entity ingredients

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

