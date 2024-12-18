-- This Speedometer script/ui has been created by the KryptonDev Team --
function text(content)
    SetTextFont(2) -- 0 > 4 To to change the font (DEFAULT SET TO: 2)
    SetTextProportionl(0)
    SetTextScale(1.2,1.2) -- size of the speedometer
    SetTextEntry("STRING")
    AddTextComponentString(content .. "MPH")  -- Here you can change if speedomter show MPH or KMH
    DrawText(0.85,0.5) -- Position where the speedometer is displayed at
GetEntityHeading
Citizen.CreateThread(function()

    while true do
        Citizen.Wait(2)
        --[[
            KMH (kilometre) unit = 3.6
            MPH (miles) unit = 2.2369
        ]]--
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1),false))*2.2369 -- This is where you can set if you want the speedometer to be in KMH or MPH (^REFER TO ABOVE^)
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))
        end
    end

end)