local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = false
L1_1 = false
L2_1 = nil
L3_1 = nil
L4_1 = false
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L5_2 = World3dToScreen2d
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = A2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2, L8_2)
  L8_2 = table
  L8_2 = L8_2.unpack
  L9_2 = GetGameplayCamCoords
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L9_2()
  L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L11_2 = SetTextScale
  L12_2 = 0.35
  L13_2 = 0.35
  L11_2(L12_2, L13_2)
  L11_2 = SetTextFont
  L12_2 = 4
  L11_2(L12_2)
  L11_2 = SetTextProportional
  L12_2 = 1
  L11_2(L12_2)
  L11_2 = SetTextColour
  L12_2 = 255
  L13_2 = 255
  L14_2 = 255
  L15_2 = 215
  L11_2(L12_2, L13_2, L14_2, L15_2)
  L11_2 = SetTextEntry
  L12_2 = "STRING"
  L11_2(L12_2)
  L11_2 = SetTextCentre
  L12_2 = 1
  L11_2(L12_2)
  L11_2 = AddTextComponentString
  L12_2 = A3_2
  L11_2(L12_2)
  L11_2 = DrawText
  L12_2 = L6_2
  L13_2 = L7_2
  L11_2(L12_2, L13_2)
  L11_2 = string
  L11_2 = L11_2.len
  L12_2 = A3_2
  L11_2 = L11_2(L12_2)
  L11_2 = L11_2 / 370
  L12_2 = DrawRect
  L13_2 = L6_2
  L14_2 = L7_2 + 0.0125
  L15_2 = 0.015 + L11_2
  L16_2 = 0.03
  L17_2 = 41
  L18_2 = 11
  L19_2 = 41
  L20_2 = 100
  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
end
Draw3DText2 = L5_1
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = AddBlipForCoord
  L1_2 = Config
  L1_2 = L1_2.uberDelivery
  L2_2 = L2_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.x
  L2_2 = Config
  L2_2 = L2_2.uberDelivery
  L3_2 = L2_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.y
  L3_2 = Config
  L3_2 = L3_2.uberDelivery
  L4_2 = L2_1
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.z
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  uberBlip = L0_2
  L0_2 = SetBlipSprite
  L1_2 = uberBlip
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipColour
  L1_2 = uberBlip
  L2_2 = 16742399
  L0_2(L1_2, L2_2)
  L0_2 = SetBlipScale
  L1_2 = uberBlip
  L2_2 = 0.5
  L0_2(L1_2, L2_2)
  L0_2 = SetNewWaypoint
  L1_2 = Config
  L1_2 = L1_2.uberDelivery
  L2_2 = L2_1
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.x
  L2_2 = Config
  L2_2 = L2_2.uberDelivery
  L3_2 = L2_1
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.y
  L0_2(L1_2, L2_2)
end
blipOlustur = L5_1
L5_1 = RegisterNUICallback
L6_1 = "TakePurchase"
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = L0_1
  if L0_2 then
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "Notification"
    L2_2 = {}
    L3_2 = Lang
    L4_2 = "UBER_TITLE"
    L3_2 = L3_2(L4_2)
    L2_2.title = L3_2
    L3_2 = Lang
    L4_2 = "UBER_DISABLED"
    L3_2 = L3_2(L4_2)
    L2_2.text = L3_2
    L2_2.icon = "./img/apps/uber.png"
    L1_2.PhoneNotify = L2_2
    L0_2(L1_2)
    L0_2 = false
    L0_1 = L0_2
    L0_2 = true
    L1_1 = L0_2
    L0_2 = RemoveBlip
    L1_2 = uberBlip
    L0_2(L1_2)
  else
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "Notification"
    L2_2 = {}
    L3_2 = Lang
    L4_2 = "UBER_TITLE"
    L3_2 = L3_2(L4_2)
    L2_2.title = L3_2
    L3_2 = Lang
    L4_2 = "UBER_WAITING"
    L3_2 = L3_2(L4_2)
    L2_2.text = L3_2
    L2_2.icon = "./img/apps/uber.png"
    L1_2.PhoneNotify = L2_2
    L0_2(L1_2)
    L0_2 = true
    L0_1 = L0_2
    L0_2 = false
    L1_1 = L0_2
  end
