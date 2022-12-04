local applyAdminCheats = function (player)
	print("applyAdminCheats")
	if player.admin and player.character then
		--player.cheat_mode = true
		--player.character_mining_speed_modifier = 
		--player.character_running_speed_modifier
		player.character_build_distance_bonus = 1000
		player.character_item_drop_distance_bonus = 1000
		player.character_reach_distance_bonus = 1000
		player.character_resource_reach_distance_bonus = 1000
		player.character_inventory_slots_bonus = 1000
		player.character_trash_slot_count_bonus = 30
		--player.character_item_pickup_distance_bonus = 320 --max 320
		--player.character_loot_pickup_distance_bonus = 320 --max 320
		--character_maximum_following_robot_count_bonus
		--character_health_bonus
		print("admin cheats applied to "..player.name)
	end
end

local checkAll = function()
	if not settings.global["Kux-Modifications-EnableAdminCheats"].value then return end
	for key, player in pairs(game.players) do
		if player.admin and player.character then applyAdminCheats(player) end
	end
end

local onCheckPlayer = function (e)
	if not settings.global["Kux-Modifications-EnableAdminCheats"].value then return end
	local player = game.get_player(e.player_index)
	if player.admin and player.character then applyAdminCheats(player) end
end

local onRuntimeModSettingChanged = function (e)
	--player_index :: uint (optional): The player who changed the setting or nil if changed by script.
	--setting :: string: The setting name that changed.
	--setting_type :: string: The setting type: "runtime-per-user", or "runtime-global".
	if e.setting ~= "Kux-Modifications-EnableAdminCheats" then return end
	checkAll()
end

table.insert(EventDistributor.onLoaded          , checkAll)
EventDistributor.register(defines.events.on_runtime_mod_setting_changed, onRuntimeModSettingChanged)
EventDistributor.register(defines.events.on_player_respawned     , onCheckPlayer)
EventDistributor.register(defines.events.on_player_created       , onCheckPlayer)
EventDistributor.register(defines.events.on_player_joined_game   , onCheckPlayer)
EventDistributor.register(defines.events.on_player_promoted      , onCheckPlayer)