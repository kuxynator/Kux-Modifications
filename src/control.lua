require "features.fasterStartItems"

EventHandler = EventHandler or {}
EventHandler.on_init = EventHandler.on_init or {}

script.on_init(function()
	for _,fnc in pairs(EventHandler.on_init) do fnc() end
end)