end
L5_1(L6_1, L7_1)
L5_1 = Citizen
L5_1 = L5_1.CreateThread
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = L0_1
    if L0_2 then
      L0_2 = L1_1
      if not L0_2 then
        L0_2 = math
        L0_2 = L0_2.random
        L1_2 = 10000
        L2_2 = 15000
        L0_2 = L0_2(L1_2, L2_2)
        cooldown = L0_2
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = cooldown
        L0_2(L1_2)
        L0_2 = L0_1
        if L0_2 then
          L0_2 = PlaySound
          L1_2 = -1
          L2_2 = "Menu_Accept"
          L3_2 = "Phone_SoundSet_Default"
          L4_2 = 0
          L5_2 = 0
          L6_2 = 1
          L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2)
          L0_2 = math
          L0_2 = L0_2.random
          L1_2 = 1
          L2_2 = Config
          L2_2 = L2_2.uberItems
          L2_2 = #L2_2
          L0_2 = L0_2(L1_2, L2_2)
          L3_1 = L0_2
          L0_2 = SendNUIMessage
          L1_2 = {}
          L1_2.action = "Notification"
          L2_2 = {}
          L3_2 = Lang
          L4_2 = "UBER_TITLE"
          L3_2 = L3_2(L4_2)
          L2_2.title = L3_2
          L3_2 = Lang
          L4_2 = "UBER_ITEMREQ1"
          L3_2 = L3_2(L4_2)
          L4_2 = " "
          L5_2 = Config
          L5_2 = L5_2.uberItems
          L6_2 = L3_1
          L5_2 = L5_2[L6_2]
          L5_2 = L5_2.name
          L6_2 = " "
          L7_2 = Lang
          L8_2 = "UBER_ITEMREQ2"
          L7_2 = L7_2(L8_2)
          L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
          L2_2.text = L3_2
          L2_2.icon = "./img/apps/uber.png"
          L2_2.timeout = 4500
          L1_2.PhoneNotify = L2_2
          L0_2(L1_2)
          L0_2 = true
          L1_1 = L0_2
          L0_2 = math
          L0_2 = L0_2.random
          L1_2 = 1
          L2_2 = Config
          L2_2 = L2_2.uberDelivery
          L2_2 = #L2_2
          L0_2 = L0_2(L1_2, L2_2)
          L2_1 = L0_2
          L0_2 = GetStreetNameFromHashKey
          L1_2 = GetStreetNameAtCoord
          L2_2 = Config
          L2_2 = L2_2.uberDelivery
          L3_2 = L2_1
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.x
          L3_2 = Config
          L3_2 = L3_2.uberDelivery
          L4_2 = L2_1
          L3_2 = L3_2[L4_2]
          L3_2 = L3_2.y
          L4_2 = Config
          L4_2 = L4_2.uberDelivery
          L5_2 = L2_1
          L4_2 = L4_2[L5_2]
          L4_2 = L4_2.z
          L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2(L2_2, L3_2, L4_2)
          L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
          L1_2 = SendNUIMessage
          L2_2 = {}
          L2_2.event = "updateSiparisStatus"
          L2_2.status = true
          L1_2(L2_2)
          L1_2 = SendNUIMessage
          L2_2 = {}
          L2_2.event = "updateSiparisAdres"
          L2_2.adres = L0_2
          L1_2(L2_2)
          L1_2 = SendNUIMessage
          L2_2 = {}
          L2_2.event = "updateSiparisUrun"
          L3_2 = Config
          L3_2 = L3_2.uberItems
          L4_2 = L3_1
          L3_2 = L3_2[L4_2]
          L3_2 = L3_2.name
          L2_2.urun = L3_2
          L1_2(L2_2)
          L1_2 = blipOlustur
          L1_2()
        end
    end
    else
      L0_2 = L0_1
      if not L0_2 then
        L0_2 = true
        L1_1 = L0_2
      end
    end
  end
