QBCore = exports["et-core"]:GetCoreObject()


local PlayerData = {}
local isLoggedIn = false
local percent    = false
local searching  = false
local CurrentCops = 0
local ShowingInteraction = false
cachedBins = {}

closestBin = {
    'prop_elecbox_04a'
}



RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(Amount)
    CurrentCops = Amount
end)

-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(10)
--         if QBCore == nil then
--             TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
--             Citizen.Wait(200)
--         end
--     end
-- end)

RegisterNetEvent("QBCore:Client:OnPlayerLoaded")
AddEventHandler("QBCore:Client:OnPlayerLoaded", function()
    Citizen.SetTimeout(1250, function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
    isLoggedIn = true
   end) 
end)


-- Citizen.CreateThread(function()
--     for _,v in pairs(Config.KoperPimpGuy) do
--         loadmodel(v.model)
--         loaddict("mini@strip_club@idles@bouncer@base")

--         pimp =  CreatePed(1, v.model, v.x, v.y, v.z, v.heading, false, true)
--         FreezeEntityPosition(pimp, true)
--         SetEntityInvincible(pimp, true)
--         SetBlockingOfNonTemporaryEvents(pimp, true)
--         TaskPlayAnim(pimp,"mini@strip_club@idles@bouncer@base", "base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
--     end
-- end)

function loadmodel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Wait(10)
    end
end

function loaddict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(10)
    end
end


DrawText3Ds = function(x, y, z, text)
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

RegisterNetEvent('vhming-tromdong:client:TromDong', function()
        local sleep = 1000
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
		
        for i = 1, #closestBin do
            local x = GetClosestObjectOfType(playerCoords, 1.0, GetHashKey(closestBin[i]), false, false, false)
            local entity = nil
			
            if DoesEntityExist(x) then
                sleep  = 5
                entity = x
                bin    = GetEntityCoords(entity)
                    if CurrentCops >= 0 then
					    if (IsInVehicle()) then
					        QBCore.Functions.Notify('Không thể ngồi trên xe để trộm!', 'error')
					    else 	
					        QBCore.Functions.TriggerCallback('ks-koperdief:server:tang', function(HasItem)
						        if HasItem then
                                    QBCore.Functions.TriggerCallback("vhming-dong:Cooldown", function(cooldown)
                                        if not cooldown then
                                            if not cachedBins[entity] then
                                                openBin(entity)
                                                if not IsWearingHandshoes() then
                                                 --TriggerServerEvent("police:server:CreateFingerDrop", GetEntityCoords(PlayerPedId()))
                                                local pos = GetEntityCoords(PlayerPedId())
                                                    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                                                    QBCore.Functions.Notify("Không mang găng tay luôn?", "primary")
                                                end
                                                local luckpolice = math.random(1, 100)
                                                if luckpolice <= 20 then
                                                    local camId = 4 
                                                    exports['et-dispatch']:tromdong(camId)
                                                    if luckpolice <= 5 then
                                                       -- TriggerServerEvent('police:server:alert:koperdief', GetEntityCoords(PlayerPedId()), QBCore.Functions.GetStreetLabel())
                                                        local pos = GetEntityCoords(PlayerPedId())
                                                        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                                                        QBCore.Functions.Notify("Găng tay bị rách", "primary")
                                                    end
                                                end	   
                                            else
                                
                                                QBCore.Functions.Notify('Đã có người đánh cắp',"error", 3500)
                                            end
								        else
                                            QBCore.Functions.Notify("Bạn phải đợi một thời gian để thử lại...")
                                        end
                                    end)
						        else
						            QBCore.Functions.Notify('Bạn cần một cây kìm..', 'error')
       						    end
								
				            end)
						
					    end
					else	
					    QBCore.Functions.Notify("Không đủ cảnh sát", "primary")
					end	
            else
                QBCore.Functions.Notify("Đây không phải trụ điện", "primary")
            end
        end
        Citizen.Wait(sleep)
end)

function IsInVehicle()
    local ply = PlayerPedId()
    if IsPedSittingInAnyVehicle(ply) then
      return true
    else
      return false
    end
  end
RegisterNetEvent('vhming-tromdong:client:dobenKim',function(slot)
    TriggerServerEvent('et-doben:server:RemoveItemQuality',math.random(2,4),"kniptang", slot)
end)

function IsWearingHandshoes()
    local armIndex = GetPedDrawableVariation(PlayerPedId(), 3)
    local model = GetEntityModel(PlayerPedId())
    local retval = true

    if model == `mp_m_freemode_01` then
        if Config.MaleNoHandshoes[armIndex] ~= nil and Config.MaleNoHandshoes[armIndex] then
            retval = false
        end
    else
        if Config.FemaleNoHandshoes[armIndex] ~= nil and Config.FemaleNoHandshoes[armIndex] then
            retval = false
        end
    end
    return retval
end


-- Citizen.CreateThread(function()
--     Citizen.Wait(100)
--     while true do

--         local sleep = 1000

--         if percent then

--             local playerPed = PlayerPedId()
--             local playerCoords = GetEntityCoords(playerPed)

--             for i = 1, #closestBin do

--                 local x = GetClosestObjectOfType(playerCoords, 1.0, GetHashKey(closestBin[i]), false, false, false)
--                 local entity = nil
                
--                 if DoesEntityExist(x) then
--                     sleep  = 5
--                     entity = x
--                     bin    = GetEntityCoords(entity)
--                     DrawText3Ds(bin.x, bin.y, bin.z + 1.5, TimeLeft .. '~g~%~s~')
--                     break
--                 end
--             end
--         end
--         Citizen.Wait(sleep)
-- 	end
-- end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if searching then
            DisableControlAction(0, 73) 
        end
    end
end)

-- exports['et-ui']:Scrambler(function(success)
--     if success then
--         print("success")
-- 	else
-- 		print("fail")
-- 	end
-- end, "numeric", 30, 0) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
openBin = function(entity)
    exports['et-ui']:Scrambler(function(success)
        if success then
            QBCore.Functions.Progressbar("search_register", "Đang trộm..", 30000, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,

            }, {
                animDict = "amb@prop_human_bbq@male@base",
                anim = "base",
            }, {
                model = "prop_tool_pliers",
                bone = 28422,
                coords = { x = 0.0, y = 0.0, z = 0.0 },
                rotation = { x = 60.0, y = -80.0, z = 0.20 },
            }, {}, function() -- Done]
            
                searching = true
                cachedBins[entity] = true
                if IsInVehicle() then else
                QBCore.Functions.TriggerCallback('vhming-tromdong:getItem', function(result)
                end)end
                ClearPedTasks(PlayerPedId())
                StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
                searching = false  
            end, function() -- Cancel
                GetMoney = false
                StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
                ClearPedTasks(PlayerPedId())
                QBCore.Functions.Notify("Quá trình hủy bỏ..", "error")
                --local transCoords = GetEntityCoords(transport)
               
            end)
	    else
		    QBCore.Functions.Notify("Thất bại..", "error")
            local randomEx = math.random(1, 100)
            local randomBlackOut = math.random(1, 100)
            if randomEx < 50 then
                local playerPed = PlayerPedId()
                local playerCoords = GetEntityCoords(playerPed)
                for i = 1, #closestBin do
                    local x = GetClosestObjectOfType(playerCoords, 1.0, GetHashKey(closestBin[i]), false, false, false)
                    local entity = nil
                    if DoesEntityExist(x) then
                        sleep  = 5
                        entity = x
                        bin    = GetEntityCoords(entity)
                        SetVehicleDoorBroken(bin, 2, false)
                        SetVehicleDoorBroken(bin, 3, false)
                        AddExplosion(bin, 29, 5.0, 1, 0, 1, 1)
                        local player = PlayerPedId()
                        SetEntityHealth(player, 0)
                        -- if randomBlackOut < 3 then
                        --     TriggerServerEvent('vhming-dong:server:countStolen')
                        -- end
                    end
                end
            end
	    end
    end, "alphanumeric", 30, 1) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
    -- local a = exports['et-minigame']:Open() 
    --     if a then
    --         QBCore.Functions.Progressbar("search_register", "Đang trộm..", 30000, false, true, {
    --             disableMovement = true,
    --             disableCarMovement = true,
    --             disableMouse = false,
    --             disableCombat = true,

    --         }, {
    --             animDict = "amb@prop_human_bbq@male@base",
    --             anim = "base",
    --         }, {
    --             model = "prop_tool_pliers",
    --             bone = 28422,
    --             coords = { x = 0.0, y = 0.0, z = 0.0 },
    --             rotation = { x = 60.0, y = -80.0, z = 0.20 },
    --         }, {}, function() -- Done]
            
    --             searching = true
    --             cachedBins[entity] = true
    --             QBCore.Functions.TriggerCallback('vhming-tromdong:getItem', function(result)
    --             end)
    --             ClearPedTasks(PlayerPedId())
    --             StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
    --             searching = false  
    --         end, function() -- Cancel
    --             GetMoney = false
    --             StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
    --             ClearPedTasks(PlayerPedId())
    --             QBCore.Functions.Notify("Quá trình hủy bỏ..", "error")
    --             --local transCoords = GetEntityCoords(transport)
               
    --         end)
    --     else
    --         QBCore.Functions.Notify("Thất bại..", "error")
    --         local randomEx = math.random(1, 100)
    --         local randomBlackOut = math.random(1, 100)
    --         if randomEx < 50 then
    --             local playerPed = PlayerPedId()
    --             local playerCoords = GetEntityCoords(playerPed)
    --             for i = 1, #closestBin do
    --                 local x = GetClosestObjectOfType(playerCoords, 1.0, GetHashKey(closestBin[i]), false, false, false)
    --                 local entity = nil
    --                 if DoesEntityExist(x) then
    --                     sleep  = 5
    --                     entity = x
    --                     bin    = GetEntityCoords(entity)
    --                     SetVehicleDoorBroken(bin, 2, false)
    --                     SetVehicleDoorBroken(bin, 3, false)
    --                     AddExplosion(bin, 29, 5.0, 1, 0, 1, 1)
    --                     local player = PlayerPedId()
    --                     SetEntityHealth(player, 0)
    --                     -- if randomBlackOut < 3 then
    --                     --     TriggerServerEvent('vhming-dong:server:countStolen')
    --                     -- end
    --                 end
    --             end
    --         end
    --     end
end


