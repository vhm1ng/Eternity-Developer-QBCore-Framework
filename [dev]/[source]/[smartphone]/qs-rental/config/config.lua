Config = {}

function VehicleKeys(veh) -- Use this function in case of using vehiclekeys, otherwise empty it.
    TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
end

Config.Blips = { -- Configure your blips here.
    enable = true,
    sprite = 379,
    scale = 0.65,
    color = 3,
}

Config.RentelVehicles = {
	['tribike3'] = { ['model'] = 'tribike3', ['label'] = 'Tribike Blue', ['price'] = 100, ['icon'] = 'fas fa-biking' },
	['bmx'] = { ['model'] = 'bmx', ['label'] = 'BMX', ['price'] = 100, ['icon'] = 'fas fa-biking' },
    --['panto'] = { ['model'] = 'panto', ['label'] = 'Panto', ['price'] = 250, ['icon'] = 'fas fa-car' },
	--['rhapsody'] = { ['model'] = 'rhapsody', ['label'] = 'Rhapsody', ['price'] = 300, ['icon'] = 'fas fa-car' },
	--['felon'] = { ['model'] = 'felon', ['label'] = 'Felon', ['price'] = 400, ['icon'] = 'fas fa-car' },
	--['bagger'] = { ['model'] = 'bagger', ['label'] = 'Bagger', ['price'] = 400, ['icon'] = 'fas fa-motorcycle' },
    --['biff'] = { ['model'] = 'biff', ['label'] = 'Biff', ['price'] = 500, ['icon'] = 'fas fa-truck-moving' },
}

Config.RentelLocations = {
    ['Courthouse Paystation'] = {
        ['coords'] = vector4(129.93887, -898.5326, 30.148599, 166.04177)
    },
    ['Train Station'] = {
        ['coords'] = vector4(-213.4004, -1003.342, 29.144016, 345.36584)
    },
    ['Bus Station'] = {
        ['coords'] = vector4(416.98699, -641.6024, 28.500173, 90.011344)
    },    
    ['Morningwood Blvd'] = {
        ['coords'] = vector4(-1274.631, -419.1656, 34.215377, 209.4456)
    },    
    ['South Rockford Drive'] = {
        ['coords'] = vector4(-682.9262, -1112.928, 14.525076, 37.729667)
    },    
    ['Tinsel Towers Street'] = {
        ['coords'] = vector4(-716.9338, -58.31439, 37.472839, 297.83691)
    }        
}

function SendTextMessage(msg, type) --You can add your notification system here for simple messages.
    if type == 'inform' then 
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)

        --exports['qs-core']:Notify('inform', msg)
        --exports['mythic_notify']:DoHudText('inform', msg)
    end
    if type == 'error' then 
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)

        --exports['qs-core']:Notify(msg, "error")
        --exports['mythic_notify']:DoHudText('error', msg)
    end
    if type == 'success' then 
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)

        --exports['qs-core']:Notify( msg, "success")
        --exports['mythic_notify']:DoHudText('success', msg)
    end
end

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end