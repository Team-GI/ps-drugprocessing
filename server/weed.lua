local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('ps-drugprocessing:pickedUpCannabis', function()
	local src = source
	local Player = exports.qbx_core:GetPlayer(src)

	if Player.Functions.AddItem("cannabis", 1) then
		TriggerClientEvent('inventory:client:ItemBox', src, exports.ox_inventory:Items()["cannabis"], "add")
		TriggerClientEvent('QBCore:Notify', src, Lang:t("success.cannabis"), "success")
	end
end)

RegisterServerEvent('ps-drugprocessing:processCannabis', function()
	local src = source
    local Player = exports.qbx_core:GetPlayer(src)

	if Player.Functions.RemoveItem('cannabis', 1) then
		if Player.Functions.AddItem('marijuana', 1) then
			TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['cannabis'], "remove")
			TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['marijuana'], "add")
			TriggerClientEvent('QBCore:Notify', src, Lang:t("success.marijuana"), "success")
		else
			Player.Functions.AddItem('cannabis', 1)
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_cannabis"), "error")
	end
end)

RegisterServerEvent('ps-drugprocessing:rollJoint', function()
	local src = source
    local Player = exports.qbx_core:GetPlayer(src)

	if Player.Functions.RemoveItem('marijuana', 1) then
		if Player.Functions.RemoveItem('rolling_paper', 1) then
			if Player.Functions.AddItem('joint', 1) then
				TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['marijuana'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['rolling_paper'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['joint'], "add")
				TriggerClientEvent('QBCore:Notify', src, Lang:t("success.joint"), "success")
			else
				Player.Functions.AddItem('marijuana', 1)
				Player.Functions.AddItem('rolling_paper', 1)
			end
		else
			Player.Functions.AddItem('marijuana', 1)
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_marijuhana"), "error")
	end
end)

exports.qbx_core:CreateUseableItem("rolling_paper", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
    TriggerClientEvent('ps-drugprocessing:client:rollJoint', source, 'marijuana', item)
end)

RegisterServerEvent('ps-drugprocessing:bagskunk', function()
	local src = source
    local Player = exports.qbx_core:GetPlayer(src)

	if Player.Functions.RemoveItem('marijuana', 1) then
		if Player.Functions.RemoveItem('empty_weed_bag', 1) then
			if Player.Functions.AddItem('weed_skunk', 1) then
				TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['marijuana'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['empty_weed_bag'], "remove")
				TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['weed_skunk'], "add")
				TriggerClientEvent('QBCore:Notify', src, Lang:t("success.baggy"), "success")
			else
				Player.Functions.AddItem('marijuana', 1)
				Player.Functions.AddItem('empty_weed_bag', 1)
			end
		else
			Player.Functions.AddItem('marijuana', 1)
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_marijuhana"), "error")
	end
end)

exports.qbx_core:CreateUseableItem("empty_weed_bag", function(source, item)
    local Player = exports.qbx_core:GetPlayer(source)
    TriggerClientEvent('ps-drugprocessing:client:bagskunk', source, 'marijuana', item)
end)
