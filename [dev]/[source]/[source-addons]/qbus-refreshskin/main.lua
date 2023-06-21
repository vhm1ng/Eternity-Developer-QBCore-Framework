-- CHANGE CORE NAME ACCORDINGLY
local QBCore = exports['et-core']:GetCoreObject()

-- FUNCTION
function refreshskin(health)
  local model = nil
  local gender = QBCore.Functions.GetPlayerData().charinfo.gender
  if gender == 1 then 
    model = GetHashKey("mp_f_freemode_01") 
  else 
    model = GetHashKey("mp_m_freemode_01") 
  end 
  
  RequestModel(model)

  SetPlayerModel(PlayerId(), model)
  SetModelAsNoLongerNeeded(model)

  TriggerServerEvent("qb-clothes:loadPlayerSkin") 
    SetPedMaxHealth(PlayerId(), maxhealth)
    Citizen.Wait(1000) 
  SetEntityHealth(PlayerPedId(), health)
end

---COMMAND
RegisterCommand('refreshskin', function()
  local playerPed = PlayerPedId()
  local maxhealth = GetEntityMaxHealth(playerPed)
  local health = GetEntityHealth(playerPed)
  refreshskin(health)
end)
