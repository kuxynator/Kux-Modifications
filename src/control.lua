require "lib.EventDistributor"

require "tools"
require "features.fasterStartItems"
require "features.surfacesReloaded"
require "features.adminCheats"

script.on_init(function(e)
	global.state = global.state or {}
	for _,fnc in pairs(EventDistributor.on_init) do fnc(e) end
end)

script.on_configuration_changed(function (e)
	global.state = global.state or {}
	for _,fnc in pairs(EventDistributor.on_configuration_changed) do fnc(e) end
end)

local removePlayerLogisticsCenterItems = function ()
	local removePlayerItems = {
		"ab-lc-logistics-center",
		"ab-lc-collecter-chest-1_1",
		"ab-lc-requester-chest-1_1"
	}
	local inventory = game.players[1].get_main_inventory()
	if not inventory then return end

	for _, n in ipairs(removePlayerItems) do
		local stack = inventory.find_item_stack(n)
		if stack then inventory.remove(stack) end
	end

	global.state.playerLogisticsCenterRemoved = true
end

EventDistributor.init()