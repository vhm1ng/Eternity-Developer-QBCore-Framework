local vehoption1 = nil
local vehoption2 = nil
local vehoption3 = nil
local stealid = nil
local cuffid = nil
-- local mdtid = nil

local function givekeys()
    local Player = PlayerPedId()
    if IsPedInAnyVehicle(Player) then
        vehoption1 = exports['et-radialmenu']:AddOption({
            id = 'give_keys',
            title = 'Đưa chìa khoá',
            icon = 'key',
            type = 'client',
            event = 'vehiclekeys:client:GiveKeys',
            shouldClose = true
        }, vehoption1)
    else
        if vehoption1 ~= nil then
            exports['et-radialmenu']:RemoveOption(vehoption1)
            vehoption1 = nil
        end
    end
end

local function PlayerCloseMenu()
    local player, distance = QBCore.Functions.GetClosestPlayer()
    if player ~= -1 and distance <= 1.5 then
        if not IsPedInAnyVehicle(PlayerPedId()) then
            cuffid = exports['et-radialmenu']:AddOption({
                id = 'handcuff',
                title = 'CỔ TAY ÁO',
                icon = 'user-lock',
                type = 'client',
                event = 'police:client:CuffPlayerSoft',
                shouldClose = true
            }, cuffid)
            stealid = exports['et-radialmenu']:AddOption({
                id = 'stealplayer',
                title = 'LỤC ĐỒ',
                icon = 'shopping-bag',
                type = 'client',
                event = 'police:client:RobPlayer',
                shouldClose = true,
            }, stealid)
        end
    else
        if cuffid ~= nil and stealid ~= nil then
            exports['et-radialmenu']:RemoveOption(cuffid)
            exports['et-radialmenu']:RemoveOption(stealid)
            cuffid = nil
            stealid = nil
        end
    end
end

-- local function mdt()
--     if QBCore.Functions.GetPlayerData().job.name == "police" then
--         mdtid = exports['et-radialmenu']:AddOption({
--             id = 'mdt',
--             title = 'MÁY TÍNH BẢNG',
--             icon = 'tablet',
--             type = 'command',
--             event = 'mdt',
--             shouldClose = true
--         }, mdtid)
--     else
--         if mdtid ~= nil then
--             exports['et-radialmenu']:RemoveOption(mdtid)
--             mdtid = nil
--         end
--     end
-- end

local function vehoptions()
    local pos = GetEntityCoords(PlayerPedId())
    local vehicle = QBCore.Functions.GetClosestVehicle()
    local vehpos = GetEntityCoords(vehicle)
    if #(pos - vehpos) < 2.5 and not IsPedInAnyVehicle(PlayerPedId()) then
        vehoption2 = exports['et-radialmenu']:AddOption({
            id = 'playeroutvehicle',
            title = 'ĐƯA RA',
            icon = 'user',
            type = 'client',
            event = 'police:client:SetPlayerOutVehicle',
            shouldClose = true
        }, vehoption2)
        vehoption3 = exports['et-radialmenu']:AddOption({
            id = 'playerinvehicle',
            title = 'ĐƯA VÀO',
            icon = 'user',
            type = 'client',
            event = 'police:client:PutPlayerInVehicle',
            shouldClose = true
        }, vehoption3)
    else
        if vehoption2 ~= nil and vehoption3 ~= nil then
            exports['et-radialmenu']:RemoveOption(vehoption2)
            exports['et-radialmenu']:RemoveOption(vehoption3)
            vehoption2 = nil
            vehoption3 = nil
        end
    end
end
RegisterNetEvent('et-radialmenu:client:onRadialmenuOpen', function()
    givekeys()
    -- mdt()
    PlayerCloseMenu()
    vehoptions()
end)

