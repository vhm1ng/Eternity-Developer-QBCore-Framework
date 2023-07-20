local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = false
  while true do
    L1_2 = false
    L2_2 = ""
    L3_2 = 1250
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = GetEntityCoords
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = Config
    L6_2 = L6_2.ResetPassword
    L6_2 = L6_2.coords
    L6_2 = L6_2 - L5_2
    L6_2 = #L6_2
    if L6_2 <= 4.0 then
      L3_2 = 3
      L7_2 = Config
      L7_2 = L7_2.okokTextUI
      L7_2 = L7_2.enable
      if L7_2 then
        L1_2 = true
        L7_2 = Config
        L7_2 = L7_2.ResetPassword
        L2_2 = L7_2.text
      else
        L7_2 = DrawText3D
        L8_2 = Config
        L8_2 = L8_2.ResetPassword
        L8_2 = L8_2.coords
        L8_2 = L8_2.x
        L9_2 = Config
        L9_2 = L9_2.ResetPassword
        L9_2 = L9_2.coords
        L9_2 = L9_2.y
        L10_2 = Config
        L10_2 = L10_2.ResetPassword
        L10_2 = L10_2.coords
        L10_2 = L10_2.z
        L11_2 = Config
        L11_2 = L11_2.ResetPassword
        L11_2 = L11_2.text
        L7_2(L8_2, L9_2, L10_2, L11_2)
      end
    end
    if L6_2 <= 2 then
      L7_2 = IsControlJustPressed
      L8_2 = 0
      L9_2 = 38
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L7_2 = OpenPhoneNpcMenu
        L7_2()
      end
    end
    L7_2 = Config
    L7_2 = L7_2.okokTextUI
    L7_2 = L7_2.enable
    if L7_2 then
      if L1_2 and not L0_2 then
        L0_2 = true
        L7_2 = exports
        L7_2 = L7_2.okokTextUI
        L8_2 = L7_2
        L7_2 = L7_2.Open
        L9_2 = Config
        L9_2 = L9_2.ResetPassword
        L9_2 = L9_2.text
        L10_2 = Config
        L10_2 = L10_2.okokTextUI
        L10_2 = L10_2.colour
        L11_2 = Config
        L11_2 = L11_2.okokTextUI
        L11_2 = L11_2.position
        L7_2(L8_2, L9_2, L10_2, L11_2)
      elseif not L1_2 and L0_2 then
        L0_2 = false
        L7_2 = exports
        L7_2 = L7_2.okokTextUI
        L8_2 = L7_2
        L7_2 = L7_2.Close
        L7_2(L8_2)
      end
    end
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = L3_2
    L7_2(L8_2)
  end
