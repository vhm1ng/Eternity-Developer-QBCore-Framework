QBCore = exports["et-core"]:GetCoreObject()
local Bail = {}

local DoorLocked = true
local PaymentTax = 15

local TotalKoper = 0
-- Code
-- Koper
local totalStolen = 0
RegisterServerEvent('vhming-dong:server:countStolen')
AddEventHandler('vhming-dong:server:countStolen', function()
    totalStolen = totalStolen + 1
    if totalStolen >= 150 then
        TriggerEvent('lotus-electrician:Server:blackOut', true)
        local Player = QBCore.Functions.GetPlayers()
        --for k, v in pairs(Player) do
            if Player then
                TriggerClientEvent('chat:addMessage', -1, {
                    color = { 255, 0, 0},
                    multiline = true,
                    args = {"Điện Lực Con Cáo", "Có người phá hỏng trụ điện thành phố nhiều lần, thành phố sẽ bị cúp điện cho đến khi tất cả trụ điện được nối dây lại"}
                })
            end
        --end
    else
        TriggerEvent('lotus-electrician:Server:blackOut', false)
    end
end)

RegisterServerEvent('vhming-dong:server:resetCopper')
AddEventHandler('vhming-dong:server:resetCopper', function()
    totalStolen = 0
end)

QBCore.Functions.CreateCallback('vhming-tromdong:getItem', function(source, cb)
	local Speler = QBCore.Functions.GetPlayer(source)
    Speler.Functions.AddItem('rubber', math.random(5,10))
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['rubber'], "add")
    Speler.Functions.AddItem('copper', math.random(6,10)) -- 151 per uur
	TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['copper'], "add")
  --  local amountHHKL = math.random(1, 50)
  --  if amountHHKL == 19 then
   --     Player.Functions.AddItem("banhdauxanh", 1)
   --     TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['banhdauxanh'], "add")
   -- end
end)


QBCore.Functions.CreateCallback('ks-koperdief:server:tang', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local Item = Player.Functions.GetItemByName("kniptang")

    if Item ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateUseableItem("kniptang", function(source, item)
    --Player = QBCore.Functions.GetPlayer(source)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent("vhming-tromdong:client:TromDong", source)
        TriggerClientEvent('vhming-tromdong:client:dobenKim', source, item.slot)
    end
end)

-- Cooldown
RegisterServerEvent('vhming-dong:Server:BeginCooldown')
AddEventHandler('vhming-dong:Server:BeginCooldown', function()
    Cooldown = true
    local timer = 60000 * 5
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            Cooldown = false
        end
    end
end)

QBCore.Functions.CreateCallback("vhming-dong:Cooldown",function(source, cb)
    if Cooldown then
        cb(true)
    else
        cb(false)
        
    end
end)
-- Koper end

