RegisterNetEvent("rc:fine")
AddEventHandler("rc:fine", function(receiverid, fine)
  
		SetNotificationTextEntry("STRING");
        AddTextComponentString("~r~ OUPS !");
        DrawNotification(false, true);
		
  
end)