end
L0_1(L1_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    L0_2 = {}
    L1_2 = table
    L1_2 = L1_2.insert
    L2_2 = L0_2
    L3_2 = {}
    L4_2 = Lang
    L5_2 = "SMARTPHONE_RESET_PASSWORD"
    L4_2 = L4_2(L5_2)
    L3_2.label = L4_2
    L3_2.value = "password_phone"
    L1_2(L2_2, L3_2)
    L1_2 = Config
    L1_2 = L1_2.RepairWetPhoneNpc
    if L1_2 then
      L1_2 = table
      L1_2 = L1_2.insert
      L2_2 = L0_2
      L3_2 = {}
      L4_2 = Lang
      L5_2 = "REPAIR_WET_PHONE"
      L4_2 = L4_2(L5_2)
      L3_2.label = L4_2
      L3_2.value = "wet_phone"
      L1_2(L2_2, L3_2)
    end
    L1_2 = ESX
    L1_2 = L1_2.UI
    L1_2 = L1_2.Menu
    L1_2 = L1_2.Open
    L2_2 = "default"
    L3_2 = GetCurrentResourceName
    L3_2 = L3_2()
    L4_2 = "create_room"
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "PHONE_REPAIR"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L5_2.align = "right"
    L5_2.elements = L0_2
    function L6_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3
      L2_3 = A0_3.current
      L2_3 = L2_3.value
      if "password_phone" == L2_3 then
        L2_3 = TriggerServerEvent
        L3_3 = "qs-smartphone:SetPassword"
        L4_3 = nil
        L5_3 = true
        L2_3(L3_3, L4_3, L5_3)
        L2_3 = SendNUIMessage
        L3_3 = {}
        L3_3.action = "PhoneNotification"
        L4_3 = {}
        L5_3 = Lang
        L6_3 = "SETTINGS_TITLE"
        L5_3 = L5_3(L6_3)
        L4_3.title = L5_3
        L5_3 = Lang
        L6_3 = "PASSWORD_RESET_TECH"
        L5_3 = L5_3(L6_3)
        L4_3.text = L5_3
        L4_3.icon = "./img/apps/settings.png"
        L3_3.PhoneNotify = L4_3
        L2_3(L3_3)
        L2_3 = A1_3.close
        L2_3()
      else
        L2_3 = A0_3.current
        L2_3 = L2_3.value
        if "wet_phone" == L2_3 then
          L2_3 = TriggerServerEvent
          L3_3 = "qs-smartphone:phoneBreakdownRepairTech"
          L2_3(L3_3)
          L2_3 = A1_3.close
          L2_3()
        end
      end
    end
    function L7_2(A0_3, A1_3)
      local L2_3
      L2_3 = A1_3.close
      L2_3()
    end
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = {}
      L1_2 = {}
      L2_2 = Lang
      L3_2 = "PHONE_REPAIR"
      L2_2 = L2_2(L3_2)
      L1_2.header = L2_2
      L1_2.isMenuHeader = true
      L2_2 = {}
      L3_2 = Lang
      L4_2 = "SMARTPHONE_RESET_PASSWORD"
      L3_2 = L3_2(L4_2)
      L2_2.header = L3_2
      L3_2 = {}
      L3_2.event = "qs-smartphone:phoneBreakdownPasswordEvent"
      L2_2.params = L3_2
      L0_2[1] = L1_2
      L0_2[2] = L2_2
      L1_2 = Config
      L1_2 = L1_2.RepairWetPhoneNpc
      if L1_2 then
        L1_2 = table
        L1_2 = L1_2.insert
        L2_2 = L0_2
        L3_2 = {}
        L4_2 = Lang
        L5_2 = "REPAIR_WET_PHONE"
        L4_2 = L4_2(L5_2)
        L3_2.header = L4_2
        L4_2 = {}
        L4_2.event = "qs-smartphone:phoneBreakdownRepairEvent"
        L3_2.params = L4_2
        L1_2(L2_2, L3_2)
      end
      L1_2 = TriggerEvent
      L2_2 = "et-menu:client:openMenu"
      L3_2 = L0_2
      L1_2(L2_2, L3_2)
    end
  end
end
OpenPhoneNpcMenu = L0_1
L0_1 = AddEventHandler
L1_1 = "qs-smartphone:phoneBreakdownPasswordEvent"
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = TriggerServerEvent
  L1_2 = "qs-smartphone:SetPassword"
  L2_2 = nil
  L3_2 = true
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "PhoneNotification"
  L2_2 = {}
  L3_2 = Lang
  L4_2 = "SETTINGS_TITLE"
  L3_2 = L3_2(L4_2)
  L2_2.title = L3_2
  L3_2 = Lang
  L4_2 = "PASSWORD_RESET_TECH"
  L3_2 = L3_2(L4_2)
  L2_2.text = L3_2
  L2_2.icon = "./img/apps/settings.png"
  L1_2.PhoneNotify = L2_2
  L0_2(L1_2)
end
L0_1(L1_1, L2_1)
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
L1_1 = AddEventHandler
L2_1 = "qs-smartphone:phoneBreakdownRepairEvent"
function L3_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "qs-smartphone:phoneBreakdownRepair"
  L0_2(L1_2)
end
L1_1(L2_1, L3_1)
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Config
  L0_2 = L0_2.ResetPassword
  L0_2 = L0_2.ped
  L1_2 = RequestModel
  L2_2 = L0_2.model
  L1_2(L2_2)
  while true do
    L1_2 = HasModelLoaded
    L2_2 = L0_2.model
    L1_2 = L1_2(L2_2)
    if L1_2 then
      break
    end
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 3
    L1_2(L2_2)
  end
  L1_2 = CreatePed
  L2_2 = 1
  L3_2 = L0_2.model
  L4_2 = L0_2.coords
  L4_2 = L4_2.x
  L5_2 = L0_2.coords
  L5_2 = L5_2.y
  L6_2 = L0_2.coords
  L6_2 = L6_2.z
  L6_2 = L6_2 - 1
  L7_2 = L0_2.h
  L8_2 = 0
  L9_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = SetBlockingOfNonTemporaryEvents
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetPedDiesWhenInjured
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetPedCanPlayAmbientAnims
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetPedCanRagdollFromPlayerImpact
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityInvincible
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = FreezeEntityPosition
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L1_1(L2_1)
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Config
  L0_2 = L0_2.ResetPassword
  L0_2 = L0_2.blip
  L1_2 = AddBlipForCoord
  L2_2 = L0_2.coords
  L1_2 = L1_2(L2_2)
  L2_2 = SetBlipSprite
  L3_2 = L1_2
  L4_2 = L0_2.sprite
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipColour
  L3_2 = L1_2
  L4_2 = L0_2.color
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipScale
  L3_2 = L1_2
  L4_2 = L0_2.scale
  L2_2(L3_2, L4_2)
  L2_2 = BeginTextCommandSetBlipName
  L3_2 = "STRING"
  L2_2(L3_2)
  L2_2 = AddTextComponentString
  L3_2 = L0_2.name
  L2_2(L3_2)
  L2_2 = EndTextCommandSetBlipName
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = SetBlipAsShortRange
  L3_2 = L1_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L1_1(L2_1)
