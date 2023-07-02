local QBCore = exports['et-core']:GetCoreObject()

local isInProspectingZone = false
local isUsingProspector = false
local isInSpectingItem = false
local lastDiggedLocation = nil
local isUsingBomb = false
local BombOwner = nil
local BombObject = nil
local isBombStop = false
-- Functions

function CreateBlips()
    local CurrentBlip = AddBlipForCoord(Config.NPCPosition.x, Config.NPCPosition.y, Config.NPCPosition.z)
    SetBlipSprite(CurrentBlip, 280)
    SetBlipDisplay(CurrentBlip, 4)
    SetBlipScale(CurrentBlip, 0.5)
    SetBlipColour(CurrentBlip, 0)
    SetBlipAsShortRange(CurrentBlip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('<font face="BarlowCR">'..'Ông trùm đồng nát')
    EndTextCommandSetBlipName(CurrentBlip)
end

local function BeginOldBombSawing()
    CreateThread(function()
        local PlayerCoords = GetEntityCoords(PlayerPedId())

        QBCore.Functions.Notify("Các bạn lưu ý! Đây là một hành động giả tưởng ở một thành phố không có thật. Mục đích là để giáo dục, tuyên truyền tác hại của việc tự ý cưa, phá hủy bom mìn ở ngoài đời. Không thực hiện dưới mọi hình thức, đây là hành vi vi phạm pháp luật.", "info", 10000)
        Wait(10000)
        local skillBar = exports['et-skillbar']:GetSkillbarObject()
        if BombOwner == QBCore.Functions.GetPlayerData().citizenid then
            TriggerServerEvent('lct-sound:server:PlayWithinDistance', 30, 'handsawing2', 0.3) -- ToDo
        end
        skillBar.Start({
            duration = math.random(500, 1300),
            pos = math.random(10, 30),
            width = math.random(10, 20),
        }, function()
            if not isBombStop then
                if BombOwner == QBCore.Functions.GetPlayerData().citizenid then
                    TriggerServerEvent('lct-sound:server:PlayWithinDistance', 30, 'handsawing2', 0.3) -- ToDo
                end
                -- local randomStamina = math.random(0, 1)
                -- if Core.Functions.GetPlayerData().metadata['stamina'].current < randomStamina then 
                --     Core.Functions.Notify("Bạn hơi mệt rồi thì phải, hãy nghỉ ngơi tý đi.", "error")
                --     TriggerServerEvent('lct-prospecting:server:UpdateBombSawingProcess', BombOwner, 'fail', 20, PlayerCoords)
                --     return
                -- else
                --     TriggerServerEvent("lct-gymnastic:server:RelieveStamina", randomStamina)
                -- end
                skillBar.Repeat({
                    duration = math.random(400, 1100),
                    pos = math.random(10, 30),
                    width = math.random(4, 12),
                })
                TriggerServerEvent('lct-prospecting:server:UpdateBombSawingProcess', BombOwner, 'success', 1, PlayerCoords)
            end
        end, function()
            -- Fail
            if not isBombStop then
                if BombOwner == QBCore.Functions.GetPlayerData().citizenid then
                    TriggerServerEvent('lct-sound:server:PlayWithinDistance', 30, 'handsawing2', 0.3)
                end
                -- if Core.Functions.GetPlayerData().metadata['stamina'].current < 1 then
                --     Core.Functions.Notify("Bạn hơi mệt rồi thì phải, hãy nghỉ ngơi tý đi.", "error")
                --     TriggerServerEvent('lct-prospecting:server:UpdateBombSawingProcess', BombOwner, 'fail', 20, PlayerCoords)
                -- else
                --     TriggerServerEvent("lct-gymnastic:server:RelieveStamina", 1)
                -- end
                -- TriggerServerEvent('lct-hud:server:GainStress', 2)
                skillBar.Repeat({
                    duration = math.random(400, 1100),
                    pos = math.random(10, 30),
                    width = math.random(4, 12),
                })
                TriggerServerEvent('lct-prospecting:server:UpdateBombSawingProcess', BombOwner, 'fail', 1, PlayerCoords)
            end
        end)
    end)
end

-- Net Events

RegisterNetEvent('lct-prospecting:client:UsingProspector', function()
    if not isUsingProspector then
        if isInProspectingZone then
            isUsingProspector = true
            TriggerServerEvent("lct-prospecting:server:ActivateProspecting")
        else
            QBCore.Functions.Notify("Bạn không ở trong khu vực dò tìm.")
        end
    end
end)

RegisterNetEvent('lct-prospecting:client:StopProspecting', function()
    isUsingProspector = false
    exports['et-core']:HideText()
end)


RegisterNetEvent('lct-prospecting:client:UpdateDiggedLocation', function(data, position)
    if lastDiggedLocation then 
        if lastDiggedLocation.x ~= position.x and lastDiggedLocation.y ~= position.y then
            lastDiggedLocation = position
            TriggerServerEvent("lct-prospecting:server:GivePlayerThePrize", data.item)
        else
            QBCore.Functions.Notify("Không tìm thấy gì cả.", "error")
        end
    else 
        lastDiggedLocation = position
        TriggerServerEvent("lct-prospecting:server:GivePlayerThePrize", data.item)
    end 
end)


RegisterNetEvent('lct-prospecting:client:UsingOldBomb', function()
    if not isUsingBomb then
        local player, distance = QBCore.Functions.GetClosestPlayer()
        if player ~= -1 and distance < 2.0 then
            local playerId = GetPlayerServerId(player)
            exports['et-requests']:requestMenu(playerId, 10000, "Công dân #" .. QBCore.Functions.GetPlayerData().source, "Bạn có muốn làm giàu không?", "lct-prospecting:server:OldBombRequest", "server", QBCore.Functions.GetPlayerData().source, 1)
        else
            QBCore.Functions.Notify("Không có ai ở gần.", "error")
        end
    else
        QBCore.Functions.Notify("Bạn đang bận gì đó.", "error")
    end
end)

local function RequestModelHash(Model)
    RequestModel(Model)
    while not HasModelLoaded(Model) do
        Wait(1)
    end
end

RegisterNetEvent('lct-prospecting:client:OldBombRequested', function(Owner)
    if Owner then
        isBombStop = false
        BombOwner = Owner
        FreezeEntityPosition(PlayerPedId(), true)
        --exports['mh-assets']:AddProp('handsaw')
        TriggerEvent('animations:client:EmoteCommandStart', {"sit5"})
        Wait(1000)
        TriggerEvent('animations:client:EmoteCommandStart', {"yeah"})
        Wait(1000)
        BeginOldBombSawing()
    else
        isBombStop = false
        BombOwner = QBCore.Functions.GetPlayerData().citizenid

        local CoordsObject = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.5, 0.0)
        RequestModelHash('prop_ld_bomb_01')
        BombObject = CreateObject(GetHashKey('prop_ld_bomb_01'), CoordsObject.x, CoordsObject.y, CoordsObject.z, true, false, false)
        PlaceObjectOnGroundProperly(BombObject)
        SetEntityHeading(BombObject, GetEntityHeading(PlayerPedId()) + 90.0)
        FreezeEntityPosition(BombObject, true)
        FreezeEntityPosition(PlayerPedId(), true)
        --exports['mh-assets']:AddProp('handsaw')
        TriggerEvent('animations:client:EmoteCommandStart', {"sit5"})
        Wait(1000)
        TriggerEvent('animations:client:EmoteCommandStart', {"yeah"})
        Wait(1000)
        BeginOldBombSawing()
    end
end)

