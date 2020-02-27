
local playersProcessingCannabis = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



ESX.RegisterServerCallback('esx_drugs:buyLicense', function(source, cb, licenseName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local license = Config.LicensePrices[licenseName]

	if license then
		if xPlayer.getMoney() >= license.price then
			xPlayer.removeMoney(license.price)
	
			TriggerEvent('esx_license:addLicense', source, licenseName, function()
				cb(true)
			end)
		else
			cb(false)
		end
	else
		print(('esx_drugs: %s attempted to buy an invalid license!'):format(xPlayer.identifier))
		cb(false)
	end
end)

RegisterServerEvent('esx_drugs:pickedUpKohle')
AddEventHandler('esx_drugs:pickedUpKohle', function()
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.canCarryItem('kerz', 1) then
		xPlayer.addInventoryItem('kerz', 1)
	else
		xPlayer.showNotification(_U('weed_inventoryfull'))
	end
end)

ESX.RegisterServerCallback('esx_drugs:canPickUp', function(source, cb, item)
	local xPlayer = ESX.GetPlayerFromId(source)
	cb(xPlayer.canCarryItem(item, 1))
end)

RegisterServerEvent('esx_drugs:processKohle')
AddEventHandler('esx_drugs:processKohle', function()
	if not playersProcessingCannabis[source] then
		local _source = source

		playersProcessingCannabis[_source] = ESX.SetTimeout(Config.Delays.WeedProcessing, function()
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xEisenerz = xPlayer.getInventoryItem('kerz')

			if not xPlayer.canCarryItem('kerz', 1) then
				xPlayer.showNotification(_U('weed_processingfull'))
			elseif xEisenerz.count < 1 then
				xPlayer.showNotification(_U('weed_processingenough'))
			else
				xPlayer.removeInventoryItem('kerz', 1)
				xPlayer.addInventoryItem('kohle', 1) 


	


				local vehicleProps = [{"modSpeakers":-1,"modSuspension":-1,"modSmokeEnabled":false,"modDashboard":-1,"wheels":5,"modBackWheels":-1,"modHood":-1,"modOrnaments":-1,"color2":4,"modArchCover":-1,"modAerials":-1,"extras":{"10":false,"11":false},"modFrame":-1,"modTrunk":-1,"modStruts":-1,"dirtLevel":10.1,"modSpoilers":-1,"modEngineBlock":-1,"modWindows":-1,"modTransmission":-1,"modRightFender":-1,"wheelColor":156,"modDoorSpeaker":-1,"modFrontBumper":-1,"modTank":-1,"color1":4,"modTrimB":-1,"modVanityPlate":-1,"modRoof":-1,"modBrakes":-1,"modFender":-1,"tyreSmokeColor":[255,255,255],"modTrimA":-1,"bodyHealth":999.3,"modSteeringWheel":-1,"neonColor":[255,0,255],"modAPlate":-1,"modFrontWheels":-1,"modGrille":-1,"modHydrolic":-1,"modArmor":-1,"modShifterLeavers":-1,"modXenon":false,"modPlateHolder":-1,"modLivery":-1,"pearlescentColor":111,"fuelLevel":54.7,"engineHealth":999.6,"modExhaust":-1,"modSeats":-1,"plate":"QMV721","modHorns":-1,"modDial":-1,"modAirFilter":-1,"plateIndex":0,"modEngine":-1,"neonEnabled":[false,false,false,false],"windowTint":-1,"modSideSkirt":-1,"modTurbo":false,"modRearBumper":-1,"model":-1809822327}]	
	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = 10751,
		['@vehicle'] = json.encode(vehicleProps)
	}, function(rowsChanged)
		xPlayer.showNotification(_U('vehicle_belongs'))
	end)
			end

			playersProcessingCannabis[_source] = nil
		end)
	else
		print(('esx_drugs: %s attempted to exploit weed processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

function CancelProcessing(playerID)
	if playersProcessingCannabis[playerID] then
		ESX.ClearTimeout(playersProcessingCannabis[playerID])
		playersProcessingCannabis[playerID] = nil
	end
end

RegisterServerEvent('esx_drugs:cancelProcessing')
AddEventHandler('esx_drugs:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('esx:playerDropped', function(playerID, reason)
	CancelProcessing(playerID)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessing(source)
end)



