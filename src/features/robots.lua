-- better bots

local enableInstantBotDelivery = settings.startup["Kux-Modifications-EnableInstantBotDelivery"].value
local enableInstantBotConstruction= settings.startup["Kux-Modifications-EnableInstantBotConstruction"].value
local enableInstantBotCheat = settings.startup["Kux-Modifications-EnableInstantBotCheat"].value
local roboportConstructionRadius = settings.startup["Kux-Modifications-RoboportConstructionRadius"].value
local roboportLogisticsRadius = settings.startup["Kux-Modifications-RoboportLogisticsRadius"].value
local supportedRoboports = settings.startup["Kux-Modifications-SupportedRoboports"].value

--in data.lua:

if enableInstantBotConstruction and enableInstantBotCheat then
	local constructionRobotEntity = data.raw["construction-robot"]["construction-robot"]
	constructionRobotEntity.max_payload_size = 100 --1
	--constructionRobotEntity.max_to_charge = 0.95,
	--constructionRobotEntity.min_to_charge = 0.2,
	constructionRobotEntity.max_energy = "0J" -- "1.5MJ"
	constructionRobotEntity.energy_per_move = "0J" -- "0.5kJ"--"5kJ"
	constructionRobotEntity.energy_per_tick = "0J" --"0.005kJ"--"0.05kJ"
	constructionRobotEntity.speed = 1000 -- 0.5 -- 0.05
	--logisticRobotEntity.speed_multiplier_when_out_of_energy = 0.2,
end

if false then
	local constructionRobotEntity = data.raw["construction-robot"]["construction-robot"]
	constructionRobotEntity.max_payload_size = 100 --1
	--constructionRobotEntity.max_to_charge = 0.95,
	--constructionRobotEntity.min_to_charge = 0.2,
	constructionRobotEntity.max_energy = "150MJ" -- "1.5MJ"
	constructionRobotEntity.energy_per_move = "500kJ" --"5kJ"
	constructionRobotEntity.energy_per_tick = "5kJ" --"0.05kJ"
	constructionRobotEntity.speed = 50 --0.05
	--constructionRobotEntity.speed_multiplier_when_out_of_energy = 0.2,
end

if false then
local constructionRobotEntity = data.raw["construction-robot"]["construction-robot"]
constructionRobotEntity.max_payload_size = 100 --1
	--constructionRobotEntity.max_to_charge = 0.95,
	--constructionRobotEntity.min_to_charge = 0.2,
	constructionRobotEntity.max_energy = "150MJ" -- "1.5MJ"
	constructionRobotEntity.energy_per_move = "500kJ" --"5kJ"
	constructionRobotEntity.energy_per_tick = "5kJ" --"0.05kJ"
	constructionRobotEntity.speed = 50 --0.05
	--constructionRobotEntity.speed_multiplier_when_out_of_energy = 0.2,
end

if enableInstantBotDelivery and enableInstantBotCheat then
	local logisticRobotEntity = data.raw["logistic-robot"]["logistic-robot"]
	logisticRobotEntity.max_payload_size = 10 --1
	--logisticRobotEntity.max_to_charge = 0.95,
	--logisticRobotEntity.min_to_charge = 0.2,
	logisticRobotEntity.max_energy = "0J" -- "1.5MJ"
	logisticRobotEntity.energy_per_move = "0J" -- "0.5kJ"--"5kJ"
	logisticRobotEntity.energy_per_tick = "0J" -- "0.005kJ"--"0.05kJ"
	logisticRobotEntity.speed = 1000 -- 0.5 -- 0.05
	--logisticRobotEntity.speed_multiplier_when_out_of_energy = 0.2,
end

if false then
	local logisticRobotEntity = data.raw["logistic-robot"]["logistic-robot"]
	logisticRobotEntity.max_payload_size = 10 --1
	--logisticRobotEntity.max_to_charge = 0.95,
	--logisticRobotEntity.min_to_charge = 0.2,
	logisticRobotEntity.max_energy = "150MJ" -- "1.5MJ"
	logisticRobotEntity.energy_per_move = "500kJ" --"5kJ"
	logisticRobotEntity.energy_per_tick = "5kJ" --"0.05kJ"
	logisticRobotEntity.speed = 50 --0.05
	--logisticRobotEntity.speed_multiplier_when_out_of_energy = 0.2,
end


if supportedRoboports~=nil and #supportedRoboports > 0 then
	local roboport = data.raw["roboport"][supportedRoboports]
	if not roboport then
		log("Specified roboport not found. Name: '"..tostring(supportedRoboports).."'")
	else
		if roboportConstructionRadius > 0 then
			roboport.construction_radius = roboportConstructionRadius
		end
		if roboportLogisticsRadius > 0 then
			roboport.logistics_radius = roboportLogisticsRadius
		end
		if roboport.robot_slots_count < 5 then roboport.robot_slots_count = 5 end
		if roboport.material_slots_count < 5 then roboport.material_slots_count = 5 end
	end
end

-- tweak flying-roboport
local flyingRoboportEntity = data.raw["roboport"]["flying-roboport"]
if flyingRoboportEntity then
	--flyingRoboportEntity.logistics_radius = 32
	--flyingRoboportEntity.construction_radius = 64
	flyingRoboportEntity.selection_box ={{-1.5,-3},{1.5,0}} -- better selection box
	--flyingRoboportEntity.energy_usage = "10MW"
	--flyingRoboportEntity.charging_energy = "75MJ"

	--create a stanolone flying-roboport logistics_radius = 31, construction_radius = 63
	--local flyingRoboportSingleEntity = table.deepcopy(flyingRoboportEntity)
	--local flyingRoboportSingleItem = table.deepcopy(data.raw["item"]["flying-roboport"])
	--local flyingRoboportSingleEntity = table.deepcopy(data.raw["recipe"]["flying-roboport"])
end