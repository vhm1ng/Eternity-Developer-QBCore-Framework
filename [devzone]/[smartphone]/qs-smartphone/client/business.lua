local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = RegisterNUICallback
L1_1 = "GetCurrentLawyers"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetCurrentLawyers"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "GetJobAlerts"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetAlertsJobs"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "RemoveAlertJob"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.alertID
  L3_2 = TriggerServerEvent
  L4_2 = "qs-smartphone:server:RemoveAlertJob"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
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
L1_1 = RegisterNUICallback
L2_1 = "SendJobAlert"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetEntityCoords
  L3_2 = PlayerPedId
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = {}
  L4_2 = A0_2.message
  L3_2.message = L4_2
  L4_2 = A0_2.img
  L3_2.img = L4_2
  L3_2.location = L2_2
  L4_2 = PhoneData
  L4_2 = L4_2.PlayerData
  L4_2 = L4_2.charinfo
  L4_2 = L4_2.phone
  L3_2.phone = L4_2
  L4_2 = TriggerServerEvent
  L5_2 = "qs-smartphone:server:sendJobAlert"
  L6_2 = L3_2
  L7_2 = A0_2.job
  L4_2(L5_2, L6_2, L7_2)
end
L1_1(L2_1, L3_1)
