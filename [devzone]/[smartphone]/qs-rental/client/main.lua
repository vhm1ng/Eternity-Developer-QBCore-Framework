local L0_1, L1_1, L2_1
QSPhone = nil
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = QSPhone
    if nil ~= L0_2 then
      break
    end
    L0_2 = TriggerEvent
    L1_2 = "qs-smartphone:CallBacks"
    function L2_2(A0_3)
      local L1_3
      QSPhone = A0_3
    end
    L0_2(L1_2, L2_2)
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
L0_1(L1_1)
ESX = nil
QBCore = nil
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    while true do
      L0_2 = ESX
      if nil ~= L0_2 then
        break
      end
      L0_2 = TriggerEvent
      L1_2 = Config
      L1_2 = L1_2.getSharedObject
      function L2_2(A0_3)
        local L1_3
        ESX = A0_3
      end
      L0_2(L1_2, L2_2)
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 0
      L0_2(L1_2)
    end
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = exports
      L0_2 = L0_2["et-core"]
      L1_2 = L0_2
      L0_2 = L0_2.GetCoreObject
      L0_2 = L0_2(L1_2)
      QBCore = L0_2
    end
  end
end
L0_1(L1_1)
MenuEnable = false
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2
  L0_2 = Config
  L0_2 = L0_2.Blips
  L0_2 = L0_2.enable
  if L0_2 then
    L0_2 = pairs
    L1_2 = Config
    L1_2 = L1_2.RentelLocations
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = AddBlipForCoord
      L7_2 = L5_2.coords
      L7_2 = L7_2[1]
      L8_2 = L5_2.coords
      L8_2 = L8_2[2]
      L9_2 = L5_2.coords
      L9_2 = L9_2[3]
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L7_2 = SetBlipSprite
      L8_2 = L6_2
      L9_2 = Config
      L9_2 = L9_2.Blips
      L9_2 = L9_2.sprite
      L7_2(L8_2, L9_2)
      L7_2 = SetBlipDisplay
      L8_2 = L6_2
      L9_2 = 4
      L7_2(L8_2, L9_2)
      L7_2 = SetBlipScale
      L8_2 = L6_2
      L9_2 = Config
      L9_2 = L9_2.Blips
      L9_2 = L9_2.scale
      L7_2(L8_2, L9_2)
      L7_2 = SetBlipAsShortRange
      L8_2 = L6_2
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = SetBlipColour
      L8_2 = L6_2
      L9_2 = Config
      L9_2 = L9_2.Blips
      L9_2 = L9_2.color
      L7_2(L8_2, L9_2)
      L7_2 = BeginTextCommandSetBlipName
      L8_2 = "STRING"
      L7_2(L8_2)
      L7_2 = AddTextComponentSubstringPlayerName
      L8_2 = "Rental"
      L7_2(L8_2)
      L7_2 = EndTextCommandSetBlipName
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  while true do
    L0_2 = 500
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = GetEntityCoords
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = PlayerId
    L3_2 = L3_2()
    L4_2 = pairs
    L5_2 = Config
    L5_2 = L5_2.RentelLocations
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = GetDistanceBetweenCoords
      L11_2 = L2_2
      L12_2 = L9_2.coords
      L12_2 = L12_2[1]
      L13_2 = L9_2.coords
      L13_2 = L13_2[2]
      L14_2 = L9_2.coords
      L14_2 = L14_2[3]
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L11_2 = 1.5
      if L10_2 < L11_2 then
        L0_2 = 1
        L11_2 = DrawMarker
        L12_2 = 20
        L13_2 = L9_2.coords
        L13_2 = L13_2[1]
        L14_2 = L9_2.coords
        L14_2 = L14_2[2]
        L15_2 = L9_2.coords
        L15_2 = L15_2[3]
        L16_2 = 0
        L17_2 = 0
        L18_2 = 0
        L19_2 = 0
        L20_2 = 0
        L21_2 = 0
        L22_2 = 0.701
        L23_2 = 1.0001
        L24_2 = 0.3001
        L25_2 = 222
        L26_2 = 50
        L27_2 = 50
        L28_2 = L10_2
        L29_2 = 0
        L30_2 = 0
        L31_2 = 0
        L32_2 = 0
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
        L11_2 = DrawText3D
        L12_2 = L9_2.coords
        L12_2 = L12_2[1]
        L13_2 = L9_2.coords
        L13_2 = L13_2[2]
        L14_2 = L9_2.coords
        L14_2 = L14_2[3]
        L15_2 = Lang
        L16_2 = "RENT"
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L15_2(L16_2)
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
        L11_2 = IsControlJustPressed
        L12_2 = 0
        L13_2 = 38
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 then
          L11_2 = ClearMenu
          L11_2()
          MenuTitle = "Vehicle Rental"
          MenuEnable = true
          L11_2 = {}
          L12_2 = L9_2.coords
          L12_2 = L12_2[1]
          L11_2.x = L12_2
          L12_2 = L9_2.coords
          L12_2 = L12_2[2]
          L11_2.y = L12_2
          L12_2 = L9_2.coords
          L12_2 = L12_2[3]
          L11_2.z = L12_2
          L12_2 = L9_2.coords
          L12_2 = L12_2[4]
          L11_2.h = L12_2
          L12_2 = pairs
          L13_2 = Config
          L13_2 = L13_2.RentelVehicles
          L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
          for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
            L18_2 = L17_2.stored
            if L18_2 then
              L18_2 = Menu
              L18_2 = L18_2.addButton
              L19_2 = L17_2.label
              L20_2 = Lang
              L21_2 = "STORED"
              L20_2 = L20_2(L21_2)
              L19_2 = L19_2 .. L20_2
              L20_2 = "SpawnVehicle"
              L21_2 = {}
              L21_2.model = L16_2
              L21_2.price = 0
              L21_2.coords = L11_2
              L18_2(L19_2, L20_2, L21_2)
            else
              L18_2 = Menu
              L18_2 = L18_2.addButton
              L19_2 = L17_2.label
              L20_2 = " - $"
              L21_2 = L17_2.price
              L19_2 = L19_2 .. L20_2 .. L21_2
              L20_2 = "SpawnVehicle"
              L21_2 = {}
              L21_2.model = L16_2
              L22_2 = L17_2.price
              L21_2.price = L22_2
              L21_2.coords = L11_2
              L18_2(L19_2, L20_2, L21_2)
            end
          end
          L12_2 = Menu
          L12_2 = L12_2.addButton
          L13_2 = "Close Menu"
          L14_2 = "CloseMenu"
          L12_2(L13_2, L14_2)
          L12_2 = Menu
          L12_2.hidden = false
          while true do
            L12_2 = MenuEnable
            if not L12_2 then
              break
            end
            L12_2 = GetDistanceBetweenCoords
            L13_2 = L2_2
            L14_2 = L9_2.coords
            L14_2 = L14_2[1]
            L15_2 = L9_2.coords
            L15_2 = L15_2[2]
            L16_2 = L9_2.coords
            L16_2 = L16_2[3]
            L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
            L10_2 = L12_2
            if L10_2 > 2 then
              L12_2 = CloseMenu
              L12_2()
            end
            L12_2 = Wait
            L13_2 = 1
            L12_2(L13_2)
            L12_2 = Menu
            L12_2 = L12_2.renderGUI
            L12_2()
          end
        end
      elseif L10_2 < 4 then
        L0_2 = 1
        L11_2 = DrawText3D
        L12_2 = L9_2.coords
        L12_2 = L12_2[1]
        L13_2 = L9_2.coords
        L13_2 = L13_2[2]
        L14_2 = L9_2.coords
        L14_2 = L14_2[3]
        L15_2 = Lang
        L16_2 = "RENTAL"
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2 = L15_2(L16_2)
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
        L11_2 = DrawMarker
        L12_2 = 20
        L13_2 = L9_2.coords
        L13_2 = L13_2[1]
        L14_2 = L9_2.coords
        L14_2 = L14_2[2]
        L15_2 = L9_2.coords
        L15_2 = L15_2[3]
        L16_2 = 0
        L17_2 = 0
        L18_2 = 0
        L19_2 = 0
        L20_2 = 0
        L21_2 = 0
        L22_2 = 0.701
        L23_2 = 1.0001
        L24_2 = 0.3001
        L25_2 = 222
        L26_2 = 50
        L27_2 = 50
        L28_2 = L10_2
        L29_2 = 0
        L30_2 = 0
        L31_2 = 0
        L32_2 = 0
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      elseif L10_2 < 50 then
        L0_2 = 1
        L11_2 = DrawMarker
        L12_2 = 20
        L13_2 = L9_2.coords
        L13_2 = L13_2[1]
        L14_2 = L9_2.coords
        L14_2 = L14_2[2]
        L15_2 = L9_2.coords
        L15_2 = L15_2[3]
        L16_2 = 0
        L17_2 = 0
        L18_2 = 0
        L19_2 = 0
        L20_2 = 0
        L21_2 = 0
        L22_2 = 0.701
        L23_2 = 1.0001
        L24_2 = 0.3001
        L25_2 = 222
        L26_2 = 50
        L27_2 = 50
        L28_2 = L10_2
        L29_2 = 0
        L30_2 = 0
        L31_2 = 0
        L32_2 = 0
        L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2)
      end
    end
    L4_2 = Wait
    L5_2 = L0_2
    L4_2(L5_2)
  end
