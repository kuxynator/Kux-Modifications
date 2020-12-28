-- better bots

local constructionRobotEntity = data.raw["construction-robot"]["construction-robot"]
constructionRobotEntity.max_payload_size = 10 --1
--constructionRobotEntity.max_to_charge = 0.95,
--constructionRobotEntity.min_to_charge = 0.2,
constructionRobotEntity.max_energy = "1.5MJ"
constructionRobotEntity.energy_per_move = "0.5kJ"--"5kJ"
constructionRobotEntity.energy_per_tick = "0.005kJ"--"0.05kJ"
constructionRobotEntity.speed = 0.6 --0.06
--constructionRobotEntity.speed_multiplier_when_out_of_energy = 0.2,

local constructionRobotEntity = data.raw["logistic-robot"]["logistic-robot"]
constructionRobotEntity.max_payload_size = 10 --1
--constructionRobotEntity.max_to_charge = 0.95,
--constructionRobotEntity.min_to_charge = 0.2,
constructionRobotEntity.max_energy = "1.5MJ"
constructionRobotEntity.energy_per_move = "0.5kJ"--"5kJ"
constructionRobotEntity.energy_per_tick = "0.005kJ"--"0.05kJ"
constructionRobotEntity.speed = 0.5 --0.05
--constructionRobotEntity.speed_multiplier_when_out_of_energy = 0.2,