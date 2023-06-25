local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = false
L1_1 = nil
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.event = "updateCars"
  L2_2.cars = A0_2
  L1_2(L2_2)
end
setCars = L2_1
L2_1 = RegisterNUICallback
L3_1 = "getCars"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = QSPhone
  L1_2 = L1_2.TriggerServerCallback
  L2_2 = "qs-smartphone:getCars"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = 1
    L2_3 = #A0_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = GetDisplayNameFromVehicleModel
      L6_3 = A0_3[L4_3]
      L6_3 = L6_3.props
      L6_3 = L6_3.model
      L5_3 = L5_3(L6_3)
      model = L5_3
      L5_3 = A0_3[L4_3]
      L5_3 = L5_3.props
      L6_3 = model
      L5_3.model = L6_3
    end
    L1_3 = setCars
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNUICallback
L3_1 = "ValeCagir"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = QSPhone
  L1_2 = L1_2.TriggerServerCallback
  L2_2 = "qs-smartphone:enoughMoney"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = TriggerServerEvent
      L2_3 = "qs-smartphone:getInfoPlate"
      L3_3 = A0_2.plaka
      L1_3(L2_3, L3_3)
    else
      L1_3 = SendTextMessage
      L2_3 = Lang
      L3_3 = "NO_MONEY"
      L2_3 = L2_3(L3_3)
      L3_3 = "error"
      L1_3(L2_3, L3_3)
    end
  end
  L1_2(L2_2, L3_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterNetEvent
L3_1 = "qs-smartphone:vehSpawn"
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = "qs-smartphone:vehSpawn"
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = A2_2
  L4_2 = {}
  L5_2 = json
  L5_2 = L5_2.decode
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.props = L5_2
  L5_2 = GetVehicles
  L5_2 = L5_2()
  L6_2 = 1
  L7_2 = #L5_2
  L8_2 = 1
  for L9_2 = L6_2, L7_2, L8_2 do
    L10_2 = L5_2[L9_2]
    L11_2 = DoesEntityExist
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      L11_2 = Trim
      L12_2 = GetVehicleNumberPlateText
      L13_2 = L10_2
      L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2)
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = Trim
      L13_2 = L3_2
      L12_2 = L12_2(L13_2)
      if L11_2 == L12_2 then
        L11_2 = GetEntityCoords
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = SetNewWaypoint
        L13_2 = L11_2.x
        L14_2 = L11_2.y
        L12_2(L13_2, L14_2)
        L12_2 = SendTextMessage
        L13_2 = Lang
        L14_2 = "GARAGE_CHECK_GPS"
        L13_2 = L13_2(L14_2)
        L14_2 = "error"
        L12_2(L13_2, L14_2)
        return
      end
    end
  end
  L6_2 = TriggerServerEvent
  L7_2 = "qs-smartphone:valetCarSetOutside"
  L8_2 = L3_2 or L8_2
  if not L3_2 then
    L8_2 = "{}"
  end
  L6_2(L7_2, L8_2)
  L6_2 = PlayerPedId
  L6_2 = L6_2()
  L7_2 = GetEntityCoords
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = 999748158
  L9_2 = nil
  if A1_2 and "" ~= A1_2 then
    L9_2 = A1_2
  else
    L10_2 = L4_2.props
    L9_2 = L10_2.model
  end
  while true do
    L10_2 = HasModelLoaded
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L10_2 = HasModelLoaded
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        break
      end
    end
    L10_2 = RequestModel
    L11_2 = L8_2
    L10_2(L11_2)
    L10_2 = RequestModel
    L11_2 = L9_2
    L10_2(L11_2)
    L10_2 = Citizen
    L10_2 = L10_2.Wait
    L11_2 = 0
    L10_2(L11_2)
  end
  if L9_2 then
    L10_2 = GetVehicleClassFromName
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if 14 ~= L10_2 then
      L10_2 = GetVehicleClassFromName
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if 15 ~= L10_2 then
        L10_2 = GetVehicleClassFromName
        L11_2 = L9_2
        L10_2 = L10_2(L11_2)
        if 16 ~= L10_2 then
          L10_2 = GetVehicleClassFromName
          L11_2 = L9_2
          L10_2 = L10_2(L11_2)
          if 21 ~= L10_2 then
            goto lbl_129
          end
        end
      end
    end
    L10_2 = SendNUIMessage
    L11_2 = {}
    L11_2.action = "Notification"
    L12_2 = {}
    L13_2 = Lang
    L14_2 = "GARAGE_TITLE"
    L13_2 = L13_2(L14_2)
    L12_2.title = L13_2
    L13_2 = Lang
    L14_2 = "TYPE_VEHICLE_ERROR"
    L13_2 = L13_2(L14_2)
    L12_2.text = L13_2
    L12_2.icon = "./img/apps/garages.png"
    L12_2.timeout = 1500
    L11_2.PhoneNotify = L12_2
    L10_2(L11_2)
    goto lbl_171
    ::lbl_129::
    L10_2 = SendNUIMessage
    L11_2 = {}
    L11_2.action = "Notification"
    L12_2 = {}
    L13_2 = Lang
    L14_2 = "GARAGE_TITLE"
    L13_2 = L13_2(L14_2)
    L12_2.title = L13_2
    L13_2 = Lang
    L14_2 = "GARAGE_INCOMING"
    L13_2 = L13_2(L14_2)
    L12_2.text = L13_2
    L12_2.icon = "./img/apps/garages.png"
    L12_2.timeout = 1500
    L11_2.PhoneNotify = L12_2
    L10_2(L11_2)
    if L4_2 then
      L10_2 = L4_2.props
      if L10_2 then
        L10_2 = SpawnVehicleValet
        L11_2 = L7_2.x
        L12_2 = L7_2.y
        L13_2 = L7_2.z
        L14_2 = L9_2
        L15_2 = L8_2
        L16_2 = L4_2.props
        L17_2 = L3_2
        L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
    else
      L10_2 = SpawnVehicleValet
      L11_2 = L7_2.x
      L12_2 = L7_2.y
      L13_2 = L7_2.z
      L14_2 = L9_2
      L15_2 = L8_2
      L16_2 = false
      L17_2 = L3_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
  ::lbl_171::
