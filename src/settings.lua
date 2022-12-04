data:extend({
    {
        type = "bool-setting",
        name = "Kux-Modifications-EnableInstantBotDelivery",
        setting_type = "startup",
        default_value = false
	},
    {
        type = "bool-setting",
        name = "Kux-Modifications-EnableInstantBotConstruction",
        setting_type = "startup",
        default_value = false
	},
	{
        type = "bool-setting",
        name = "Kux-Modifications-EnableInstantBotCheat",
        setting_type = "startup",
        default_value = false
	},
	{
        type = "int-setting",
        name = "Kux-Modifications-RoboportLogisticsRadius",
        setting_type = "startup",
		default_value = 0,
		minimum_value = 0,
		maximum_value = 5600
	},
	{
        type = "int-setting",
        name = "Kux-Modifications-RoboportConstructionRadius",
        setting_type = "startup",
		default_value = 0,
		minimum_value = 0,
		maximum_value = 5600
	},
	{
        type = "string-setting",
        name = "Kux-Modifications-SupportedRoboports",
        setting_type = "startup",
		default_value = "",
		allow_blank = true
	},
})

data:extend({
    {
        type = "bool-setting",
        name = "Kux-Modifications-EnableOffshorePumpOnLand",
        setting_type = "startup",
        default_value = false
	},
})

data:extend({
    {
        type = "bool-setting",
        name = "Kux-Modifications-EnableStartItems",
        setting_type = "runtime-global",
        default_value = false
	},
	{
        type = "bool-setting",
        name = "Kux-Modifications-EnableSpaceshipStartItems",
        setting_type = "runtime-global",
        default_value = false
	},
})

data:extend({
	{
		type = "int-setting",
		name = "Kux-Modifications-UndergroundLength",
		setting_type = "startup",
		default_value = 0,
		minimum_value = 0,
		maximum_value = 255
	}
})

data:extend({
    {
        type = "bool-setting",
        name = "Kux-Modifications-EnableAdminCheats",
        setting_type = "runtime-global",
        default_value = false
	},
})

data:extend({
    {
        type = "bool-setting",
        name = "Kux-Modifications-CharacterHover",
        setting_type = "startup",
        default_value = false
	},
})

--in data.lua:
-- settings.startup["my-mod-stone-wall-stack-size"].value
--[[
default_value (int, required) - Defines the default value of the setting.
minimum_value (int, optional) - Defines the lowest possible number.
maximum_value (int, optional) - Defines the highest possible number.
allowed_values (array(int), optional) - Makes it possible to force the player to choose between the defined numbers, creates a dropdown instead of a texfield.
]]