end
L5_1(L6_1)
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = false
  L4_1 = L0_2
  L0_2 = false
  L1_1 = L0_2
  L0_2 = RemoveBlip
  L1_2 = uberBlip
  L0_2(L1_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "Notification"
  L2_2 = {}
  L3_2 = Lang
  L4_2 = "UBER_TITLE"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L3_2 = Lang
  L4_2 = "UBER_PAYMENT"
  L3_2 = L3_2(L4_2)
  L2_2.text = L3_2
  L2_2.icon = "./img/apps/uber.png"
  L1_2.PhoneNotify = L2_2
  L0_2(L1_2)
  L0_2 = randomNum
  if 1 == L0_2 then
    L0_2 = TriggerServerEvent
    L1_2 = "qs-smartphone:server:uberPay"
    L2_2 = L3_1
    L3_2 = randomNum
    L0_2(L1_2, L2_2, L3_2)
    L0_2 = SendNUIMessage
    L1_2 = {}
    L1_2.action = "Notification"
    L2_2 = {}
    L3_2 = Lang
    L4_2 = "UBER_TITLE"
    L3_2 = L3_2(L4_2)
    L2_2.title = L3_2
    L3_2 = Lang
    L4_2 = "UBER_TIP"
    L3_2 = L3_2(L4_2)
    L2_2.text = L3_2
    L2_2.icon = "./img/apps/uber.png"
    L1_2.PhoneNotify = L2_2
    L0_2(L1_2)
  else
    L0_2 = randomNum
    if 2 == L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = "qs-smartphone:server:uberPay"
      L2_2 = L3_1
      L3_2 = randomNum
      L0_2(L1_2, L2_2, L3_2)
    end
  end
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.event = "updateSiparisStatus"
  L1_2.status = false
  L0_2(L1_2)
end
rewarduber = L5_1
L5_1 = false
L6_1 = Citizen
L6_1 = L6_1.CreateThread
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
    L0_2 = L0_1
    if L0_2 then
      L0_2 = L2_1
      if nil ~= L0_2 then
        L0_2 = GetDistanceBetweenCoords
        L1_2 = GetEntityCoords
        L2_2 = GetPlayerPed
        L3_2 = -1
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
        L2_2 = Config
        L2_2 = L2_2.uberDelivery
        L3_2 = L2_1
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.x
        L3_2 = Config
        L3_2 = L3_2.uberDelivery
        L4_2 = L2_1
        L3_2 = L3_2[L4_2]
        L3_2 = L3_2.y
        L4_2 = Config
        L4_2 = L4_2.uberDelivery
        L5_2 = L2_1
        L4_2 = L4_2[L5_2]
        L4_2 = L4_2.z
        L5_2 = true
        L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
        if L0_2 < 2.0 then
          L0_2 = L1_1
          if L0_2 then
            L0_2 = L4_1
            if not L0_2 then
              L0_2 = Draw3DText2
              L1_2 = Config
              L1_2 = L1_2.uberDelivery
              L2_2 = L2_1
              L1_2 = L1_2[L2_2]
              L1_2 = L1_2.x
              L2_2 = Config
              L2_2 = L2_2.uberDelivery
              L3_2 = L2_1
              L2_2 = L2_2[L3_2]
              L2_2 = L2_2.y
              L3_2 = Config
              L3_2 = L3_2.uberDelivery
              L4_2 = L2_1
              L3_2 = L3_2[L4_2]
              L3_2 = L3_2.z
              L3_2 = L3_2 + 0.3
              L4_2 = Lang
              L5_2 = "UBER_DELIVER_FOOD"
              L4_2, L5_2 = L4_2(L5_2)
              L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
              L0_2 = IsControlJustPressed
              L1_2 = 1
              L2_2 = 38
              L0_2 = L0_2(L1_2, L2_2)
              if L0_2 then
                L0_2 = L5_1
                if not L0_2 then
                  L0_2 = true
                  L5_1 = L0_2
                  L0_2 = QSPhone
                  L0_2 = L0_2.TriggerServerCallback
                  L1_2 = "qs-smartphone:checkItem"
                  function L2_2(A0_3)
                    local L1_3, L2_3, L3_3, L4_3, L5_3
                    L1_3 = false
                    L5_1 = L1_3
                    if A0_3 and A0_3 > 0 then
                      L1_3 = true
                      L4_1 = L1_3
                      L1_3 = math
                      L1_3 = L1_3.random
                      L2_3 = 1
                      L3_3 = 2
                      L1_3 = L1_3(L2_3, L3_3)
                      randomNum = L1_3
                      L1_3 = PlayAnimation
                      L2_3 = PlayerPedId
                      L2_3 = L2_3()
                      L3_3 = "timetable@jimmy@doorknock@"
                      L4_3 = "knockdoor_idle"
                      L1_3(L2_3, L3_3, L4_3)
                      L1_3 = Citizen
                      L1_3 = L1_3.Wait
                      L2_3 = 3000
                      L1_3(L2_3)
                      L1_3 = randomNum
                      if 1 == L1_3 then
                        L1_3 = TaskStartScenarioInPlace
                        L2_3 = PlayerPedId
                        L2_3 = L2_3()
                        L3_3 = "PROP_HUMAN_BUM_BIN"
                        L4_3 = 0
                        L5_3 = true
                        L1_3(L2_3, L3_3, L4_3, L5_3)
                        L1_3 = Citizen
                        L1_3 = L1_3.Wait
                        L2_3 = 3000
                        L1_3(L2_3)
                        L1_3 = ClearPedTasks
                        L2_3 = PlayerPedId
                        L2_3, L3_3, L4_3, L5_3 = L2_3()
                        L1_3(L2_3, L3_3, L4_3, L5_3)
                        delivery1 = false
                        L1_3 = false
                        L1_1 = L1_3
                        L1_3 = rewarduber
                        L1_3()
                      else
                        L1_3 = TaskStartScenarioInPlace
                        L2_3 = PlayerPedId
                        L2_3 = L2_3()
                        L3_3 = "PROP_HUMAN_BUM_BIN"
                        L4_3 = 0
                        L5_3 = true
                        L1_3(L2_3, L3_3, L4_3, L5_3)
                        L1_3 = Citizen
                        L1_3 = L1_3.Wait
                        L2_3 = 3000
                        L1_3(L2_3)
                        L1_3 = ClearPedTasks
                        L2_3 = PlayerPedId
                        L2_3, L3_3, L4_3, L5_3 = L2_3()
                        L1_3(L2_3, L3_3, L4_3, L5_3)
                        L1_3 = PlaceObjectOnGroundProperly
                        L2_3 = PackageDeliveryObject
                        L1_3(L2_3)
                        L1_3 = rewarduber
                        L1_3()
                      end
                    else
                      L1_3 = SendTextMessage
                      L2_3 = Lang
                      L3_3 = "UBER_NO_ITEM"
                      L2_3 = L2_3(L3_3)
                      L3_3 = " "
                      L4_3 = Config
                      L4_3 = L4_3.uberItems
                      L5_3 = L3_1
                      L4_3 = L4_3[L5_3]
                      L4_3 = L4_3.name
                      L2_3 = L2_3 .. L3_3 .. L4_3
                      L3_3 = "error"
                      L1_3(L2_3, L3_3)
                    end
                  end
                  L3_2 = Config
                  L3_2 = L3_2.uberItems
                  L4_2 = L3_1
                  L3_2 = L3_2[L4_2]
                  L3_2 = L3_2.item
                  L0_2(L1_2, L2_2, L3_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
L6_1(L7_1)
--[[L6_1 = {}
L7_1 = "diables_x_quasar_phone_black"
L8_1 = "diables_x_quasar_phone_blue"
L9_1 = "diables_x_quasar_phone_gold"
L10_1 = "diables_x_quasar_phone_green"
L11_1 = "diables_x_quasar_phone_greenlight"
L12_1 = "diables_x_quasar_phone_grey"
L13_1 = "diables_x_quasar_phone_pink"
L14_1 = "diables_x_quasar_phone_purple"
L15_1 = "diables_x_quasar_phone_red"
L16_1 = "diables_x_quasar_phone_white"
L6_1[1] = L7_1
L6_1[2] = L8_1
L6_1[3] = L9_1
L6_1[4] = L10_1
L6_1[5] = L11_1
L6_1[6] = L12_1
L6_1[7] = L13_1
L6_1[8] = L14_1
L6_1[9] = L15_1
L6_1[10] = L16_1
L7_1 = Citizen
L7_1 = L7_1.CreateThread
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L6_1
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
L7_1(L8_1)]]
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  if A1_2 then
    L4_2 = Citizen
    L4_2 = L4_2.CreateThread
    function L5_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
      L0_3 = RequestAnimDict
      L1_3 = A1_2
      L0_3(L1_3)
      while true do
        L0_3 = HasAnimDictLoaded
        L1_3 = A1_2
        L0_3 = L0_3(L1_3)
        if L0_3 then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 100
        L0_3(L1_3)
      end
      L0_3 = A3_2
      if nil == L0_3 then
        L0_3 = TaskPlayAnim
        L1_3 = A0_2
        L2_3 = A1_2
        L3_3 = A2_2
        L4_3 = 1.0
        L5_3 = -1.0
        L6_3 = 1.0
        L7_3 = 0
        L8_3 = 0
        L9_3 = 0
        L10_3 = 0
        L11_3 = 0
        L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3)
      else
        L0_3 = 1.0
        L1_3 = -1.0
        L2_3 = 1.0
        L3_3 = 0
        L4_3 = 0
        L5_3 = A3_2.speed
        if nil ~= L5_3 then
          L0_3 = A3_2.speed
        end
        L5_3 = A3_2.speedMultiplier
        if nil ~= L5_3 then
          L1_3 = A3_2.speedMultiplier
        end
        L5_3 = A3_2.duration
        if nil ~= L5_3 then
          L2_3 = A3_2.duration
        end
        L5_3 = A3_2.flag
        if nil ~= L5_3 then
          L3_3 = A3_2.flag
        end
        L5_3 = A3_2.playbackRate
        if nil ~= L5_3 then
          L4_3 = A3_2.playbackRate
        end
        L5_3 = TaskPlayAnim
        L6_3 = A0_2
        L7_3 = A1_2
        L8_3 = A2_2
        L9_3 = L0_3
        L10_3 = L1_3
        L11_3 = L2_3
        L12_3 = L3_3
        L13_3 = L4_3
        L14_3 = 0
        L15_3 = 0
        L16_3 = 0
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      end
      L0_3 = RemoveAnimDict
      L1_3 = A1_2
      L0_3(L1_3)
    end
    L4_2(L5_2)
  else
    L4_2 = TaskStartScenarioInPlace
    L5_2 = A0_2
    L6_2 = A2_2
    L7_2 = 0
    L8_2 = true
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
PlayAnimation = L7_1
L7_1 = {}
L8_1 = nil
L9_1 = RegisterNUICallback
L10_1 = "GetVehicleInfo"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = getVehicleClassPedIsIn
  L2_2 = L2_2()
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
  if not L2_2 then
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "Notification"
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "UBERDRIVER_TITLE"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = Lang
    L7_2 = "UBERDRIVER_VEHICLE_INCOMPATIBLE"
    L6_2 = L6_2(L7_2)
    L5_2.text = L6_2
    L5_2.icon = "./img/apps/uberDriver.png"
    L5_2.timeout = 4500
    L4_2.PhoneNotify = L5_2
    L3_2(L4_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "beUberDriver"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:canBeUberDriver"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L1_3 = GetVehiclePedIsIn
      L2_3 = PlayerPedId
      L2_3 = L2_3()
      L3_3 = false
      L1_3 = L1_3(L2_3, L3_3)
      L2_3 = GetVehicleColours
      L3_3 = L1_3
      L2_3 = L2_3(L3_3)
      L3_3 = getVehicleClassPedIsIn
      L3_3 = L3_3()
      L7_1.vehicleClass = L3_3
      L3_3 = GetVehicleNumberPlateText
      L4_3 = L1_3
      L3_3 = L3_3(L4_3)
      L7_1.vehiclePlate = L3_3
      L3_3 = GetDisplayNameFromVehicleModel
      L4_3 = GetEntityModel
      L5_3 = L1_3
      L4_3, L5_3 = L4_3(L5_3)
      L3_3 = L3_3(L4_3, L5_3)
      L7_1.vehicleModel = L3_3
      L3_3 = Config
      L3_3 = L3_3.Colors
      L4_3 = tonumber
      L5_3 = L2_3
      L4_3 = L4_3(L5_3)
      L3_3 = L3_3[L4_3]
      L7_1.vehicleColor = L3_3
      L3_3 = tonumber
      L4_3 = A0_2.price
      L3_3 = L3_3(L4_3)
      L7_1.price = L3_3
      L3_3 = TriggerServerEvent
      L4_3 = "qs-smartphone:SetDriverData"
      L5_3 = L7_1
      L3_3(L4_3, L5_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "getUberCarData"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:getUberCarData"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "uberCustomerGetPhone"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:uberCustomerGetPhone"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "UberDriverGetPhone"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:UberDriverGetPhone"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "GetDriversData"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetDriversData"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  if A0_2 then
    L5_2 = A0_2.class
    if L5_2 then
      goto lbl_11
    end
  end
  L5_2 = nil
  ::lbl_11::
  L2_2(L3_2, L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "cancelRequest"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L8_1.enteredVehicle
  if L2_2 then
    L2_2 = SendTextMessage
    L3_2 = Lang
    L4_2 = "UBERDRIVER_DONT_CANCEL"
    L3_2 = L3_2(L4_2)
    L4_2 = "inform"
    return L2_2(L3_2, L4_2)
  end
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:cancelRequest"
  L2_2(L3_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:refreshUberDriverApp"
function L11_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "refreshUberDriver"
  L0_2(L1_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "leaveUberDriver"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L7_1
  if L2_2 then
    L2_2 = {}
    L7_1 = L2_2
    L2_2 = TriggerServerEvent
    L3_2 = "qs-smartphone:SetDriverData"
    L4_2 = nil
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "Notification"
  L4_2 = {}
  L5_2 = Lang
  L6_2 = "UBERDRIVER_TITLE"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L5_2 = Lang
  L6_2 = "UBERDRIVER_NOT_A_DRIVER"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L4_2.icon = "./img/apps/uberDriver.png"
  L4_2.timeout = 4500
  L3_2.PhoneNotify = L4_2
  L2_2(L3_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:LeavedDriver"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "Notification"
  L2_2 = {}
  L3_2 = Lang
  L4_2 = "UBERDRIVER_TITLE"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L3_2 = Lang
  L4_2 = "UBERDRIVER_DRIVER_CANCELLED"
  L3_2 = L3_2(L4_2)
  L2_2.text = L3_2
  L2_2.icon = "./img/apps/uberDriver.png"
  L2_2.timeout = 4500
  L1_2.PhoneNotify = L2_2
  L0_2(L1_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "canceTakeUberDriverRequestRequestByDriver"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:cancelRequest"
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "getUberDriverData"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:getUberDriverData"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNUICallback
L10_1 = "requestUberDriver"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:CanRequestUberDriver"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L1_3 = A0_2.data
      L8_1 = L1_3
      L1_3 = {}
      L2_3 = GetPlayerServerId
      L3_3 = PlayerId
      L3_3, L4_3, L5_3 = L3_3()
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L1_3.src = L2_3
      L2_3 = GetPlayerDataFramework
      L2_3 = L2_3()
      L2_3 = L2_3.charinfo
      L2_3 = L2_3.phone
      L1_3.phoneNumber = L2_3
      L2_3 = GetEntityCoords
      L3_3 = PlayerPedId
      L3_3, L4_3, L5_3 = L3_3()
      L2_3 = L2_3(L3_3, L4_3, L5_3)
      L1_3.entityCoords = L2_3
      L8_1.customer = L1_3
      L8_1.km = 0
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "refreshUberDriver"
      L1_3(L2_3)
      L1_3 = TriggerServerEvent
      L2_3 = "qs-smartphone:RequestUberDriver"
      L3_3 = L8_1
      L1_3(L2_3, L3_3)
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "Notification"
      L3_3 = {}
      L4_3 = Lang
      L5_3 = "UBERDRIVER_TITLE"
      L4_3 = L4_3(L5_3)
      L3_3.title = L4_3
      L4_3 = Lang
      L5_3 = "UBERDRIVER_LOCATION_SENT"
      L4_3 = L4_3(L5_3)
      L3_3.text = L4_3
      L3_3.icon = "./img/apps/uberDriver.png"
      L3_3.timeout = 4500
      L2_3.PhoneNotify = L3_3
      L1_3(L2_3)
      while true do
        L1_3 = QSPhone
        L1_3 = L1_3.TriggerServerCallback
        L2_3 = "qs-smartphone:getUberDistance"
        function L3_3(A0_4)
          local L1_4, L2_4
          L1_4 = SendNUIMessage
          L2_4 = {}
          L2_4.action = "updateUberDistance"
          L2_4.dst = A0_4
          L1_4(L2_4)
        end
        L1_3(L2_3, L3_3)
        L1_3 = L8_1.enteredVehicle
        if L1_3 then
          L1_3 = SendNUIMessage
          L2_3 = {}
          L2_3.action = "updateUberDistance"
          L2_3.finish = true
          L1_3(L2_3)
          break
        end
        L1_3 = Wait
        L2_3 = 1000
        L1_3(L2_3)
      end
    end
  end
  L5_2 = A0_2.data
  L5_2 = L5_2.src
  L2_2(L3_2, L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:TakeUberDriverRequest"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "Notification"
  L3_2 = {}
  L4_2 = Lang
  L5_2 = "UBERDRIVER_TITLE"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = Lang
  L5_2 = "UBERDRIVER_NEW_CLIENT"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L3_2.icon = "./img/apps/uberDriver.png"
  L3_2.timeout = 4500
  L2_2.PhoneNotify = L3_2
  L1_2(L2_2)
  L1_2 = SetNewWaypoint
  L2_2 = A0_2.customer
  L2_2 = L2_2.entityCoords
  L2_2 = L2_2.x
  L3_2 = A0_2.customer
  L3_2 = L3_2.entityCoords
  L3_2 = L3_2.y
  L1_2(L2_2, L3_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "refreshUberDriver"
  L1_2(L2_2)
end
L9_1(L10_1, L11_1)
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L1_2 = GetVehicleNumberPlateText
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L8_1.vehiclePlate
    if L1_2 == L2_2 then
      return L0_2
    end
  end
  L1_2 = false
  return L1_2
end
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L0_2 = 1250
    L1_2 = L8_1
    if L1_2 then
      L1_2 = L9_1
      L1_2 = L1_2()
      if L1_2 and 0 ~= L1_2 then
        L2_2 = L8_1.enteredVehicle
        if not L2_2 then
          L2_2 = VehToNet
          L3_2 = L1_2
          L2_2 = L2_2(L3_2)
          L8_1.enteredVehicle = L2_2
          L2_2 = SendTextMessage
          L3_2 = Lang
          L4_2 = "UBERDRIVER_CHOOSE_LOCATION"
          L3_2 = L3_2(L4_2)
          L4_2 = "inform"
          L2_2(L3_2, L4_2)
          L2_2 = ClearGpsPlayerWaypoint
          L2_2()
          L2_2 = CreateThread
          function L3_2()
            local L0_3, L1_3, L2_3
            while true do
              L0_3 = IsWaypointActive
              L0_3 = L0_3()
              if L0_3 then
                break
              end
              L0_3 = SendTextMessage
              L1_3 = Lang
              L2_3 = "UBERDRIVER_CHOOSE_LOCATION_MAP"
              L1_3 = L1_3(L2_3)
              L2_3 = "inform"
              L0_3(L1_3, L2_3)
              L0_3 = Wait
              L1_3 = 3000
              L0_3(L1_3)
            end
          end
          L2_2(L3_2)
          while true do
            L2_2 = IsWaypointActive
            L2_2 = L2_2()
            if L2_2 then
              L2_2 = GetFirstBlipInfoId
              L3_2 = 8
              L2_2 = L2_2(L3_2)
              L3_2 = GetBlipCoords
              L4_2 = L2_2
              L3_2 = L3_2(L4_2)
              L4_2 = vec2
              L5_2 = L3_2.x
              L6_2 = L3_2.y
              L4_2 = L4_2(L5_2, L6_2)
              L8_1.gps = L4_2
              break
            end
            L2_2 = Wait
            L3_2 = 200
            L2_2(L3_2)
          end
          L2_2 = TriggerServerEvent
          L3_2 = "qs-smartphone:UpdateCustomKey"
          L4_2 = "enteredVehicle"
          L5_2 = L8_1.enteredVehicle
          L2_2(L3_2, L4_2, L5_2)
          L2_2 = CreateThread
          function L3_2()
            local L0_3, L1_3, L2_3, L3_3
            while true do
              L0_3 = L8_1.enteredVehicle
              if not L0_3 then
                break
              end
              L0_3 = GetEntityCoords
              L1_3 = L1_2
              L0_3 = L0_3(L1_3)
              L1_3 = L8_1.gps
              if L1_3 then
                L1_3 = vec2
                L2_3 = L0_3.x
                L3_3 = L0_3.y
                L1_3 = L1_3(L2_3, L3_3)
                L2_3 = L8_1.gps
                L1_3 = L1_3 - L2_3
                L1_3 = #L1_3
                if L1_3 <= 50.0 then
                  L2_3 = TriggerServerEvent
                  L3_3 = "qs-smartphone:FinishUberDriver"
                  L2_3(L3_3)
                  L2_3 = nil
                  L8_1 = L2_3
                  break
                end
              end
              L1_3 = Wait
              L2_3 = 50
              L1_3(L2_3)
            end
          end
          L2_2(L3_2)
        end
      end
    end
    L1_2 = Wait
    L2_2 = L0_2
    L1_2(L2_2)
  end
end
L10_1(L11_1)
function L10_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetVehiclePedIsIn
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = false
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = GetPedInVehicleSeat
  L2_2 = L0_2
  L3_2 = -1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if L1_2 == L2_2 then
    L1_2 = Config
    L1_2 = L1_2.Classes
    L2_2 = GetVehicleClass
    L3_2 = L0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    if L1_2 then
      return L1_2
    end
  end
  L1_2 = false
  return L1_2
end
getVehicleClassPedIsIn = L10_1
