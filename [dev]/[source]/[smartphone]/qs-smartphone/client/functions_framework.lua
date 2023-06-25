local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
QSPhone = {}
QSPhone.CurrentRequestId = 0
QSPhone.ServerCallbacks = {}
QSPhone.TimeoutCallbacks = {}
L0_1 = RegisterNetEvent
L1_1 = "qs-smartphone:CallBacks"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-smartphone:CallBacks"
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2
  L2_2 = QSPhone
  L1_2(L2_2)
end
L0_1(L1_1, L2_1)
L0_1 = QSPhone
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = QSPhone
  L3_2 = L3_2.TimeoutCallbacks
  L4_2 = {}
  L5_2 = GetGameTimer
  L5_2 = L5_2()
  L5_2 = L5_2 + A0_2
  L4_2.time = L5_2
  L4_2.cb = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = QSPhone
  L2_2 = L2_2.TimeoutCallbacks
  L2_2 = #L2_2
  return L2_2
end
L0_1.SetTimeout = L1_1
L0_1 = QSPhone
function L1_1(A0_2)
  local L1_2
  L1_2 = QSPhone
  L1_2 = L1_2.TimeoutCallbacks
  L1_2[A0_2] = nil
end
L0_1.ClearTimeout = L1_1
L0_1 = QSPhone
function L1_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = QSPhone
  L2_2 = L2_2.ServerCallbacks
  L3_2 = QSPhone
  L3_2 = L3_2.CurrentRequestId
  L2_2[L3_2] = A1_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:triggerServerCallback"
  L4_2 = A0_2
  L5_2 = QSPhone
  L5_2 = L5_2.CurrentRequestId
  L6_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = QSPhone
  L2_2 = L2_2.CurrentRequestId
  L3_2 = 65535
  if L2_2 < L3_2 then
    L2_2 = QSPhone
    L3_2 = QSPhone
    L3_2 = L3_2.CurrentRequestId
    L3_2 = L3_2 + 1
    L2_2.CurrentRequestId = L3_2
  else
    L2_2 = QSPhone
    L2_2.CurrentRequestId = 0
  end
end
L0_1.TriggerServerCallback = L1_1
L0_1 = RegisterNetEvent
L1_1 = "qs-smartphone:serverCallback"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-smartphone:serverCallback"
function L2_1(A0_2, ...)
  local L1_2, L2_2
  L1_2 = QSPhone.ServerCallbacks
  L1_2 = L1_2[A0_2]
  L2_2 = ...
  L1_2(L2_2)
  L1_2 = QSPhone.ServerCallbacks
  L1_2[A0_2] = nil
end
L0_1(L1_1, L2_1)
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = GetGameTimer
    L0_2 = L0_2()
    L1_2 = 1
    L2_2 = QSPhone
    L2_2 = L2_2.TimeoutCallbacks
    L2_2 = #L2_2
    L3_2 = 1
    for L4_2 = L1_2, L2_2, L3_2 do
      L5_2 = QSPhone
      L5_2 = L5_2.TimeoutCallbacks
      L5_2 = L5_2[L4_2]
      if L5_2 then
        L5_2 = QSPhone
        L5_2 = L5_2.TimeoutCallbacks
        L5_2 = L5_2[L4_2]
        L5_2 = L5_2.time
        if L0_2 >= L5_2 then
          L5_2 = QSPhone
          L5_2 = L5_2.TimeoutCallbacks
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.cb
          L5_2()
          L5_2 = QSPhone
          L5_2 = L5_2.TimeoutCallbacks
          L5_2[L4_2] = nil
        end
      end
    end
  end
end
L0_1(L1_1)
function L0_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.GetPlayerData
    L0_2 = L0_2()
    L0_2 = L0_2.identifier
    return L0_2
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      L0_2 = L0_2.citizenid
      return L0_2
    end
  end
end
GetPlayerIdentifier = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    L0_2 = QS
    L0_2 = L0_2.GetPlayerData
    return L0_2()
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetPlayerData
      return L0_2()
    end
  end
end
GetPlayerDataFramework = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.GetPlayerData
    L0_2 = L0_2()
    L0_2 = L0_2.job
    return L0_2
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      L0_2 = L0_2.job
      return L0_2
    end
  end
end
GetJobFramework = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.Game
    L0_2 = L0_2.GetClosestVehicle
    return L0_2()
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetClosestVehicle
      return L0_2()
    end
  end
end
GetClosestVehicleFramework = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.Game
    L0_2 = L0_2.GetVehicles
    return L0_2()
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetVehicles
      return L0_2()
    end
  end
end
GetVehicles = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.Game
    L0_2 = L0_2.GetClosestPlayer
    return L0_2()
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetClosestPlayer
      return L0_2()
    end
  end
end
GetClosestPlayer = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.Math
    L1_2 = L1_2.Trim
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Shared
      L1_2 = L1_2.Trim
      L2_2 = A0_2
      return L1_2(L2_2)
    end
  end
end
Trim = L0_1
--[[L0_1 = {}
L1_1 = "diables_x_quasar_phone_black"
L2_1 = "diables_x_quasar_phone_blue"
L3_1 = "diables_x_quasar_phone_gold"
L4_1 = "diables_x_quasar_phone_green"
L5_1 = "diables_x_quasar_phone_greenlight"
L6_1 = "diables_x_quasar_phone_grey"
L7_1 = "diables_x_quasar_phone_pink"
L8_1 = "diables_x_quasar_phone_purple"
L9_1 = "diables_x_quasar_phone_red"
L10_1 = "diables_x_quasar_phone_white"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = IsModelValid
    L7_2 = GetHashKey
    L8_2 = L5_2
    L7_2, L8_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2)
    if not L6_2 then
      L6_2 = TriggerServerEvent
      L7_2 = "qs-smartphone:server:exit"
      L6_2(L7_2)
      break
    end
  end
end
L1_1(L2_1)]]
