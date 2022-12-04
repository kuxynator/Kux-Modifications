

local junkTrainEntity = data.raw["locomotive"]["JunkTrain"]
if junkTrainEntity then
	--print(serpent.block(junkTrainEntity))
	junkTrainEntity.braking_force = 1.5 * junkTrainEntity.braking_force
	junkTrainEntity.max_speed = 1.0 * junkTrainEntity.max_speed --0.3
	junkTrainEntity.max_power = "450kW" --"300kW",
	--junkTrainEntity.reversing_power_modifier = 2 * junkTrainEntity.reversing_power_modifier
end

local scrapTrailerEntity = data.raw["cargo-wagon"]["ScrapTrailer"]
if scrapTrailerEntity then
	--print(serpent.block(scrapTrailerEntity))
	scrapTrailerEntity.inventory_size = 20
end

-- tweak Krastorio 2 lab
local crashSiteLabRepairedEntity = data.raw["lab"]["kr-crash-site-lab-repaired"]
if crashSiteLabRepairedEntity then
	crashSiteLabRepairedEntity.researching_speed = 4
	crashSiteLabRepairedEntity.inputs = {"basic-tech-card","automation-science-pack", "logistic-science-pack", "chemical-science-pack", "military-science-pack", "production-science-pack", "utility-science-pack", "space-science-pack"}
end

-- tweak Krastorio 2 assembling-machine
local crashSiteAssemblyMachine1RepairedEntity = data.raw["assembling-machine"]["kr-crash-site-assembling-machine-1-repaired"]
if crashSiteAssemblyMachine1RepairedEntity then
	crashSiteAssemblyMachine1RepairedEntity.crafting_speed = 1
	crashSiteAssemblyMachine1RepairedEntity.ingredient_count = 4
	crashSiteAssemblyMachine1RepairedEntity.energy_usage = "120kW"
end
local crashSiteAssemblyMachine2RepairedEntity = data.raw["assembling-machine"]["kr-crash-site-assembling-machine-2-repaired"]
if crashSiteAssemblyMachine1RepairedEntity then
	crashSiteAssemblyMachine2RepairedEntity.crafting_speed = 1
	crashSiteAssemblyMachine2RepairedEntity.ingredient_count = 4
	crashSiteAssemblyMachine2RepairedEntity.energy_usage = "120kW"
end

-- tweak Krastorio 2 generator
local generator = data.raw["electric-energy-interface"]["kr-crash-site-generator"]
if generator then
	generator.energy_production               = "20MW" -- "240kW"
	generator.energy_source.buffer_capacity   = "20MJ" -- "240kJ"
	generator.energy_source.output_flow_limit = "20MW" -- "240kW"
end

local smallLamp = data.raw["lamp"]["small-lamp"]
smallLamp.light.size = 50
smallLamp.glow_size = 50
--TODO make a new "nedium-lamp", "big-lamp"

--TODO "sawmill" crafting speed (0.1)
--TODO "SchallLampContrast"

local arboretum = data.raw["assembling-machine"]["bi-arboretum"]
if arboretum then
	--print("### bi-arboretum ####################################################################\n"..serpent.block(arboretum))
	--arboretum.crafting_speed = 0.1
	--for key, value in pairs(data.raw) do
	--	if value.name == "bi-aboretum" and value.type ~= "item" and value.type ~= "recipe" then
	--		print(value.name, value.type)
	--	end
	--end
end

--- bi-arboretum-hidden-radar (Bio Industries) --------------------------------
local arboretumRadar = data.raw["radar"]["bi-arboretum-hidden-radar"]
if arboretumRadar then	
	--arboretumRadar.rotation_speed = arboretumRadar.rotation_speed * 10
	arboretumRadar.energy_usage           = "1000kW" -- 150kW  to 100kW, setting
	--arboretumRadar.energy_per_nearby_scan = "3200KJ"-- 200kW to 100kJ
	--arboretumRadar.max_distance_of_nearby_sector_revealed = 1 -- 2,
	--arboretumRadar.max_distance_of_sector_revealed = 1 --5,
end

--- sawmill (Homeworld) -------------------------------------------------------
local sawmill = data.raw["furnace"]["sawmill"]
if sawmill then
	sawmill.crafting_speed = 1 -- 0.1,
end

--- constant-combinator -------------------------------------------------------
local constantCombinator = data.raw["constant-combinator"]["constant-combinator"]
if constantCombinator.item_slot_count < 50 then
	constantCombinator.item_slot_count = 50
end

--- character  -------------------------------------------------------
if settings.startup["Kux-Modifications-CharacterHover"].value then
	data.raw["character"]["character"].collision_box = {{0,0}, {0,0}}
	--thx to DellAquila
end
