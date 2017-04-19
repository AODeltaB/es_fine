RegisterServerEvent('ap:fine')
AddEventHandler('ap:fine', function(receiverid, fine)
		
			TriggerEvent('es:getPlayerFromId', receiverid, function(user)
				local player = user.identifier
				user:removeMoney((fine))
				TriggerClientEvent("es_freeroam:notify", receiverid, "CHAR_SIMEON", 1, false, "Tu as reçu une amende!\n")
				TriggerClientEvent("rc:fine", receiverid, fine)
				
   end)
end)

TriggerEvent("es:addCommand", "fine", function(source, args, user)
	if user.permission_level >= 2 then
		if (args[2] ~= nil and tonumber(args[3]) > 0) then
			local receiverid = tonumber(args[2])
			local fine = tonumber(args[3])
			TriggerEvent('ap:fine', receiverid, fine)
		end
	
	else
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_SIMEON", 1, ""..player, false, "Tu n'es pas flic!\n")
	end
end)
