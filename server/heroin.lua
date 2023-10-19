local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('ps-drugprocessing:pickedUpPoppy', function()
	local src = source
	local Player = exports.qbx_core:GetPlayer(src)

	if Player.Functions.AddItem("poppyresin", 1) then
		TriggerClientEvent('inventory:client:ItemBox', src, exports.ox_inventory:Items()["poppyresin"], "add")
		TriggerClientEvent('QBCore:Notify', src, Lang:t("success.poppyresin"), "success")
	end
end)

RegisterServerEvent('ps-drugprocessing:processPoppyResin', function()
	local src = source
    local Player = exports.qbx_core:GetPlayer(src)

	if Player.Functions.RemoveItem('poppyresin', Config.HeroinProcessing.Poppy) then
		if Player.Functions.AddItem('heroin', 1) then
			TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['poppyresin'], "remove", Config.HeroinProcessing.Poppy)
			TriggerClientEvent("inventory:client:ItemBox", source, exports.ox_inventory:Items()['heroin'], "add")
			TriggerClientEvent('QBCore:Notify', src, Lang:t("success.heroin"), "success")
		else
			Player.Functions.AddItem('poppyresin', 1)
		end
	else
		TriggerClientEvent('QBCore:Notify', src, Lang:t("error.no_poppy_resin"), "error")
	end
end)