end
L0_1(L1_1)
function L0_1()
  local L0_2, L1_2
  L0_2 = ClearMenu
  L0_2()
  MenuEnable = false
  L0_2 = Menu
  L0_2.hidden = true
end
CloseMenu = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:spawnVehicle"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = Wait
  L2_2 = 1500
  L1_2(L2_2)
end
SpawnVehicle = L0_1
L0_1 = RegisterNetEvent
L1_1 = "qs-smartphone:client:spawnVehicle"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-smartphone:client:spawnVehicle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CloseMenu
  L1_2()
  L1_2 = Config
  L1_2 = L1_2.RentelVehicles
  L2_2 = A0_2.model
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.stored
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.RentelVehicles
    L2_2 = A0_2.model
    L1_2 = L1_2[L2_2]
    L1_2.stored = false
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "ESX" == L1_2 then
      L1_2 = ESX
      L1_2 = L1_2.Game
      L1_2 = L1_2.SpawnVehicle
      L2_2 = A0_2.model
      L3_2 = A0_2.coords
      L4_2 = A0_2.coords
      L4_2 = L4_2.h
      function L5_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = SetEntityHeading
        L2_3 = A0_3
        L3_3 = A0_2.coords
        L3_3 = L3_3.h
        L1_3(L2_3, L3_3)
        L1_3 = TaskWarpPedIntoVehicle
        L2_3 = PlayerPedId
        L2_3 = L2_3()
        L3_3 = A0_3
        L4_3 = -1
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = SetVehicleNumberPlateText
        L2_3 = A0_3
        L3_3 = A0_2.plate
        L1_3(L2_3, L3_3)
        L1_3 = VehicleKeys
        L2_3 = A0_3
        L1_3(L2_3)
      end
      L1_2(L2_2, L3_2, L4_2, L5_2)
    else
      L1_2 = Config
      L1_2 = L1_2.Framework
      if "QBCore" == L1_2 then
        L1_2 = QBCore
        L1_2 = L1_2.Functions
        L1_2 = L1_2.SpawnVehicle
        L2_2 = A0_2.model
        function L3_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3
          L1_3 = SetEntityHeading
          L2_3 = A0_3
          L3_3 = A0_2.coords
          L3_3 = L3_3.h
          L1_3(L2_3, L3_3)
          L1_3 = TaskWarpPedIntoVehicle
          L2_3 = PlayerPedId
          L2_3 = L2_3()
          L3_3 = A0_3
          L4_3 = -1
          L1_3(L2_3, L3_3, L4_3)
          L1_3 = SetVehicleNumberPlateText
          L2_3 = A0_3
          L3_3 = A0_2.plate
          L1_3(L2_3, L3_3)
          L1_3 = VehicleKeys
          L2_3 = A0_3
          L1_3(L2_3)
        end
        L4_2 = A0_2.coords
        L5_2 = true
        L1_2(L2_2, L3_2, L4_2, L5_2)
      end
    end
  else
    L1_2 = QSPhone
    L1_2 = L1_2.TriggerServerCallback
    L2_2 = "qs-rental:checkMoney"
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3
      if A0_3 then
        L1_3 = TriggerServerEvent
        L2_3 = "qs-rental:server:removeMoney"
        L3_3 = "money"
        L4_3 = A0_2.price
        L1_3(L2_3, L3_3, L4_3)
        L1_3 = Config
        L1_3 = L1_3.Framework
        if "ESX" == L1_3 then
          L1_3 = ESX
          L1_3 = L1_3.Game
          L1_3 = L1_3.SpawnVehicle
          L2_3 = A0_2.model
          L3_3 = A0_2.coords
          L4_3 = A0_2.coords
          L4_3 = L4_3.h
          function L5_3(A0_4)
            local L1_4, L2_4, L3_4, L4_4
            L1_4 = SetEntityHeading
            L2_4 = A0_4
            L3_4 = A0_2.coords
            L3_4 = L3_4.h
            L1_4(L2_4, L3_4)
            L1_4 = TaskWarpPedIntoVehicle
            L2_4 = PlayerPedId
            L2_4 = L2_4()
            L3_4 = A0_4
            L4_4 = -1
            L1_4(L2_4, L3_4, L4_4)
            L1_4 = SetVehicleNumberPlateText
            L2_4 = A0_4
            L3_4 = A0_2.plate
            L1_4(L2_4, L3_4)
            L1_4 = VehicleKeys
            L2_4 = A0_4
            L1_4(L2_4)
          end
          L1_3(L2_3, L3_3, L4_3, L5_3)
        else
          L1_3 = Config
          L1_3 = L1_3.Framework
          if "QBCore" == L1_3 then
            L1_3 = QBCore
            L1_3 = L1_3.Functions
            L1_3 = L1_3.SpawnVehicle
            L2_3 = A0_2.model
            function L3_3(A0_4)
              local L1_4, L2_4, L3_4, L4_4
              L1_4 = SetEntityHeading
              L2_4 = A0_4
              L3_4 = A0_2.coords
              L3_4 = L3_4.h
              L1_4(L2_4, L3_4)
              L1_4 = TaskWarpPedIntoVehicle
              L2_4 = PlayerPedId
              L2_4 = L2_4()
              L3_4 = A0_4
              L4_4 = -1
              L1_4(L2_4, L3_4, L4_4)
              L1_4 = SetVehicleNumberPlateText
              L2_4 = A0_4
              L3_4 = A0_2.plate
              L1_4(L2_4, L3_4)
              L1_4 = VehicleKeys
              L2_4 = A0_4
              L1_4(L2_4)
            end
            L4_3 = A0_2.coords
            L5_3 = true
            L1_3(L2_3, L3_3, L4_3, L5_3)
          end
        end
        L1_3 = TriggerEvent
        L2_3 = "qs-smartphone:set:qs-rental"
        L3_3 = Config
        L3_3 = L3_3.RentelVehicles
        L1_3(L2_3, L3_3)
      else
        L1_3 = SendTextMessage
        L2_3 = Lang
        L3_3 = "NOT_ENOUGH_MONEY"
        L2_3 = L2_3(L3_3)
        L3_3 = "error"
        L1_3(L2_3, L3_3)
      end
    end
    L4_2 = A0_2.price
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "qs-rental:RestoreVehicle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Config
  L3_2 = L3_2.RentelVehicles
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = Config
    L3_2 = L3_2.RentelVehicles
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.stored
    if L3_2 then
      L3_2 = TriggerEvent
      L4_2 = "qs-smartphone:client:notify"
      L5_2 = {}
      L6_2 = Lang
      L7_2 = "RENTAL"
      L6_2 = L6_2(L7_2)
      L5_2.title = L6_2
      L6_2 = Lang
      L7_2 = "DELIVER_BACK"
      L6_2 = L6_2(L7_2)
      L7_2 = Config
      L7_2 = L7_2.RentelVehicles
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.stored
      L8_2 = "."
      L6_2 = L6_2 .. L7_2 .. L8_2
      L5_2.text = L6_2
      L5_2.icon = "./img/apps/rentel.png"
      L3_2(L4_2, L5_2)
      L3_2 = Config
      L3_2 = L3_2.RentelVehicles
      L3_2 = L3_2[A0_2]
      L3_2.stored = false
      L3_2 = TriggerServerEvent
      L4_2 = "qs-smartphone:server:restoreRented"
      L5_2 = math
      L5_2 = L5_2.floor
      L6_2 = Config
      L6_2 = L6_2.RentelVehicles
      L6_2 = L6_2[A0_2]
      L6_2 = L6_2.price
      L6_2 = L6_2 / 2
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = TriggerEvent
      L4_2 = "qs-smartphone:set:qs-rental"
      L5_2 = Config
      L5_2 = L5_2.RentelVehicles
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1(L1_1, L2_1)
L0_1 = AddEventHandler
L1_1 = "qs-rental:RentVehicle"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = nil
  L5_2 = pairs
  L6_2 = Config
  L6_2 = L6_2.RentelLocations
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    if L4_2 then
      L11_2 = GetDistanceBetweenCoords
      L12_2 = L2_2
      L13_2 = L10_2.coords
      L13_2 = L13_2[1]
      L14_2 = L10_2.coords
      L14_2 = L14_2[2]
      L15_2 = L10_2.coords
      L15_2 = L15_2[3]
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
      if not (L4_2 > L11_2) then
        goto lbl_26
      end
    end
    L3_2 = L9_2
    ::lbl_26::
  end
  L5_2 = QSPhone
  L5_2 = L5_2.TriggerServerCallback
  L6_2 = "qs-rental:checkMoney"
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 then
      L1_3 = Config
      L1_3 = L1_3.RentelVehicles
      L2_3 = A0_2
      L1_3 = L1_3[L2_3]
      if L1_3 then
        L1_3 = Config
        L1_3 = L1_3.RentelVehicles
        L2_3 = A0_2
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.stored
        if not L1_3 then
          L1_3 = L3_2
          if L1_3 then
            L1_3 = TriggerServerEvent
            L2_3 = "qs-rental:server:removeMoney"
            L3_3 = "bank"
            L4_3 = Config
            L4_3 = L4_3.RentelVehicles
            L5_3 = A0_2
            L4_3 = L4_3[L5_3]
            L4_3 = L4_3.price
            L1_3(L2_3, L3_3, L4_3)
            L1_3 = SetNewWaypoint
            L2_3 = Config
            L2_3 = L2_3.RentelLocations
            L3_3 = L3_2
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.coords
            L2_3 = L2_3[1]
            L3_3 = Config
            L3_3 = L3_3.RentelLocations
            L4_3 = L3_2
            L3_3 = L3_3[L4_3]
            L3_3 = L3_3.coords
            L3_3 = L3_3[2]
            L1_3(L2_3, L3_3)
            L1_3 = TriggerEvent
            L2_3 = "qs-smartphone:client:notify"
            L3_3 = {}
            L4_3 = Lang
            L5_3 = "RENTAL"
            L4_3 = L4_3(L5_3)
            L3_3.title = L4_3
            L4_3 = Lang
            L5_3 = "RENTEL_SUCCESS"
            L4_3 = L4_3(L5_3)
            L5_3 = " "
            L6_3 = L3_2
            L7_3 = "."
            L4_3 = L4_3 .. L5_3 .. L6_3 .. L7_3
            L3_3.text = L4_3
            L3_3.icon = "./img/apps/rentel.png"
            L1_3(L2_3, L3_3)
            L1_3 = Config
            L1_3 = L1_3.RentelVehicles
            L2_3 = A0_2
            L1_3 = L1_3[L2_3]
            L2_3 = L3_2
            L1_3.stored = L2_3
            L1_3 = TriggerEvent
            L2_3 = "qs-smartphone:set:qs-rental"
            L3_3 = Config
            L3_3 = L3_3.RentelVehicles
            L1_3(L2_3, L3_3)
        end
      end
      else
        L1_3 = TriggerEvent
        L2_3 = "qs-smartphone:client:notify"
        L3_3 = {}
        L4_3 = Lang
        L5_3 = "RENTAL"
        L4_3 = L4_3(L5_3)
        L3_3.title = L4_3
        L4_3 = Lang
        L5_3 = "RENTEL_ERROR"
        L4_3 = L4_3(L5_3)
        L3_3.text = L4_3
        L3_3.icon = "./img/apps/rentel.png"
        L1_3(L2_3, L3_3)
      end
    else
      L1_3 = SendTextMessage
      L2_3 = Lang
      L3_3 = "NOT_ENOUGH_MONEY"
      L2_3 = L2_3(L3_3)
      L3_3 = "error"
      L1_3(L2_3, L3_3)
    end
  end
  L8_2 = Config
  L8_2 = L8_2.RentelVehicles
  L8_2 = L8_2[A0_2]
  L8_2 = L8_2.price
  L5_2(L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = Wait
  L1_2 = 500
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "qs-smartphone:set:qs-rental"
  L2_2 = Config
  L2_2 = L2_2.RentelVehicles
  L0_2(L1_2, L2_2)
end
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "onResourceStart"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  if "qs-smartphone" == A0_2 then
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
    L1_2 = TriggerEvent
    L2_2 = "qs-smartphone:set:qs-rental"
    L3_2 = Config
    L3_2 = L3_2.RentelVehicles
    L1_2(L2_2, L3_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNetEvent
L1_1 = "qs-rental:notify"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-rental:notify"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendTextMessage
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = Config
  L1_2 = L1_2.Languages
  L2_2 = Config
  L2_2 = L2_2.Language
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L2_2 = L1_2[A0_2]
    if L2_2 then
      L2_2 = L1_2[A0_2]
      return L2_2
    end
  end
  return A0_2
end
Lang = L0_1
