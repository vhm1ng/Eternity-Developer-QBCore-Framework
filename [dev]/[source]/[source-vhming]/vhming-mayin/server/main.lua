local QBCore = exports['et-core']:GetCoreObject()

local ValidExtensions = {
    [".png"] = true,
    [".gif"] = true,
    [".jpg"] = true,
    ["jpeg"] = true
}

local ValidExtensionsText = '.png'

QBCore.Functions.CreateUseableItem("printerdocument", function(source, item)
    TriggerClientEvent('vhming-mayin:client:UseDocument', source, item)
end)

QBCore.Commands.Add("spawnprinter", Lang:t('command.spawn_printer'), {}, true, function(source, _)
	TriggerClientEvent('vhming-mayin:client:SpawnPrinter', source)
end, "admin")

RegisterNetEvent('vhming-mayin:server:SaveDocument', function(url)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local info = {}
    local extension = string.sub(url, -4)
    local validexts = ValidExtensions
    if url ~= nil then
        if validexts[extension] then
            info.url = url
            Player.Functions.AddItem('printerdocument', 1, nil, info)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['printerdocument'], "add")
        else
            TriggerClientEvent('QBCore:Notify', src, Lang:t('error.invalid_ext')..ValidExtensionsText..Lang:t('error.allowed_ext'), "error")
        end
    end
end)