end
L2_1(L3_1, L4_1)
--[[L2_1 = {}
L3_1 = "diables_x_quasar_phone_black"
L4_1 = "diables_x_quasar_phone_blue"
L5_1 = "diables_x_quasar_phone_gold"
L6_1 = "diables_x_quasar_phone_green"
L7_1 = "diables_x_quasar_phone_greenlight"
L8_1 = "diables_x_quasar_phone_grey"
L9_1 = "diables_x_quasar_phone_pink"
L10_1 = "diables_x_quasar_phone_purple"
L11_1 = "diables_x_quasar_phone_red"
L12_1 = "diables_x_quasar_phone_white"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
L2_1[6] = L8_1
L2_1[7] = L9_1
L2_1[8] = L10_1
L2_1[9] = L11_1
L2_1[10] = L12_1
L3_1 = Citizen
L3_1 = L3_1.CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L2_1
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
L3_1(L4_1)]]
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L7_2 = GetClosestVehicleNodeWithHeading
  L8_2 = math
  L8_2 = L8_2.random
  L9_2 = -100
  L10_2 = 100
  L8_2 = L8_2(L9_2, L10_2)
  L8_2 = A0_2 + L8_2
  L9_2 = math
  L9_2 = L9_2.random
  L10_2 = -100
  L11_2 = 100
  L9_2 = L9_2(L10_2, L11_2)
  L9_2 = A1_2 + L9_2
  L10_2 = A2_2
  L11_2 = 0
  L12_2 = 3
  L13_2 = 0
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L10_2 = A5_2
  L11_2 = A6_2
  L12_2 = Config
  L12_2 = L12_2.Framework
  if "ESX" == L12_2 then
    L12_2 = ESX
    L12_2 = L12_2.Game
    L12_2 = L12_2.SpawnVehicle
    L13_2 = A3_2
    L14_2 = L8_2
    L15_2 = L9_2
    function L16_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L1_3 = SetVehicleHasBeenOwnedByPlayer
      L2_3 = A0_3
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SetEntityAsMissionEntity
      L2_3 = A0_3
      L3_3 = true
      L4_3 = true
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = ClearAreaOfVehicles
      L2_3 = GetEntityCoords
      L3_3 = A0_3
      L2_3 = L2_3(L3_3)
      L3_3 = 5000
      L4_3 = false
      L5_3 = false
      L6_3 = false
      L7_3 = false
      L8_3 = false
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      L1_3 = SetVehicleOnGroundProperly
      L2_3 = A0_3
      L1_3(L2_3)
      L1_3 = SetVehicleNumberPlateText
      L2_3 = A0_3
      L3_3 = L11_2
      L1_3(L2_3, L3_3)
      L1_3 = L10_2
      if L1_3 then
        L1_3 = ESX
        L1_3 = L1_3.Game
        L1_3 = L1_3.SetVehicleProperties
        L2_3 = A0_3
        L3_3 = L10_2
        L1_3(L2_3, L3_3)
      end
      L1_3 = CreatePedInsideVehicle
      L2_3 = A0_3
      L3_3 = 26
      L4_3 = A4_2
      L5_3 = -1
      L6_3 = true
      L7_3 = false
      L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      L1_1 = L1_3
      L1_3 = AddBlipForEntity
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      mechBlip = L1_3
      L1_3 = SetBlipFlashes
      L2_3 = mechBlip
      L3_3 = true
      L1_3(L2_3, L3_3)
      L1_3 = SetBlipColour
      L2_3 = mechBlip
      L3_3 = 5
      L1_3(L2_3, L3_3)
      L1_3 = GoToTarget
      L2_3 = A0_2
      L3_3 = A1_2
      L4_3 = A2_2
      L5_3 = A0_3
      L6_3 = L1_1
      L7_3 = A3_2
      L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
    end
    L12_2(L13_2, L14_2, L15_2, L16_2)
  else
    L12_2 = Config
    L12_2 = L12_2.Framework
    if "QBCore" == L12_2 then
      L12_2 = QBCore
      L12_2 = L12_2.Functions
      L12_2 = L12_2.SpawnVehicle
      L13_2 = A3_2
      function L14_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
        L1_3 = SetVehicleHasBeenOwnedByPlayer
        L2_3 = A0_3
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = SetEntityAsMissionEntity
        L2_3 = A0_3
        L3_3 = true
        L4_3 = true
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = ClearAreaOfVehicles
        L2_3 = GetEntityCoords
        L3_3 = A0_3
        L2_3 = L2_3(L3_3)
        L3_3 = 5000
        L4_3 = false
        L5_3 = false
        L6_3 = false
        L7_3 = false
        L8_3 = false
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
        L1_3 = SetVehicleOnGroundProperly
        L2_3 = A0_3
        L1_3(L2_3)
        L1_3 = SetVehicleNumberPlateText
        L2_3 = A0_3
        L3_3 = L11_2
        L1_3(L2_3, L3_3)
        L1_3 = L10_2
        if L1_3 then
          L1_3 = QBCore
          L1_3 = L1_3.Functions
          L1_3 = L1_3.SetVehicleProperties
          L2_3 = A0_3
          L3_3 = L10_2
          L1_3(L2_3, L3_3)
        end
        L1_3 = CreatePedInsideVehicle
        L2_3 = A0_3
        L3_3 = 26
        L4_3 = A4_2
        L5_3 = -1
        L6_3 = true
        L7_3 = false
        L1_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
        L1_1 = L1_3
        L1_3 = AddBlipForEntity
        L2_3 = A0_3
        L1_3 = L1_3(L2_3)
        mechBlip = L1_3
        L1_3 = SetBlipFlashes
        L2_3 = mechBlip
        L3_3 = true
        L1_3(L2_3, L3_3)
        L1_3 = SetBlipColour
        L2_3 = mechBlip
        L3_3 = 5
        L1_3(L2_3, L3_3)
        L1_3 = GoToTarget
        L2_3 = A0_2
        L3_3 = A1_2
        L4_3 = A2_2
        L5_3 = A0_3
        L6_3 = L1_1
        L7_3 = A3_2
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3)
      end
      L15_2 = vector3
      L16_2 = L8_2.x
      L17_2 = L8_2.y
      L18_2 = L8_2.z
      L15_2 = L15_2(L16_2, L17_2, L18_2)
      L16_2 = true
      L12_2(L13_2, L14_2, L15_2, L16_2)
    end
  end