RegisterNetEvent('lct-prospecting:client:DonatingTheBomb', function(coords)
    AddExplosion(coords.x, coords.y, coords.z, 4, 50.0, true, false, 1065353216)
end)

RegisterNetEvent('lct-prospecting:client:SawingBombFinish', function(isSuccess)
    if isSuccess then
        QBCore.Functions.Notify("Làm giàu thành công, bạn sẽ nhận được những phần thưởng xứng đáng.", "success")
        TriggerServerEvent('lct-prospecting:server:GiveReward')
    else
        QBCore.Functions.Notify("Làm giàu thất bại! Bạn không xứng đáng làm giàu.", "error")
    end

    if BombObject ~= nil then
        DeleteEntity(BombObject)
        BombObject = nil
    end
    
    isBombStop = true
    BombOwner = nil
    --exports['mh-assets']:RemoveProp()
    ClearPedTasksImmediately(PlayerPedId())
    FreezeEntityPosition(PlayerPedId(), false)
end)

-- Threads

CreateThread(function()
    local ProspectingPlace = PolyZone:Create({
        vector2(-629.87231445312, -1677.2296142578),
        vector2(-605.66772460938, -1635.6208496094),
        vector2(-603.50402832031, -1632.5744628906),
        vector2(-593.00384521484, -1633.4516601562),
        vector2(-592.55017089844, -1628.6186523438),
        vector2(-560.39990234375, -1630.8536376953),
        vector2(-560.00109863281, -1625.2022705078),
        vector2(-559.29962158203, -1625.0137939453),
        vector2(-555.93872070312, -1625.2794189453),
        vector2(-553.71154785156, -1596.6643066406),
        vector2(-476.73629760742, -1637.9169921875),
        vector2(-469.08721923828, -1643.7595214844),
        vector2(-457.85372924805, -1650.6108398438),
        vector2(-398.93869018555, -1675.296875),
        vector2(-409.08264160156, -1702.8082275391),
        vector2(-410.46466064453, -1702.2447509766),
        vector2(-412.38198852539, -1707.6082763672),
        vector2(-416.85568237305, -1719.8209228516),
        vector2(-418.84484863281, -1725.3612060547),
        vector2(-417.48739624023, -1726.0201416016),
        vector2(-427.46252441406, -1754.2504882812),
        vector2(-430.25326538086, -1756.8319091797),
        vector2(-432.7624206543, -1757.5155029297),
        vector2(-472.63763427734, -1768.1657714844),
        vector2(-475.48431396484, -1768.564453125),
        vector2(-485.40625, -1767.5318603516),
        vector2(-495.6979675293, -1766.4642333984),
        vector2(-505.25198364258, -1763.9630126953),
        vector2(-515.58563232422, -1761.1795654297),
        vector2(-548.49438476562, -1738.1978759766),
        vector2(-565.21911621094, -1726.0454101562),
        vector2(-581.68542480469, -1714.1832275391),
        vector2(-589.3876953125, -1708.5178222656),
        vector2(-598.15856933594, -1702.2667236328),
        vector2(-614.82043457031, -1690.2282714844)
    }, {
        name="ProspectingZone_1",
        debugPoly = false
    })

    ProspectingPlace:onPlayerInOut(function(isPointInside)
        if isPointInside then
            isInProspectingZone = true
        else
            isInProspectingZone = false
            TriggerServerEvent('lct-prospecting:server:DeactivateProspecting')
        end
    end)

    CreateBlips()
end)