end
SpawnVehicleValet = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L7_2 = true
  L0_1 = L7_2
  while true do
    L7_2 = L0_1
    if not L7_2 then
      break
    end
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 500
    L7_2(L8_2)
    L7_2 = PlayerPedId
    L7_2 = L7_2()
    L8_2 = GetEntityCoords
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = SetDriverAbility
    L10_2 = A4_2
    L11_2 = 1.0
    L9_2(L10_2, L11_2)
    L9_2 = SetDriverAggressiveness
    L10_2 = A4_2
    L11_2 = 0.0
    L9_2(L10_2, L11_2)
    L9_2 = TaskVehicleDriveToCoord
    L10_2 = A4_2
    L11_2 = A3_2
    L12_2 = L8_2.x
    L13_2 = L8_2.y
    L14_2 = L8_2.z
    L15_2 = 20.0
    L16_2 = 0
    L17_2 = A5_2
    L18_2 = 4457279
    L19_2 = 1
    L20_2 = true
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L9_2 = GetEntityCoords
    L10_2 = A3_2
    L9_2 = L9_2(L10_2)
    L9_2 = L8_2 - L9_2
    L9_2 = #L9_2
    if not (L9_2 < 15) then
      L10_2 = 150
      if not (L9_2 > L10_2) then
        goto lbl_69
      end
    end
    L10_2 = RemoveBlip
    L11_2 = mechBlip
    L10_2(L11_2)
    L10_2 = TaskVehicleTempAction
    L11_2 = A4_2
    L12_2 = A3_2
    L13_2 = 27
    L14_2 = 6000
    L10_2(L11_2, L12_2, L13_2, L14_2)
    L10_2 = SetEntityHealth
    L11_2 = L1_1
    L12_2 = 2000
    L10_2(L11_2, L12_2)
    L10_2 = GoToTargetWalking
    L11_2 = A0_2
    L12_2 = A1_2
    L13_2 = A2_2
    L14_2 = A3_2
    L15_2 = A4_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L10_2 = false
    L0_1 = L10_2
    ::lbl_69::
    L10_2 = VehicleKeys
    L11_2 = A3_2
    L10_2(L11_2)
  end
end
GoToTarget = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 500
  L5_2(L6_2)
  L5_2 = TaskWanderStandard
  L6_2 = A4_2
  L7_2 = 10.0
  L8_2 = 10
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = TriggerServerEvent
  L6_2 = "qs-smartphone:finish"
  L5_2(L6_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 35000
  L5_2(L6_2)
  L5_2 = DeletePed
  L6_2 = L1_1
  L5_2(L6_2)
  L5_2 = nil
  L1_1 = L5_2
end
GoToTargetWalking = L3_1
