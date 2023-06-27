local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1, L37_1, L38_1, L39_1, L40_1, L41_1, L42_1
ESX = nil
QS = nil
QBCore = nil
FENER = false
FirstCheckHavePhone = false
HavePhone = false
L0_1 = nil
L1_1 = {}
L2_1 = ""
L3_1 = nil
L4_1 = nil
L5_1 = false
L6_1 = false
phoneLoaded = false
checked = false
L7_1 = Config
L7_1 = L7_1.PhoneApplications
L8_1 = Citizen
L8_1 = L8_1.CreateThread
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.Framework
  if "ESX" == L0_2 then
    while true do
      L0_2 = ESX
      if nil ~= L0_2 then
        break
      end
      L0_2 = Config
      L0_2 = L0_2.getSharedObjectExport
      if L0_2 then
        L0_2 = exports
        L0_2 = L0_2.es_extended
        L1_2 = L0_2
        L0_2 = L0_2.getSharedObject
        L0_2 = L0_2(L1_2)
        ESX = L0_2
      else
        L0_2 = TriggerEvent
        L1_2 = Config
        L1_2 = L1_2.getSharedObject
        function L2_2(A0_3)
          local L1_3
          ESX = A0_3
        end
        L0_2(L1_2, L2_2)
      end
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 0
      L0_2(L1_2)
    end
    while true do
      L0_2 = QS
      if nil ~= L0_2 then
        break
      end
      L0_2 = TriggerEvent
      L1_2 = "qs-base:getSharedObject"
      function L2_2(A0_3)
        local L1_3
        QS = A0_3
      end
      L0_2(L1_2, L2_2)
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 0
      L0_2(L1_2)
    end
    while true do
      L0_2 = ESX
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      L0_2 = L0_2.job
      if nil ~= L0_2 then
        break
      end
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 10
      L0_2(L1_2)
    end
    L0_2 = ESX
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerData
    L1_2 = L1_2()
    L0_2.PlayerData = L1_2
    L0_2 = Wait
    L1_2 = 200
    L0_2(L1_2)
    L0_2 = TriggerServerEvent
    L1_2 = "qs-smartphone:server:btShare"
    L2_2 = false
    L0_2(L1_2, L2_2)
  else
    L0_2 = Config
    L0_2 = L0_2.Framework
    if "QBCore" == L0_2 then
      L0_2 = exports
      L1_2 = Config
      L1_2 = L1_2.QBCoreGetCoreObject
      L0_2 = L0_2[L1_2]
      L1_2 = L0_2
      L0_2 = L0_2.GetCoreObject
      L0_2 = L0_2(L1_2)
      QBCore = L0_2
      while true do
        L0_2 = QBCore
        L0_2 = L0_2.Functions
        L0_2 = L0_2.GetPlayerData
        L0_2 = L0_2()
        L0_2 = L0_2.job
        if nil ~= L0_2 then
          break
        end
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 10
        L0_2(L1_2)
      end
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      PlayerData = L0_2
      L0_2 = Wait
      L1_2 = 200
      L0_2(L1_2)
      L0_2 = TriggerServerEvent
      L1_2 = "qs-smartphone:server:btShare"
      L2_2 = false
      L0_2(L1_2, L2_2)
    end
  end
end
L8_1(L9_1)
L8_1 = RegisterNetEvent
L9_1 = Config
L9_1 = L9_1.playerLoaded
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = Config
L9_1 = L9_1.playerLoaded
function L10_1(A0_2)
  local L1_2, L2_2
  PlayerData = A0_2
  L1_2 = L5_1
  if not L1_2 then
    L1_2 = true
    L5_1 = L1_2
    L1_2 = LoadPhone
    L1_2()
  end
  L1_2 = Config
  L1_2 = L1_2.UseESXchecks
  if L1_2 then
    L1_2 = TriggerServerEvent
    L2_2 = "qs-smartphone:CheckHavePhoneStatus"
    L1_2(L2_2)
  end
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = Config
L9_1 = L9_1.QBCoreplayerLoaded
L8_1(L9_1)
L8_1 = AddEventHandler
L9_1 = Config
L9_1 = L9_1.QBCoreplayerLoaded
function L10_1(A0_2)
  local L1_2
  PlayerData = A0_2
  L1_2 = L5_1
  if not L1_2 then
    L1_2 = true
    L5_1 = L1_2
    L1_2 = LoadPhone
    L1_2()
  end
end
L8_1(L9_1, L10_1)
L8_1 = true
L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = Config
  L0_2 = L0_2.WetPhone
  if L0_2 then
    while true do
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 2000
      L0_2(L1_2)
      L0_2 = PlayerPedId
      L0_2 = L0_2()
      L1_2 = IsEntityInWater
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = IsPedSwimming
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        if L1_2 then
          L1_2 = TriggerServerEvent
          L2_2 = "qs-smartphone:phoneBreakdown"
          L1_2(L2_2)
          L1_2 = ClosePhone
          L1_2()
          L1_2 = Wait
          L2_2 = 10000
          L1_2(L2_2)
        end
      end
    end
  end
end
L9_1(L10_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:repairPhone"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:repairPhone"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = Config
  L0_2 = L0_2.WetPhone
  if L0_2 then
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = TaskStartScenarioInPlace
    L2_2 = PlayerPedId
    L2_2 = L2_2()
    L3_2 = "WORLD_HUMAN_STAND_MOBILE"
    L4_2 = 0
    L5_2 = false
    L1_2(L2_2, L3_2, L4_2, L5_2)
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 8000
    L1_2(L2_2)
    L1_2 = ClearPedTasks
    L2_2 = L0_2
    L1_2(L2_2)
    L1_2 = SendTextMessage
    L2_2 = Lang
    L3_2 = "FIXED_WET_PHONE"
    L2_2 = L2_2(L3_2)
    L3_2 = "success"
    L1_2(L2_2, L3_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = Config
L9_1 = L9_1.Framework
if "ESX" == L9_1 then
  L9_1 = RegisterNetEvent
  L10_1 = Config
  L10_1 = L10_1.MulticharacterEventESX
  L9_1(L10_1)
  L9_1 = AddEventHandler
  L10_1 = Config
  L10_1 = L10_1.MulticharacterEventESX
  function L11_1()
    local L0_2, L1_2
    L0_2 = print
    L1_2 = "qs-smartphone: Player logout"
    L0_2(L1_2)
    L0_2 = false
    L5_1 = L0_2
    L0_2 = false
    L6_1 = L0_2
    L0_2 = Config
    L1_2 = L7_1
    L0_2.PhoneApplications = L1_2
    while true do
      L0_2 = L5_1
      if L0_2 then
        break
      end
      L0_2 = Wait
      L1_2 = 100
      L0_2(L1_2)
    end
    L0_2 = print
    L1_2 = "qs-smartphone: Loading character again!"
    L0_2(L1_2)
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
    L0_2 = TriggerServerEvent
    L1_2 = "qs-smartphone:CheckHavePhoneStatus"
    L0_2(L1_2)
  end
  L9_1(L10_1, L11_1)
else
  L9_1 = Config
  L9_1 = L9_1.Framework
  if "QBCore" == L9_1 then
    L9_1 = RegisterNetEvent
    L10_1 = Config
    L10_1 = L10_1.MulticharacterEventQBCore
    L9_1(L10_1)
    L9_1 = AddEventHandler
    L10_1 = Config
    L10_1 = L10_1.MulticharacterEventQBCore
    function L11_1()
      local L0_2, L1_2
      L0_2 = print
      L1_2 = "qs-smartphone: Player logout"
      L0_2(L1_2)
      L0_2 = false
      L5_1 = L0_2
      L0_2 = false
      L6_1 = L0_2
      L0_2 = Config
      L1_2 = L7_1
      L0_2.PhoneApplications = L1_2
      while true do
        L0_2 = L5_1
        if L0_2 then
          break
        end
        L0_2 = Wait
        L1_2 = 100
        L0_2(L1_2)
      end
      L0_2 = print
      L1_2 = "qs-smartphone: Loading character again!"
      L0_2(L1_2)
    end
    L9_1(L10_1, L11_1)
  end
end
L9_1 = RegisterNetEvent
L10_1 = Config
L10_1 = L10_1.setJob
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = Config
L10_1 = L10_1.setJob
function L11_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = QSPhone
  L1_2 = L1_2.TriggerServerCallback
  L2_2 = "qs-smartphone:GetUserApps"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "UpdateApplications"
    L3_3 = A0_2
    L2_3.JobData = L3_3
    L3_3 = Config
    L3_3 = L3_3.PhoneApplications
    L2_3.applications = L3_3
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = ESX
  L1_2 = L1_2.PlayerData
  L1_2.job = A0_2
end
L9_1(L10_1, L11_1)
L9_1 = nil
L10_1 = RegisterNetEvent
L11_1 = Config
L11_1 = L11_1.QBCoreSetPlayerData
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = QBCore
  L1_2.PlayerData = A0_2
  L1_2 = L9_1
  L2_2 = A0_2.job
  L2_2 = L2_2.name
  if L1_2 ~= L2_2 then
    L1_2 = A0_2.job
    L1_2 = L1_2.name
    L9_1 = L1_2
    L1_2 = QSPhone
    L1_2 = L1_2.TriggerServerCallback
    L2_2 = "qs-smartphone:GetUserApps"
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = SendNUIMessage
      L2_3 = {}
      L2_3.action = "UpdateApplications"
      L3_3 = A0_2.job
      L2_3.JobData = L3_3
      L3_3 = Config
      L3_3 = L3_3.PhoneApplications
      L2_3.applications = L3_3
      L1_3(L2_3)
    end
    L1_2(L2_2, L3_2)
  end
  L1_2 = QBCore
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.items
  L2_2 = HavePhoneQBCore
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  HavePhone = L2_2
end
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2
  if L1_2 then
    L2_2 = pairs
    L3_2 = L1_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      if nil ~= L7_2 then
        L8_2 = L7_2.name
        if L8_2 then
          L8_2 = Config
          L8_2 = L8_2.Phones
          L9_2 = L7_2.name
          L8_2 = L8_2[L9_2]
          if L8_2 then
            L8_2 = true
            return L8_2
          end
        end
      end
    end
    L2_2 = false
    return L2_2
  end
end
HavePhoneQBCore = L10_1
L10_1 = Citizen
L10_1 = L10_1.CreateThread
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = Config
  L1_2 = L1_2.Vehicles
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = AddTextEntry
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L10_1(L11_1)
L10_1 = RegisterNUICallback
L11_1 = "getBluetooth"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:getShareBluetooth"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3
    L1_3 = A0_3
    if L1_3 then
      L2_3 = {}
      L3_3 = PlayerPedId
      L3_3 = L3_3()
      L4_3 = GetEntityCoords
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      L5_3 = pairs
      L6_3 = L1_3
      L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
      for L9_3, L10_3 in L5_3, L6_3, L7_3, L8_3 do
        L11_3 = GetPlayerFromServerId
        L12_3 = L10_3.id
        L11_3 = L11_3(L12_3)
        if L11_3 then
          L12_3 = GetPlayerPed
          L13_3 = L11_3
          L12_3 = L12_3(L13_3)
          if L12_3 and -1 ~= L12_3 then
            L13_3 = GetEntityCoords
            L14_3 = L12_3
            L13_3 = L13_3(L14_3)
            L14_3 = GetDistanceBetweenCoords
            L15_3 = L4_3.x
            L16_3 = L4_3.y
            L17_3 = L4_3.z
            L18_3 = L13_3.x
            L19_3 = L13_3.y
            L20_3 = L13_3.z
            L21_3 = true
            L14_3 = L14_3(L15_3, L16_3, L17_3, L18_3, L19_3, L20_3, L21_3)
            if L14_3 and L14_3 > 0 and -1 ~= L14_3 and L14_3 < 10.0 then
              L15_3 = table
              L15_3 = L15_3.insert
              L16_3 = L2_3
              L17_3 = L10_3
              L15_3(L16_3, L17_3)
            end
          end
        end
      end
      L5_3 = A1_2
      L6_3 = L2_3
      L5_3(L6_3)
    else
      L2_3 = A1_2
      L3_3 = L1_3
      L2_3(L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "DosyaKaydet"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.durum
  if "kaydet" == L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "qs-smartphone:server:DosyaKaydet"
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  end
  L2_2 = Wait
  L3_2 = 200
  L2_2(L3_2)
  L2_2 = {}
  L1_1 = L2_2
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "RestoreSmartphone"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:RestoreSmartphone"
  L2_2(L3_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "PhoneNotification"
  L4_2 = {}
  L5_2 = Lang
  L6_2 = "SETTINGS_TITLE"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L5_2 = Lang
  L6_2 = "RESTORE_NOTIFICATION"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L4_2.icon = "./img/apps/settings.png"
  L3_2.PhoneNotify = L4_2
  L2_2(L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:client:DosyaAl"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:client:DosyaAl"
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "DosyaAl"
  L2_2.veri = A0_2
  L1_2(L2_2)
  L1_1 = A0_2
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "SetupRentel"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Config
  L3_2 = L3_2.RentelVehicles
  L2_2(L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "RentVehicle"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerEvent
  L2_2 = "qs-rental:RentVehicle"
  L3_2 = A0_2.vehicle
  L3_2 = L3_2.model
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "RestoreVehicle"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerEvent
  L2_2 = "qs-rental:RestoreVehicle"
  L3_2 = A0_2.vehicle
  L3_2 = L3_2.model
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:set:qs-rental"
function L12_1(A0_2)
  local L1_2
  L1_2 = Config
  L1_2.RentelVehicles = A0_2
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "DosyaGonder"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = PhoneData
  L4_2 = L4_2.PlayerData
  L4_2 = L4_2.charinfo
  L4_2 = L4_2.firstname
  L3_2.firstname = L4_2
  L4_2 = PhoneData
  L4_2 = L4_2.PlayerData
  L4_2 = L4_2.charinfo
  L4_2 = L4_2.lastname
  L3_2.lastname = L4_2
  L4_2 = A0_2.resim_url
  L3_2.resim_url = L4_2
  L4_2 = tonumber
  L5_2 = A0_2.src
  L4_2 = L4_2(L5_2)
  L3_2.src = L4_2
  L2_2 = L3_2
  L3_2 = TriggerServerEvent
  L4_2 = "qs-smartphone:server:DosyaGonder"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "btShare"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:btShare"
  L3_2 = A0_2.veri
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = {}
PlayerJob = L10_1
phoneProp = 0
L10_1 = {}
L11_1 = {}
L10_1.Alarms = L11_1
L11_1 = {}
L10_1.MetaData = L11_1
L10_1.isOpen = false
L10_1.PlayerData = nil
L11_1 = {}
L10_1.Contacts = L11_1
L11_1 = {}
L10_1.Tweets = L11_1
L10_1.currentTab = nil
L11_1 = {}
L10_1.MentionedTweets = L11_1
L11_1 = {}
L10_1.Hashtags = L11_1
L11_1 = {}
L10_1.Chats = L11_1
L11_1 = {}
L10_1.Invoices = L11_1
L11_1 = {}
L10_1.CallData = L11_1
L11_1 = {}
L10_1.RecentCalls = L11_1
L11_1 = {}
L10_1.Garage = L11_1
L11_1 = {}
L10_1.SelfTweets = L11_1
L11_1 = {}
L10_1.Mails = L11_1
L11_1 = {}
L10_1.Adverts = L11_1
L10_1.id = 1
L11_1 = {}
L10_1.GarageVehicles = L11_1
L11_1 = {}
L11_1.lib = nil
L11_1.anim = nil
L10_1.AnimationData = L11_1
L11_1 = {}
L10_1.SuggestedContacts = L11_1
L11_1 = {}
L10_1.CryptoTransactions = L11_1
L10_1.TwitterAccount = nil
L10_1.Sounds = true
L11_1 = {}
L10_1.Photos = L11_1
L11_1 = {}
L10_1.ChatRooms = L11_1
L10_1.source = 0
PhoneData = L10_1
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:client:ctxmenu"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:client:ctxmenu"
function L12_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = {}
  L1_2 = QSPhone
  L1_2 = L1_2.TriggerServerCallback
  L2_2 = "qs-smartphone:envtelefonlar"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L1_3 = 1
    L2_3 = #A0_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = A0_3[L4_3]
      L5_3 = L5_3.info
      L5_3 = L5_3.durum
      if not L5_3 then
        L5_3 = A0_3[L4_3]
        L5_3 = L5_3.info
        L5_3.durum = "kilitli"
      end
      L5_3 = A0_3[L4_3]
      L5_3 = L5_3.name
      if "phone" == L5_3 then
        L5_3 = A0_3[L4_3]
        L5_3 = L5_3.info
        L5_3 = L5_3.durum
        if "kilitli" == L5_3 then
          L5_3 = {}
          L6_3 = A0_3[L4_3]
          L6_3 = L6_3.info
          L6_3 = L6_3.telno
          L7_3 = " Parmak izini sil"
          L6_3 = L6_3 .. L7_3
          L5_3.label = L6_3
          L6_3 = A0_3[L4_3]
          L6_3 = L6_3.slot
          L5_3.value = L6_3
          L6_3 = table
          L6_3 = L6_3.insert
          L7_3 = L0_2
          L8_3 = L5_3
          L6_3(L7_3, L8_3)
        end
      end
    end
    L1_3 = telmenu
    L2_3 = L0_2
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "GetUserProfileWhatsApp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetUserProfileWhatsApp"
  function L4_2(A0_3)
    local L1_3, L2_3
    if nil ~= A0_3 then
      WhatsAppAccount = A0_3
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "AddAccountWhatsApp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:AddAccountWhatsApp"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetUserProfileWhatsApp"
      function L3_3(A0_4)
        local L1_4, L2_4
        if nil ~= A0_4 then
          WhatsAppAccount = A0_4
          L1_4 = A1_2
          L2_4 = A0_4
          L1_4(L2_4)
        end
      end
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "GetStoriesWhatsApp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetStoriesWhatsApp"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "GetMyStorieWhatsApp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetMyStorieWhatsApp"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      MyStorieWhatsApp = A0_3
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    else
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = "vazio"
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "AddStorieWhatsApp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:AddStorieWhatsApp"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetMyStorieWhatsApp"
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4
        if A0_4 then
          MyStorieWhatsApp = A0_4
          L1_4 = A1_2
          L2_4 = json
          L2_4 = L2_4.encode
          L3_4 = A0_4
          L2_4, L3_4 = L2_4(L3_4)
          L1_4(L2_4, L3_4)
        end
      end
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "EditProfileWhatsApp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:EditProfileWhatsApp"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = true
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "QuitGroup"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:quitGroup"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = true
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "WPDeleteMessage"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:WPDeleteMessage"
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = true
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "CreateGroupWhatsApp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:CreateGroupWhatsApp"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = true
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "EditGroupWhatsApp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:EditGroupWhatsApp"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = true
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "GetWhatsappGroups"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetWhatsappGroups"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "GetGroupImage"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.number
  L3_2 = QSPhone
  L3_2 = L3_2.TriggerServerCallback
  L4_2 = "qs-smartphone:GetGroupImage"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L10_1(L11_1, L12_1)
L10_1 = TriggerEvent
L11_1 = "chat:addSuggestion"
L12_1 = "/sendmail"
L13_1 = "Admin SendMail"
L14_1 = {}
L15_1 = {}
L15_1.name = "Subject"
L15_1.help = "Subject"
L16_1 = {}
L16_1.name = "Message"
L16_1.help = "Message"
L14_1[1] = L15_1
L14_1[2] = L16_1
L10_1(L11_1, L12_1, L13_1, L14_1)
L10_1 = RegisterNUICallback
L11_1 = "GetMessages"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetMessages"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "GetMessagesChat"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetMessagesChat"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    else
      L1_3 = A1_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2.phone
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "SetPassword"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:SetPassword"
  L3_2 = A0_2.pin
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "SendNewMessage"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.message
  L3_2 = A0_2.phone
  L4_2 = A0_2.type
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = GetEntityCoords
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if "location" == L4_2 then
    L7_2 = json
    L7_2 = L7_2.encode
    L8_2 = {}
    L9_2 = L6_2.x
    L8_2.x = L9_2
    L9_2 = L6_2.y
    L8_2.y = L9_2
    L7_2 = L7_2(L8_2)
    L2_2 = L7_2
  end
  L7_2 = {}
  L7_2.message = L2_2
  L7_2.phone = L3_2
  L7_2.type = L4_2
  L8_2 = QSPhone
  L8_2 = L8_2.TriggerServerCallback
  L9_2 = "qs-smartphone:SendNewMessage"
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = true
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "GetirGaleriResimleri"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetGaleri"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "GetWhatsappGroupMessages"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetWhatsappGroupMessages"
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L2_3 = A1_2
      L3_3 = {}
      L4_3 = json
      L4_3 = L4_3.encode
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      L3_3.messages = L4_3
      L3_3.pp = A1_3
      L2_3(L3_3)
    else
      L2_3 = A1_2
      L3_3 = {}
      L4_3 = json
      L4_3 = L4_3.encode
      L5_3 = {}
      L4_3 = L4_3(L5_3)
      L3_3.messages = L4_3
      L3_3.pp = A1_3
      L2_3(L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "GetWhatsappGroup"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetWhatsappGroup"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "AddMemberGroupWhatsapp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:AddMemberGroupWhatsapp"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    else
      L1_3 = A1_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "SendMessageGroup"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.message
  L3_2 = A0_2.number
  L4_2 = A0_2.type
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = GetEntityCoords
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if "location" == L4_2 then
    L7_2 = json
    L7_2 = L7_2.encode
    L8_2 = {}
    L9_2 = L6_2.x
    L8_2.x = L9_2
    L9_2 = L6_2.y
    L8_2.y = L9_2
    L7_2 = L7_2(L8_2)
    L2_2 = L7_2
  end
  L7_2 = {}
  L7_2.message = L2_2
  L7_2.number = L3_2
  L7_2.type = L4_2
  L8_2 = QSPhone
  L8_2 = L8_2.TriggerServerCallback
  L9_2 = "qs-smartphone:SendMessageGroup"
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetWhatsappGroupMessages"
      function L3_3(A0_4, A1_4)
        local L2_4, L3_4, L4_4, L5_4
        if A0_4 then
          L2_4 = A1_2
          L3_4 = {}
          L4_4 = json
          L4_4 = L4_4.encode
          L5_4 = A0_4
          L4_4 = L4_4(L5_4)
          L3_4.messages = L4_4
          L3_4.pp = A1_4
          L2_4(L3_4)
        end
      end
      L4_3 = A0_2
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:UpdateGallery"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:UpdateGallery"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = QSPhone
  L3_2 = L3_2.TriggerServerCallback
  L4_2 = "qs-smartphone:server:GetGaleri"
  function L5_2(A0_3)
    local L1_3
    L1_3 = PhoneData
    L1_3.Photos = A0_3
  end
  L3_2(L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:client:AddRecentCall"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:client:AddRecentCall"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2.anonymous
  if L3_2 then
    return
  end
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = PhoneData
  L4_2 = L4_2.RecentCalls
  L5_2 = {}
  L6_2 = IsNumberInContacts
  L7_2 = A0_2.number
  L6_2 = L6_2(L7_2)
  L5_2.name = L6_2
  L5_2.time = A1_2
  L5_2.type = A2_2
  L6_2 = A0_2.number
  L5_2.number = L6_2
  L6_2 = A0_2.anonymous
  L5_2.anonymous = L6_2
  L3_2(L4_2, L5_2)
  L3_2 = FindApplication
  L4_2 = "phone"
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = Config
    L4_2 = L4_2.PhoneApplications
    L4_2 = L4_2[L3_2]
    L5_2 = Config
    L5_2 = L5_2.PhoneApplications
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.Alerts
    L5_2 = L5_2 + 1
    L4_2.Alerts = L5_2
  end
  L4_2 = TriggerServerEvent
  L5_2 = "qs-smartphone:server:SetPhoneAlerts"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "RefreshAppAlerts"
  L6_2 = Config
  L6_2 = L6_2.PhoneApplications
  L5_2.AppData = L6_2
  L4_2(L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = exports
L11_1 = "InPhone"
function L12_1()
  local L0_2, L1_2
  L0_2 = PhoneData
  L0_2 = L0_2.isOpen
  return L0_2
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNUICallback
L11_1 = "disableControls"
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = up
  L1_2 = L1_2 + 1
  up = L1_2
  L1_2 = SetNuiFocusKeepInput
  L2_2 = false
  L1_2(L2_2)
end
L10_1(L11_1, L12_1)
L10_1 = CreateThread
function L11_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = up
    L1_2 = Wait
    L2_2 = 500
    L1_2(L2_2)
    L1_2 = PhoneData
    L1_2 = L1_2.isOpen
    if L1_2 then
      L1_2 = up
      if L1_2 == L0_2 then
        up = 0
        L1_2 = SetNuiFocusKeepInput
        L2_2 = true
        L1_2(L2_2)
      end
    end
  end
end
L10_1(L11_1)
L10_1 = RegisterNUICallback
L11_1 = "UpdateSoundStatus"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PhoneData
  L3_2 = A0_2.sound
  L2_2.Sounds = L3_2
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L10_1(L11_1, L12_1)
--[[L10_1 = {}
L11_1 = "diables_x_quasar_phone_black"
L12_1 = "diables_x_quasar_phone_blue"
L13_1 = "diables_x_quasar_phone_gold"
L14_1 = "diables_x_quasar_phone_green"
L15_1 = "diables_x_quasar_phone_greenlight"
L16_1 = "diables_x_quasar_phone_grey"
L17_1 = "diables_x_quasar_phone_pink"
L18_1 = "diables_x_quasar_phone_purple"
L19_1 = "diables_x_quasar_phone_red"
L20_1 = "diables_x_quasar_phone_white"
L10_1[1] = L11_1
L10_1[2] = L12_1
L10_1[3] = L13_1
L10_1[4] = L14_1
L10_1[5] = L15_1
L10_1[6] = L16_1
L10_1[7] = L17_1
L10_1[8] = L18_1
L10_1[9] = L19_1
L10_1[10] = L20_1
L11_1 = Citizen
L11_1 = L11_1.CreateThread
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = L10_1
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
L11_1(L12_1)]]
twitter_notifications = true
instagram_notifications = true
discord_notifications = true
tinder_notifications = true
messages_notifications = true
whatsapp_notifications = true
L11_1 = RegisterNUICallback
L12_1 = "twitter_notifications"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PhoneData
  L3_2 = A0_2.twitter_notifications
  L2_2.twitter_notifications = L3_2
  L2_2 = PhoneData
  L2_2 = L2_2.twitter_notifications
  if L2_2 then
    twitter_notifications = true
  else
    twitter_notifications = false
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "instagram_notifications"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PhoneData
  L3_2 = A0_2.instagram_notifications
  L2_2.instagram_notifications = L3_2
  L2_2 = PhoneData
  L2_2 = L2_2.instagram_notifications
  if L2_2 then
    instagram_notifications = true
  else
    instagram_notifications = false
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "discord_notifications"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PhoneData
  L3_2 = A0_2.discord_notifications
  L2_2.discord_notifications = L3_2
  L2_2 = PhoneData
  L2_2 = L2_2.discord_notifications
  if L2_2 then
    discord_notifications = true
  else
    discord_notifications = false
  end
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:discord_notifications"
  L4_2 = discord_notifications
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "tinder_notifications"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PhoneData
  L3_2 = A0_2.tinder_notifications
  L2_2.tinder_notifications = L3_2
  L2_2 = PhoneData
  L2_2 = L2_2.tinder_notifications
  if L2_2 then
    tinder_notifications = true
  else
    tinder_notifications = false
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "messages_notifications"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PhoneData
  L3_2 = A0_2.messages_notifications
  L2_2.messages_notifications = L3_2
  L2_2 = PhoneData
  L2_2 = L2_2.messages_notifications
  if L2_2 then
    messages_notifications = true
  else
    messages_notifications = false
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "whatsapp_notifications"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PhoneData
  L3_2 = A0_2.whatsapp_notifications
  L2_2.whatsapp_notifications = L3_2
  L2_2 = PhoneData
  L2_2 = L2_2.whatsapp_notifications
  if L2_2 then
    whatsapp_notifications = true
  else
    whatsapp_notifications = false
  end
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "ClearRecentAlerts"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SetPhoneAlerts"
  L4_2 = app
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = FindApplication
  L3_2 = "phone"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L2_2]
    L3_2.Alerts = 0
  end
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "RefreshAppAlerts"
  L5_2 = Config
  L5_2 = L5_2.PhoneApplications
  L4_2.AppData = L5_2
  L3_2(L4_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "SetBackground"
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.background
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SaveMetaData"
  L4_2 = "background"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "UpdateAvailableStatus"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:UpdateAvailableStatus"
  L4_2 = A0_2.available
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "GetMissedCalls"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = PhoneData
  L3_2 = L3_2.RecentCalls
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNUICallback
L12_1 = "GetSuggestedContacts"
function L13_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = PhoneData
  L3_2 = L3_2.SuggestedContacts
  L2_2(L3_2)
end
L11_1(L12_1, L13_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2
  L2_2 = pairs
  L3_2 = PhoneData
  L3_2 = L3_2.Contacts
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.number
    if A0_2 == L8_2 then
      L1_2 = L7_2.name
    end
  end
  return L1_2
end
IsNumberInContacts = L11_1
L11_1 = false
function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = GetClockHours
  L0_2 = L0_2()
  hour = L0_2
  L0_2 = GetClockMinutes
  L0_2 = L0_2()
  minute = L0_2
  L0_2 = {}
  L1_2 = minute
  if L1_2 <= 9 then
    L1_2 = "0"
    L2_2 = minute
    L1_2 = L1_2 .. L2_2
    minute = L1_2
  end
  L1_2 = hour
  L0_2.hour = L1_2
  L1_2 = minute
  L0_2.minute = L1_2
  return L0_2
end
CalculateTimeToDisplay = L12_1
L12_1 = CreateThread
function L13_1()
  local L0_2, L1_2, L2_2, L3_2
  while true do
    L0_2 = PhoneData
    L0_2 = L0_2.isOpen
    if L0_2 then
      L0_2 = SetCurrentPedWeapon
      L1_2 = PlayerPedId
      L1_2 = L1_2()
      L2_2 = "WEAPON_UNARMED"
      L3_2 = true
      L0_2(L1_2, L2_2, L3_2)
      L0_2 = SendNUIMessage
      L1_2 = {}
      L1_2.action = "UpdateTime"
      L2_2 = CalculateTimeToDisplay
      L2_2 = L2_2()
      L1_2.InGameTime = L2_2
      L0_2(L1_2)
    end
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
end
L12_1(L13_1)
L12_1 = RegisterNetEvent
L13_1 = "qs-smartphone:RefreshContacts"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "qs-smartphone:RefreshContacts"
function L14_1()
  local L0_2, L1_2, L2_2
  L0_2 = QSPhone
  L0_2 = L0_2.TriggerServerCallback
  L1_2 = "qs-smartphone:server:GetPhoneData"
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = PhoneData
    L2_3 = A0_3.PlayerContacts
    L1_3.Contacts = L2_3
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "RefreshContacts"
    L3_3 = PhoneData
    L3_3 = L3_3.Contacts
    L2_3.Contacts = L3_3
    L1_3(L2_3)
  end
  L0_2(L1_2, L2_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "GetUserApps"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetUserApps"
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = Config
      L1_3.PhoneApplications = A0_3
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "SaveLockScreen"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SaveMetaData"
  L4_2 = "lockscreen"
  L5_2 = A0_2.data
  L2_2(L3_2, L4_2, L5_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNUICallback
L13_1 = "checked"
function L14_1(A0_2, A1_2)
  checked = true
end
L12_1(L13_1, L14_1)
L12_1 = false
function L13_1()
  local L0_2, L1_2
  Citizen.CreateThread(function()
    local L0_3, L1_3, L2_3
    L0_3 = L6_1
    if not L0_3 then
      L0_3 = true
      L6_1 = L0_3
      print("[qs-smartphone] Loading Phone...")
      L0_3 = true
      L11_1 = L0_3
      while true do
        L0_3 = QBCore
        if nil ~= L0_3 then
          break
        end
        L0_3 = ESX
        if nil ~= L0_3 then
          break
        end
        Wait(200)
      end
      L0_3 = QSPhone
      L0_3 = L0_3.TriggerServerCallback
      L1_3 = "qs-smartphone:GetUserApps"
      function L2_3(A0_4)
        local L1_4, L2_4, L3_4
        if A0_4 then
          L1_4 = A0_4.apps
          if L1_4 then
            L1_4 = A0_4.apps
            if "" ~= L1_4 then
              L1_4 = A0_4.apps
              if nil ~= L1_4 then
                L1_4 = A0_4.apps
                L2_4 = {}
                if L1_4 ~= L2_4 then
                  L1_4 = Config
                  L2_4 = A0_4.apps
                  L1_4.PhoneApplications = L2_4
                end
              end
            end
          end
          L1_4 = QSPhone
          L1_4 = L1_4.TriggerServerCallback
          L2_4 = "qs-smartphone:server:GetPhoneData"
          function L3_4(A0_5, A1_5)
            local L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5
            if A0_5 then
              L2_5 = print
              L3_5 = "[qs-smartphone] Info received."
              L2_5(L3_5)
              L2_1 = A1_5
              L2_5 = GetJobFramework
              L2_5 = L2_5()
              PlayerJob = L2_5
              L2_5 = PhoneData
              L3_5 = GetPlayerDataFramework
              L3_5 = L3_5()
              L2_5.PlayerData = L3_5
              L2_5 = PhoneData
              L3_5 = GetPlayerDataFramework
              L3_5 = L3_5()
              L3_5 = L3_5.metadata
              L3_5 = L3_5.phone
              L2_5.MetaData = L3_5
              L2_5 = PhoneData
              L2_5 = L2_5.PlayerData
              L3_5 = A0_5.charinfo
              if nil ~= L3_5 then
                L3_5 = A0_5.charinfo
                if L3_5 then
                  goto lbl_30
                end
              end
              L3_5 = {}
              ::lbl_30::
              L2_5.charinfo = L3_5
              L2_5 = PhoneData
              L2_5 = L2_5.PlayerData
              L3_5 = GetPlayerIdentifier
              L3_5 = L3_5()
              L2_5.identifier = L3_5
              L2_5 = PhoneData
              L2_5 = L2_5.PlayerData
              L3_5 = PhoneData
              L3_5 = L3_5.PlayerData
              L3_5 = L3_5.identifier
              L2_5.citizenid = L3_5
              L2_5 = PhoneData
              L2_5 = L2_5.PlayerData
              L3_5 = GetPlayerServerId
              L4_5 = PlayerId
              L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5 = L4_5()
              L3_5 = L3_5(L4_5, L5_5, L6_5, L7_5, L8_5, L9_5, L10_5, L11_5, L12_5)
              L2_5.source = L3_5
              L2_5 = PhoneData
              L2_5 = L2_5.PlayerData
              L3_5 = {}
              L2_5.CryptoCurrency = L3_5
              L2_5 = A0_4.widget
              if L2_5 then
                L2_5 = A0_4.widget
                L2_5 = L2_5.widget_gorunum
                if L2_5 then
                  L2_5 = PhoneData
                  L2_5 = L2_5.PlayerData
                  L3_5 = A0_4.widget
                  L3_5 = L3_5.widget_gorunum
                  L2_5.widget_gorunum = L3_5
                  L2_5 = A0_4.widget
                  L2_5 = L2_5.widget_gorunum
                  L3_1 = L2_5
                end
                L2_5 = A0_4.widget
                L2_5 = L2_5.widget_tip
                if L2_5 then
                  L2_5 = A0_4.widget
                  L2_5 = L2_5.widget_tip
                  L4_1 = L2_5
                  L2_5 = PhoneData
                  L2_5 = L2_5.PlayerData
                  L3_5 = A0_4.widget
                  L3_5 = L3_5.widget_tip
                  L2_5.widget_tip = L3_5
                end
              end
              L2_5 = PhoneData
              L2_5 = L2_5.MetaData
              L2_5 = L2_5.profilepicture
              if nil == L2_5 then
                L2_5 = PhoneData
                L2_5 = L2_5.MetaData
                L2_5.profilepicture = "default"
              else
                L2_5 = PhoneData
                L2_5 = L2_5.MetaData
                L3_5 = PhoneData
                L3_5 = L3_5.MetaData
                L3_5 = L3_5.profilepicture
                L2_5.profilepicture = L3_5
              end
              L2_5 = PhoneData
              L2_5 = L2_5.MetaData
              L2_5 = L2_5.ringtone
              if nil == L2_5 then
                L2_5 = PhoneData
                L2_5 = L2_5.MetaData
                L2_5.ringtone = "iphonex"
              else
                L2_5 = PhoneData
                L2_5 = L2_5.MetaData
                L3_5 = PhoneData
                L3_5 = L3_5.MetaData
                L3_5 = L3_5.ringtone
                L2_5.ringtone = L3_5
              end
              L2_5 = PhoneData
              L2_5 = L2_5.MetaData
              L2_5 = L2_5.background
              if nil ~= L2_5 then
                L2_5 = PhoneData
                L2_5 = L2_5.MetaData
                L3_5 = PhoneData
                L3_5 = L3_5.MetaData
                L3_5 = L3_5.background
                L2_5.background = L3_5
              end
              L2_5 = PhoneData
              L2_5 = L2_5.MetaData
              L2_5 = L2_5.lockscreen
              if nil ~= L2_5 then
                L2_5 = PhoneData
                L2_5 = L2_5.MetaData
                L3_5 = PhoneData
                L3_5 = L3_5.MetaData
                L3_5 = L3_5.lockscreen
                L2_5.lockscreen = L3_5
              else
                L2_5 = PhoneData
                L2_5 = L2_5.MetaData
                L2_5.lockscreen = "none"
              end
              L2_5 = L12_1
              if not L2_5 then
                L2_5 = A0_5.InstalledApps
                if nil ~= L2_5 then
                  L2_5 = next
                  L3_5 = A0_5.InstalledApps
                  L2_5 = L2_5(L3_5)
                  if nil ~= L2_5 then
                    L2_5 = pairs
                    L3_5 = A0_5.InstalledApps
                    L2_5, L3_5, L4_5, L5_5 = L2_5(L3_5)
                    for L6_5, L7_5 in L2_5, L3_5, L4_5, L5_5 do
                      L8_5 = L7_5.app
                      if L8_5 then
                        L8_5 = Config
                        L8_5 = L8_5.StoreApps
                        L9_5 = L7_5.app
                        L8_5 = L8_5[L9_5]
                        L9_5 = Config
                        L9_5 = L9_5.PhoneApplications
                        L10_5 = Config
                        L10_5 = L10_5.PhoneApplications
                        L10_5 = #L10_5
                        L10_5 = L10_5 + 1
                        L11_5 = {}
                        L12_5 = L7_5.app
                        L11_5.app = L12_5
                        L12_5 = L8_5.color
                        L11_5.color = L12_5
                        L12_5 = L8_5.icon
                        L11_5.icon = L12_5
                        L12_5 = L8_5.tooltipText
                        L11_5.tooltipText = L12_5
                        L12_5 = L8_5.tooltipPos
                        L11_5.tooltipPos = L12_5
                        L12_5 = L8_5.job
                        L11_5.job = L12_5
                        L12_5 = L8_5.blockedjobs
                        L11_5.blockedjobs = L12_5
                        L12_5 = L8_5.slot
                        L11_5.slot = L12_5
                        L11_5.Alerts = 0
                        L9_5[L10_5] = L11_5
                      end
                    end
                  end
                end
                L2_5 = true
                L12_1 = L2_5
              end
              L2_5 = PhoneData
              L3_5 = PhoneData
              L3_5 = L3_5.MetaData
              L3_5 = L3_5.Alarms
              if not L3_5 then
                L3_5 = {}
              end
              L2_5.Alarms = L3_5
              L2_5 = A0_5.Applications
              if nil ~= L2_5 then
                L2_5 = next
                L3_5 = A0_5.Applications
                L2_5 = L2_5(L3_5)
                if nil ~= L2_5 then
                  L2_5 = pairs
                  L3_5 = A0_5.Applications
                  L2_5, L3_5, L4_5, L5_5 = L2_5(L3_5)
                  for L6_5, L7_5 in L2_5, L3_5, L4_5, L5_5 do
                    L8_5 = FindApplication
                    L9_5 = L6_5
                    L8_5 = L8_5(L9_5)
                    if L8_5 then
                      L9_5 = Config
                      L9_5 = L9_5.PhoneApplications
                      L9_5 = L9_5[L8_5]
                      L9_5.Alerts = L7_5
                    end
                  end
                end
              end
              L2_5 = A0_5.PlayerContacts
              if nil ~= L2_5 then
                L2_5 = next
                L3_5 = A0_5.PlayerContacts
                L2_5 = L2_5(L3_5)
                if nil ~= L2_5 then
                  L2_5 = PhoneData
                  L3_5 = A0_5.PlayerContacts
                  L2_5.Contacts = L3_5
                end
              end
              L2_5 = A0_5.Mails
              if nil ~= L2_5 then
                L2_5 = next
                L3_5 = A0_5.Mails
                L2_5 = L2_5(L3_5)
                if nil ~= L2_5 then
                  L2_5 = PhoneData
                  L3_5 = A0_5.Mails
                  L2_5.Mails = L3_5
                end
              end
              L2_5 = A0_5.Adverts
              if nil ~= L2_5 then
                L2_5 = next
                L3_5 = A0_5.Adverts
                L2_5 = L2_5(L3_5)
                if nil ~= L2_5 then
                  L2_5 = PhoneData
                  L3_5 = A0_5.Adverts
                  L2_5.Adverts = L3_5
                end
              end
              L2_5 = A0_5.CryptoTransactions
              if nil ~= L2_5 then
                L2_5 = next
                L3_5 = A0_5.CryptoTransactions
                L2_5 = L2_5(L3_5)
                if nil ~= L2_5 then
                  L2_5 = PhoneData
                  L3_5 = A0_5.CryptoTransactions
                  L2_5.CryptoTransactions = L3_5
                end
              end
              L2_5 = A0_5.Photos
              if nil ~= L2_5 then
                L2_5 = next
                L3_5 = A0_5.Photos
                L2_5 = L2_5(L3_5)
                if nil ~= L2_5 then
                  L2_5 = PhoneData
                  L3_5 = A0_5.Photos
                  L2_5.Photos = L3_5
                end
              end
              L2_5 = A0_5.ChatRooms
              if nil ~= L2_5 then
                L2_5 = next
                L3_5 = A0_5.ChatRooms
                L2_5 = L2_5(L3_5)
                if nil ~= L2_5 then
                  L2_5 = PhoneData
                  L3_5 = A0_5.ChatRooms
                  L2_5.ChatRooms = L3_5
                end
              end
              L2_5 = Citizen
              L2_5 = L2_5.Wait
              L3_5 = 300
              L2_5(L3_5)
              L2_5 = print
              L3_5 = "[qs-smartphone] Checking..."
              L2_5(L3_5)
              L2_5 = SendNUIMessage
              L3_5 = {}
              L3_5.action = "CheckLoad"
              L2_5(L3_5)
              while true do
                L2_5 = checked
                if L2_5 then
                  break
                end
                L2_5 = Wait
                L3_5 = 250
                L2_5(L3_5)
                L2_5 = SendNUIMessage
                L3_5 = {}
                L3_5.action = "CheckLoad"
                L2_5(L3_5)
              end
              L2_5 = print
              L3_5 = "[qs-smartphone] Checked!"
              L2_5(L3_5)
              L2_5 = SendNUIMessage
              L3_5 = {}
              L3_5.action = "LoadPhoneData"
              L4_5 = PhoneData
              L3_5.PhoneData = L4_5
              L4_5 = PhoneData
              L4_5 = L4_5.PlayerData
              L3_5.PlayerData = L4_5
              L4_5 = GetJobFramework
              L4_5 = L4_5()
              L3_5.PlayerJob = L4_5
              L4_5 = Config
              L4_5 = L4_5.PhoneApplications
              L3_5.applications = L4_5
              L4_5 = A0_5.Youtube
              L3_5.youtube = L4_5
              L4_5 = Config
              L4_5 = L4_5.Darkweb
              L3_5.darkweb = L4_5
              L4_5 = Config
              L4_5 = L4_5.PhonesCustomWallpaper
              L3_5.customWalls = L4_5
              L4_5 = Config
              L4_5 = L4_5.JobsTest
              L3_5.jobs = L4_5
              L4_5 = PhoneData
              L4_5 = L4_5.MetaData
              L4_5 = L4_5.background
              L3_5.background = L4_5
              L4_5 = Config
              L4_5 = L4_5.Phones
              L4_5 = L4_5.classic_phone
              L3_5.phoneType = L4_5
              L2_5(L3_5)
              phoneLoaded = true
              L2_5 = print
              L3_5 = "[qs-smartphone] Phone finish load."
              L2_5(L3_5)
            else
              L2_5 = Wait
              L3_5 = 5000
              L2_5(L3_5)
              L2_5 = false
              L6_1 = L2_5
              L2_5 = LoadPhone
              L2_5()
            end
          end
          L1_4(L2_4, L3_4)
        else
          L1_4 = Wait
          L2_4 = 5000
          L1_4(L2_4)
          L1_4 = false
          L6_1 = L1_4
          L1_4 = LoadPhone
          L1_4()
        end
      end
      L0_3(L1_3, L2_3)
    end
  end)
end
LoadPhone = L13_1
L13_1 = RegisterNUICallback
L14_1 = "ClearMessagesUnread"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:ClearUnread"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetPlaylists"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:SetYoutubePlaylist"
  L3_2 = A0_2.list
  L1_2(L2_2, L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "CreateDarkchatGroup"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:CreateDarkchatGroup"
  L4_2 = A0_2.name
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L3_2 = true
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "newDarkchatMessage"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:newDarkchatMessage"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "getDarkChats"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:getDarkChats"
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2.id
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "getDarkchatMessages"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:getDarkchatMessages"
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2.id
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "messageJobDeleteMessage"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:messageJobDeleteMessage"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A1_2
    L1_3 = true
    L0_3(L1_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterCommand
L14_1 = "testcm"
L15_1 = LoadPhone
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "HasPhone"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Config
  L2_2 = L2_2.Framework
  if "ESX" == L2_2 then
    L2_2 = Config
    L2_2 = L2_2.UseESXchecks
    if L2_2 then
      L2_2 = A1_2
      L3_2 = HavePhone
      L2_2(L3_2)
  end
  else
    L2_2 = Config
    L2_2 = L2_2.Framework
    if "QBCore" == L2_2 then
      L2_2 = Config
      L2_2 = L2_2.UseQBCorechecks
      if L2_2 then
        L2_2 = A1_2
        L3_2 = HavePhone
        L2_2(L3_2)
    end
    else
      L2_2 = QSPhone
      L2_2 = L2_2.TriggerServerCallback
      L3_2 = "qs-smartphone:server:HasPhone"
      function L4_2(A0_3)
        local L1_3, L2_3
        L1_3 = A1_2
        L2_3 = A0_3
        L1_3(L2_3)
      end
      L2_2(L3_2, L4_2)
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "OpenPhones"
function L15_1(A0_2, A1_2)
  local L2_2
  L2_2 = OpenPhone
  L2_2()
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "DeleteNotifies"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = DeleteNotifies
  L3_2 = A0_2.id
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SaveApp"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SaveApps"
  L4_2 = Config
  L4_2 = L4_2.PhoneApplications
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "NewNotifies"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:AddNotifies"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:DeleteNotifies"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
DeleteNotifies = L13_1
L13_1 = RegisterNUICallback
L14_1 = "CleariMessageChat"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:CleariMessageChat"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = true
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "DeleteiMessage"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:DeleteiMessage"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = true
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:client:UpdateNotifies"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "qs-smartphone:client:UpdateNotifies"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PhoneData
  if L1_2 then
    L1_2 = PhoneData
    L1_2 = L1_2.PlayerData
    if L1_2 then
      L1_2 = PhoneData
      L1_2 = L1_2.PlayerData
      L1_2 = L1_2.charinfo
      L1_2 = L1_2.phone
      if L1_2 then
        L1_2 = PhoneData
        L1_2 = L1_2.PlayerData
        L1_2 = L1_2.charinfo
        L1_2 = L1_2.phone
        if A0_2 == L1_2 then
          L1_2 = QSPhone
          L1_2 = L1_2.TriggerServerCallback
          L2_2 = "qs-smartphone:server:GetCharacterData"
          function L3_2(A0_3)
            local L1_3, L2_3
            L1_3 = SendNUIMessage
            L2_3 = {}
            L2_3.action = "updateNotifies"
            L2_3.notifies = A0_3
            L1_3(L2_3)
          end
          L1_2(L2_2, L3_2)
        end
      end
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "DeleteAdvert"
function L15_1()
  local L0_2, L1_2
  L0_2 = TriggerServerEvent
  L1_2 = "qs-smartphone:server:DeleteAdvert"
  L0_2(L1_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:openPhone"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "qs-smartphone:openPhone"
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = OpenPhone
  L1_2 = false
  L2_2 = type
  L3_2 = Config
  L3_2 = L3_2.PhonesProps
  L4_2 = itemName
  L3_2 = L3_2[L4_2]
  L0_2(L1_2, L2_2, L3_2)
end
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L6_1
  if not L1_2 then
    L1_2 = LoadPhone
    L1_2()
    L1_2 = Wait
    L2_2 = 1000
    L1_2(L2_2)
  end
  L1_2 = PhoneData
  L1_2 = L1_2.isOpen
  if L1_2 then
    L1_2 = ClosePhone
    return L1_2()
  end
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = Config
    L1_2 = L1_2.UseESXchecks
    if L1_2 then
      L1_2 = FirstCheckHavePhone
      if not L1_2 then
        L1_2 = TriggerServerEvent
        L2_2 = "qs-smartphone:CheckHavePhoneStatus"
        L1_2(L2_2)
        while true do
          L1_2 = FirstCheckHavePhone
          if L1_2 then
            break
          end
          L1_2 = Wait
          L2_2 = 250
          L1_2(L2_2)
        end
      end
      L1_2 = HavePhone
      if L1_2 then
        L1_2 = QSPhone
        L1_2 = L1_2.TriggerServerCallback
        L2_2 = "qs-smartphone:server:hasHackedPhone"
        function L3_2(A0_3)
          local L1_3, L2_3, L3_3
          L1_3 = QSPhone
          L1_3 = L1_3.TriggerServerCallback
          L2_3 = "qs-smartphone:server:HasPhone"
          function L3_3(A0_4)
            local L1_4, L2_4, L3_4, L4_4
            if A0_4 then
              L1_4 = false
              L2_4 = A0_3
              if L2_4 then
                L1_4 = true
              end
              L2_4 = A0_2
              if not L2_4 then
                L2_4 = PhoneData
                L2_4 = L2_4.CallData
                L2_4 = L2_4.InCall
                A0_2 = L2_4
              end
              L2_4 = QSPhone
              L2_4 = L2_4.TriggerServerCallback
              L3_4 = "qs-smartphone:server:GetCharacterData"
              function L4_4(A0_5, A1_5, A2_5, A3_5)
                local L4_5, L5_5, L6_5, L7_5
                L4_5 = PhoneData
                L5_5 = GetPlayerDataFramework
                L5_5 = L5_5()
                L4_5.PlayerData = L5_5
                L4_5 = PhoneData
                L4_5 = L4_5.PlayerData
                L5_5 = A0_5 or L5_5
                if nil == A0_5 or not A0_5 then
                  L5_5 = {}
                end
                L4_5.charinfo = L5_5
                L4_5 = PhoneData
                L4_5 = L4_5.PlayerData
                L5_5 = GetPlayerDataFramework
                L5_5 = L5_5()
                L5_5 = L5_5.metadata
                L4_5.metadata = L5_5
                L4_5 = PhoneData
                L4_5 = L4_5.PlayerData
                L4_5 = L4_5.charinfo
                L4_5.bankbalance = A1_5
                L4_5 = PhoneData
                L4_5 = L4_5.PlayerData
                L5_5 = GetPlayerIdentifier
                L5_5 = L5_5()
                L4_5.identifier = L5_5
                L4_5 = PhoneData
                L4_5 = L4_5.PlayerData
                L5_5 = PhoneData
                L5_5 = L5_5.PlayerData
                L5_5 = L5_5.identifier
                L4_5.citizenid = L5_5
                L4_5 = PhoneData
                L4_5 = L4_5.PlayerData
                L5_5 = GetPlayerServerId
                L6_5 = PlayerId
                L6_5, L7_5 = L6_5()
                L5_5 = L5_5(L6_5, L7_5)
                L4_5.source = L5_5
                L4_5 = SetNuiFocus
                L5_5 = true
                L6_5 = true
                L4_5(L5_5, L6_5)
                L4_5 = SetNuiFocusKeepInput
                L5_5 = true
                L4_5(L5_5)
                L4_5 = SendNUIMessage
                L5_5 = {}
                L5_5.action = "open"
                L6_5 = PhoneData
                L6_5 = L6_5.Tweets
                L5_5.Tweets = L6_5
                L6_5 = Config
                L6_5 = L6_5.PhoneApplications
                L5_5.AppData = L6_5
                L6_5 = PhoneData
                L6_5 = L6_5.CallData
                L5_5.CallData = L6_5
                L6_5 = Config
                L6_5 = L6_5.CryptoTransferCommission
                L5_5.cryptoCommissions = L6_5
                L6_5 = PhoneData
                L6_5 = L6_5.PlayerData
                L5_5.PlayerData = L6_5
                L6_5 = {}
                L7_5 = GetPlayerDataFramework
                L7_5 = L7_5()
                L7_5 = L7_5.charinfo
                L7_5 = L7_5.phone
                L6_5.tel = L7_5
                L7_5 = GetPlayerIdentifier
                L7_5 = L7_5()
                L6_5.id = L7_5
                L6_5.durum = "1"
                L6_5.usePin = A3_5
                L5_5.QSMeta = L6_5
                L5_5.notifies = A2_5
                L6_5 = A0_2
                L5_5.notLock = L6_5
                L6_5 = Config
                L6_5 = L6_5.Phones
                L7_5 = A0_4
                L6_5 = L6_5[L7_5]
                L5_5.phoneType = L6_5
                L6_5 = L2_1
                L5_5.webhook = L6_5
                L6_5 = GetJobFramework
                L6_5 = L6_5()
                L5_5.PlayerJob = L6_5
                L6_5 = PhoneData
                L6_5 = L6_5.PlayerData
                L6_5 = L6_5.metadata
                L6_5 = L6_5.phone
                L6_5 = L6_5.background
                L5_5.background = L6_5
                L6_5 = L1_4
                L5_5.hacked = L6_5
                L4_5(L5_5)
                L4_5 = PhoneData
                L4_5.isOpen = true
                L4_5 = PhoneData
                L4_5 = L4_5.CallData
                L4_5 = L4_5.InCall
                if L4_5 then
                  L4_5 = PhoneData
                  L4_5 = L4_5.CallData
                  L4_5 = L4_5.AnsweredCall
                  if L4_5 then
                    L4_5 = DoPhoneAnimation
                    L5_5 = "cellphone_call_to_text"
                    L4_5(L5_5)
                end
                else
                  L4_5 = DoPhoneAnimation
                  L5_5 = "cellphone_text_in"
                  L4_5(L5_5)
                end
                L4_5 = SetTimeout
                L5_5 = 250
                function L6_5()
                  local L0_6, L1_6, L2_6
                  L0_6 = newPhoneProp
                  L1_6 = Config
                  L1_6 = L1_6.PhonesProps
                  L2_6 = A0_4
                  L1_6 = L1_6[L2_6]
                  L0_6(L1_6)
                end
                L4_5(L5_5, L6_5)
                L4_5 = true
                L8_1 = L4_5
              end
              L2_4(L3_4, L4_4)
            else
              L1_4 = SendTextMessage
              L2_4 = Lang
              L3_4 = "NO_PHONE"
              L2_4 = L2_4(L3_4)
              L3_4 = "error"
              L1_4(L2_4, L3_4)
            end
          end
          L1_3(L2_3, L3_3)
        end
        L1_2(L2_2, L3_2)
      else
        L1_2 = SendTextMessage
        L2_2 = Lang
        L3_2 = "NO_PHONE"
        L2_2 = L2_2(L3_2)
        L3_2 = "error"
        L1_2(L2_2, L3_2)
      end
    end
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = Config
      L1_2 = L1_2.UseQBCorechecks
      if L1_2 then
        L1_2 = FirstCheckHavePhone
        if not L1_2 then
          while true do
            L1_2 = QBCore
            if nil ~= L1_2 then
              break
            end
            L1_2 = Wait
            L2_2 = 100
            L1_2(L2_2)
          end
          L1_2 = QBCore
          L1_2 = L1_2.Functions
          L1_2 = L1_2.GetPlayerData
          L1_2 = L1_2()
          L2_2 = HavePhoneQBCore
          L3_2 = L1_2.items
          L2_2 = L2_2(L3_2)
          HavePhone = L2_2
          FirstCheckHavePhone = true
        end
        L1_2 = HavePhone
        if L1_2 then
          L1_2 = QSPhone
          L1_2 = L1_2.TriggerServerCallback
          L2_2 = "qs-smartphone:server:hasHackedPhone"
          function L3_2(A0_3)
            local L1_3, L2_3, L3_3
            L1_3 = QSPhone
            L1_3 = L1_3.TriggerServerCallback
            L2_3 = "qs-smartphone:server:HasPhone"
            function L3_3(A0_4)
              local L1_4, L2_4, L3_4, L4_4
              if A0_4 then
                L1_4 = false
                L2_4 = A0_3
                if L2_4 then
                  L1_4 = true
                end
                L2_4 = A0_2
                if not L2_4 then
                  L2_4 = PhoneData
                  L2_4 = L2_4.CallData
                  L2_4 = L2_4.InCall
                  A0_2 = L2_4
                end
                L2_4 = QSPhone
                L2_4 = L2_4.TriggerServerCallback
                L3_4 = "qs-smartphone:server:GetCharacterData"
                function L4_4(A0_5, A1_5, A2_5, A3_5)
                  local L4_5, L5_5, L6_5, L7_5
                  L4_5 = PhoneData
                  L5_5 = GetPlayerDataFramework
                  L5_5 = L5_5()
                  L4_5.PlayerData = L5_5
                  L4_5 = PhoneData
                  L4_5 = L4_5.PlayerData
                  L5_5 = A0_5 or L5_5
                  if nil == A0_5 or not A0_5 then
                    L5_5 = {}
                  end
                  L4_5.charinfo = L5_5
                  L4_5 = PhoneData
                  L4_5 = L4_5.PlayerData
                  L5_5 = GetPlayerDataFramework
                  L5_5 = L5_5()
                  L5_5 = L5_5.metadata
                  L4_5.metadata = L5_5
                  L4_5 = PhoneData
                  L4_5 = L4_5.PlayerData
                  L4_5 = L4_5.charinfo
                  L4_5.bankbalance = A1_5
                  L4_5 = PhoneData
                  L4_5 = L4_5.PlayerData
                  L5_5 = GetPlayerIdentifier
                  L5_5 = L5_5()
                  L4_5.identifier = L5_5
                  L4_5 = PhoneData
                  L4_5 = L4_5.PlayerData
                  L5_5 = PhoneData
                  L5_5 = L5_5.PlayerData
                  L5_5 = L5_5.identifier
                  L4_5.citizenid = L5_5
                  L4_5 = PhoneData
                  L4_5 = L4_5.PlayerData
                  L5_5 = GetPlayerServerId
                  L6_5 = PlayerId
                  L6_5, L7_5 = L6_5()
                  L5_5 = L5_5(L6_5, L7_5)
                  L4_5.source = L5_5
                  L4_5 = SetNuiFocus
                  L5_5 = true
                  L6_5 = true
                  L4_5(L5_5, L6_5)
                  L4_5 = SetNuiFocusKeepInput
                  L5_5 = true
                  L4_5(L5_5)
                  L4_5 = SendNUIMessage
                  L5_5 = {}
                  L5_5.action = "open"
                  L6_5 = PhoneData
                  L6_5 = L6_5.Tweets
                  L5_5.Tweets = L6_5
                  L6_5 = Config
                  L6_5 = L6_5.PhoneApplications
                  L5_5.AppData = L6_5
                  L6_5 = PhoneData
                  L6_5 = L6_5.CallData
                  L5_5.CallData = L6_5
                  L6_5 = Config
                  L6_5 = L6_5.CryptoTransferCommission
                  L5_5.cryptoCommissions = L6_5
                  L6_5 = PhoneData
                  L6_5 = L6_5.PlayerData
                  L5_5.PlayerData = L6_5
                  L6_5 = {}
                  L7_5 = GetPlayerDataFramework
                  L7_5 = L7_5()
                  L7_5 = L7_5.charinfo
                  L7_5 = L7_5.phone
                  L6_5.tel = L7_5
                  L7_5 = GetPlayerIdentifier
                  L7_5 = L7_5()
                  L6_5.id = L7_5
                  L6_5.durum = "1"
                  L6_5.usePin = A3_5
                  L5_5.QSMeta = L6_5
                  L5_5.notifies = A2_5
                  L6_5 = A0_2
                  L5_5.notLock = L6_5
                  L6_5 = Config
                  L6_5 = L6_5.Phones
                  L7_5 = A0_4
                  L6_5 = L6_5[L7_5]
                  L5_5.phoneType = L6_5
                  L6_5 = L2_1
                  L5_5.webhook = L6_5
                  L6_5 = GetJobFramework
                  L6_5 = L6_5()
                  L5_5.PlayerJob = L6_5
                  L6_5 = PhoneData
                  L6_5 = L6_5.PlayerData
                  L6_5 = L6_5.metadata
                  L6_5 = L6_5.phone
                  L6_5 = L6_5.background
                  L5_5.background = L6_5
                  L6_5 = L1_4
                  L5_5.hacked = L6_5
                  L4_5(L5_5)
                  L4_5 = PhoneData
                  L4_5.isOpen = true
                  L4_5 = PhoneData
                  L4_5 = L4_5.CallData
                  L4_5 = L4_5.InCall
                  if L4_5 then
                    L4_5 = PhoneData
                    L4_5 = L4_5.CallData
                    L4_5 = L4_5.AnsweredCall
                    if L4_5 then
                      L4_5 = DoPhoneAnimation
                      L5_5 = "cellphone_call_to_text"
                      L4_5(L5_5)
                  end
                  else
                    L4_5 = DoPhoneAnimation
                    L5_5 = "cellphone_text_in"
                    L4_5(L5_5)
                  end
                  L4_5 = SetTimeout
                  L5_5 = 250
                  function L6_5()
                    local L0_6, L1_6, L2_6
                    L0_6 = newPhoneProp
                    L1_6 = Config
                    L1_6 = L1_6.PhonesProps
                    L2_6 = A0_4
                    L1_6 = L1_6[L2_6]
                    L0_6(L1_6)
                  end
                  L4_5(L5_5, L6_5)
                  L4_5 = true
                  L8_1 = L4_5
                end
                L2_4(L3_4, L4_4)
              else
                L1_4 = SendTextMessage
                L2_4 = Lang
                L3_4 = "NO_PHONE"
                L2_4 = L2_4(L3_4)
                L3_4 = "error"
                L1_4(L2_4, L3_4)
              end
            end
            L1_3(L2_3, L3_3)
          end
          L1_2(L2_2, L3_2)
        else
          L1_2 = SendTextMessage
          L2_2 = Lang
          L3_2 = "NO_PHONE"
          L2_2 = L2_2(L3_2)
          L3_2 = "error"
          L1_2(L2_2, L3_2)
        end
    end
    else
      L1_2 = QSPhone
      L1_2 = L1_2.TriggerServerCallback
      L2_2 = "qs-smartphone:server:HasPhone"
      function L3_2(A0_3)
        local L1_3, L2_3, L3_3
        if A0_3 then
          L1_3 = QSPhone
          L1_3 = L1_3.TriggerServerCallback
          L2_3 = "qs-smartphone:server:hasHackedPhone"
          function L3_3(A0_4)
            local L1_4, L2_4, L3_4, L4_4
            L1_4 = false
            if A0_4 then
              L1_4 = true
            end
            L2_4 = A0_2
            if not L2_4 then
              L2_4 = PhoneData
              L2_4 = L2_4.CallData
              L2_4 = L2_4.InCall
              A0_2 = L2_4
            end
            L2_4 = QSPhone
            L2_4 = L2_4.TriggerServerCallback
            L3_4 = "qs-smartphone:server:GetCharacterData"
            function L4_4(A0_5, A1_5, A2_5, A3_5)
              local L4_5, L5_5, L6_5, L7_5
              L4_5 = PhoneData
              L5_5 = GetPlayerDataFramework
              L5_5 = L5_5()
              L4_5.PlayerData = L5_5
              L4_5 = PhoneData
              L4_5 = L4_5.PlayerData
              L5_5 = A0_5 or L5_5
              if nil == A0_5 or not A0_5 then
                L5_5 = {}
              end
              L4_5.charinfo = L5_5
              L4_5 = PhoneData
              L4_5 = L4_5.PlayerData
              L5_5 = GetPlayerDataFramework
              L5_5 = L5_5()
              L5_5 = L5_5.metadata
              L4_5.metadata = L5_5
              L4_5 = PhoneData
              L4_5 = L4_5.PlayerData
              L4_5 = L4_5.charinfo
              L4_5.bankbalance = A1_5
              L4_5 = PhoneData
              L4_5 = L4_5.PlayerData
              L5_5 = GetPlayerIdentifier
              L5_5 = L5_5()
              L4_5.identifier = L5_5
              L4_5 = PhoneData
              L4_5 = L4_5.PlayerData
              L5_5 = PhoneData
              L5_5 = L5_5.PlayerData
              L5_5 = L5_5.identifier
              L4_5.citizenid = L5_5
              L4_5 = PhoneData
              L4_5 = L4_5.PlayerData
              L5_5 = GetPlayerServerId
              L6_5 = PlayerId
              L6_5, L7_5 = L6_5()
              L5_5 = L5_5(L6_5, L7_5)
              L4_5.source = L5_5
              L4_5 = SetNuiFocus
              L5_5 = true
              L6_5 = true
              L4_5(L5_5, L6_5)
              L4_5 = SetNuiFocusKeepInput
              L5_5 = true
              L4_5(L5_5)
              L4_5 = SendNUIMessage
              L5_5 = {}
              L5_5.action = "open"
              L6_5 = PhoneData
              L6_5 = L6_5.Tweets
              L5_5.Tweets = L6_5
              L6_5 = Config
              L6_5 = L6_5.PhoneApplications
              L5_5.AppData = L6_5
              L6_5 = PhoneData
              L6_5 = L6_5.CallData
              L5_5.CallData = L6_5
              L6_5 = Config
              L6_5 = L6_5.CryptoTransferCommission
              L5_5.cryptoCommissions = L6_5
              L6_5 = PhoneData
              L6_5 = L6_5.PlayerData
              L5_5.PlayerData = L6_5
              L6_5 = {}
              L7_5 = GetPlayerDataFramework
              L7_5 = L7_5()
              L7_5 = L7_5.charinfo
              L7_5 = L7_5.phone
              L6_5.tel = L7_5
              L7_5 = GetPlayerIdentifier
              L7_5 = L7_5()
              L6_5.id = L7_5
              L6_5.durum = "1"
              L6_5.usePin = A3_5
              L5_5.QSMeta = L6_5
              L5_5.notifies = A2_5
              L6_5 = A0_2
              L5_5.notLock = L6_5
              L6_5 = Config
              L6_5 = L6_5.Phones
              L7_5 = A0_3
              L6_5 = L6_5[L7_5]
              L5_5.phoneType = L6_5
              L6_5 = L2_1
              L5_5.webhook = L6_5
              L6_5 = GetJobFramework
              L6_5 = L6_5()
              L5_5.PlayerJob = L6_5
              L6_5 = PhoneData
              L6_5 = L6_5.PlayerData
              L6_5 = L6_5.metadata
              L6_5 = L6_5.phone
              L6_5 = L6_5.background
              L5_5.background = L6_5
              L6_5 = L1_4
              L5_5.hacked = L6_5
              L4_5(L5_5)
              L4_5 = PhoneData
              L4_5.isOpen = true
              L4_5 = PhoneData
              L4_5 = L4_5.CallData
              L4_5 = L4_5.InCall
              if L4_5 then
                L4_5 = PhoneData
                L4_5 = L4_5.CallData
                L4_5 = L4_5.AnsweredCall
                if L4_5 then
                  L4_5 = DoPhoneAnimation
                  L5_5 = "cellphone_call_to_text"
                  L4_5(L5_5)
              end
              else
                L4_5 = DoPhoneAnimation
                L5_5 = "cellphone_text_in"
                L4_5(L5_5)
              end
              L4_5 = SetTimeout
              L5_5 = 250
              function L6_5()
                local L0_6, L1_6, L2_6
                L0_6 = newPhoneProp
                L1_6 = Config
                L1_6 = L1_6.PhonesProps
                L2_6 = A0_3
                L1_6 = L1_6[L2_6]
                L0_6(L1_6)
              end
              L4_5(L5_5, L6_5)
              L4_5 = true
              L8_1 = L4_5
            end
            L2_4(L3_4, L4_4)
          end
          L1_3(L2_3, L3_3)
        else
          L1_3 = SendTextMessage
          L2_3 = Lang
          L3_3 = "NO_PHONE"
          L2_3 = L2_3(L3_3)
          L3_3 = "error"
          L1_3(L2_3, L3_3)
        end
      end
      L1_2(L2_2, L3_2)
    end
  end
end
OpenPhone = L13_1
L13_1 = RegisterNUICallback
L14_1 = "SetRingTone"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PhoneData
  L1_2 = L1_2.MetaData
  L1_2 = L1_2.ringtone
  L2_2 = A0_2.ringtone
  if L1_2 ~= L2_2 then
    L1_2 = PhoneData
    L1_2 = L1_2.MetaData
    L2_2 = A0_2.ringtone
    L1_2.ringtone = L2_2
    L1_2 = TriggerServerEvent
    L2_2 = "qs-smartphone:server:SaveMetaData"
    L3_2 = "ringtone"
    L4_2 = PhoneData
    L4_2 = L4_2.MetaData
    L4_2 = L4_2.ringtone
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = A0_2.start
  if true == L1_2 then
    L1_2 = print
    L2_2 = "sonido aqui"
    L1_2(L2_2)
    L1_2 = exports
    L1_2 = L1_2["qs-sounds"]
    L2_2 = L1_2
    L1_2 = L1_2.StartSound
    L3_2 = PhoneData
    L3_2 = L3_2.MetaData
    L3_2 = L3_2.ringtone
    L4_2 = ".mp3"
    L3_2 = L3_2 .. L4_2
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "StopRingtone"
function L15_1(A0_2)
  local L1_2, L2_2
  L1_2 = exports
  L1_2 = L1_2["qs-sounds"]
  L2_2 = L1_2
  L1_2 = L1_2.StopSound
  L1_2(L2_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SetupGarageVehicles"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetGarageVehicles"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    if nil ~= A0_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = A0_3[L5_3]
        L8_3 = GetLabelText
        L9_3 = GetDisplayNameFromVehicleModel
        L10_3 = L6_3.model
        L9_3, L10_3 = L9_3(L10_3)
        L8_3 = L8_3(L9_3, L10_3)
        L7_3.fullname = L8_3
        L7_3 = A0_3[L5_3]
        L7_3 = L7_3.fullname
        if "NULL" ~= L7_3 then
          L7_3 = A0_3[L5_3]
          L7_3 = L7_3.fullname
          if "Null" ~= L7_3 then
            goto lbl_27
          end
        end
        L7_3 = A0_3[L5_3]
        L8_3 = Lang
        L9_3 = "Vehicle"
        L8_3 = L8_3(L9_3)
        L7_3.fullname = L8_3
        ::lbl_27::
      end
    end
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "FetchSearchResults"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:FetchResult"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.input
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SetGPSLocation"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = SetNewWaypoint
  L4_2 = A0_2.coords
  L4_2 = L4_2.x
  L5_2 = A0_2.coords
  L5_2 = L5_2.y
  L3_2(L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SetApartmentLocation"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.data
  L2_2 = L2_2.appartmentdata
  L3_2 = Apartments
  L3_2 = L3_2.Locations
  L4_2 = L2_2.type
  L3_2 = L3_2[L4_2]
  L4_2 = SetNewWaypoint
  L5_2 = L3_2.coords
  L5_2 = L5_2.enter
  L5_2 = L5_2.x
  L6_2 = L3_2.coords
  L6_2 = L6_2.enter
  L6_2 = L6_2.y
  L4_2(L5_2, L6_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "FetchVehicleScan"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = nil
  L4_2 = Config
  L4_2 = L4_2.Framework
  if "ESX" == L4_2 then
    L4_2 = ESX
    L4_2 = L4_2.Game
    L4_2 = L4_2.GetClosestVehicle
    L4_2, L5_2 = L4_2()
    L3_2 = L5_2
    L2_2 = L4_2
  else
    L4_2 = QBCore
    L4_2 = L4_2.Functions
    L4_2 = L4_2.GetClosestVehicle
    L4_2, L5_2 = L4_2()
    L3_2 = L5_2
    L2_2 = L4_2
  end
  if L2_2 and 0 ~= L2_2 and L3_2 > 0 and L3_2 < 10 then
    L4_2 = GetVehicleNumberPlateText
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetDisplayNameFromVehicleModel
    L6_2 = GetEntityModel
    L7_2 = L2_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
    L6_2 = L5_2
    L5_2 = L5_2.lower
    L5_2 = L5_2(L6_2)
    L6_2 = QSPhone
    L6_2 = L6_2.TriggerServerCallback
    L7_2 = "qs-smartphone:server:ScanPlate"
    function L8_2(A0_3)
      local L1_3, L2_3
      if A0_3 then
        A0_3.isFlagged = false
        L1_3 = L5_2
        A0_3.label = L1_3
        L1_3 = A1_2
        L2_3 = A0_3
        L1_3(L2_3)
      else
        L1_3 = A1_2
        L2_3 = nil
        L1_3(L2_3)
      end
    end
    L9_2 = L4_2
    L6_2(L7_2, L8_2, L9_2)
  else
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "DarkwebList"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Config
  L3_2 = L3_2.Darkweb
  L3_2 = L3_2.List
  L2_2(L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "DarkwebOrder"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:buy"
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:notenough"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "qs-smartphone:notenough"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "PhoneNotification"
  L3_2 = {}
  L4_2 = Lang
  L5_2 = "DARKWEB_TITLE"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = Lang
  L5_2 = "DARKWEB_NO_MONEY"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L3_2.icon = "./img/apps/darkweb.png"
  L2_2.PhoneNotify = L3_2
  L1_2(L2_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:client:RaceNotify"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "qs-smartphone:client:RaceNotify"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PhoneData
  L1_2 = L1_2.isOpen
  if L1_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "PhoneNotification"
    L3_2 = {}
    L4_2 = Lang
    L5_2 = "RACE_TITLE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L3_2.text = A0_2
    L3_2.icon = "./img/apps/racing.png"
    L2_2.PhoneNotify = L3_2
    L1_2(L2_2)
  else
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "Notification"
    L3_2 = {}
    L4_2 = Lang
    L5_2 = "RACE_TITLE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L3_2.content = A0_2
    L3_2.icon = "./img/apps/racing.png"
    L2_2.NotifyData = L3_2
    L1_2(L2_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetTrackData"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-racing:server:GetTrackData"
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    A0_3.CreatorData = A1_3
    L2_3 = A1_2
    L3_3 = A0_3
    L2_3(L3_3)
  end
  L5_2 = A0_2.RaceId
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "IsInRace"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = exports
  L2_2 = L2_2["qs-racing"]
  L3_2 = L2_2
  L2_2 = L2_2.IsInRace
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "RaceDistanceCheck"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-racing:server:GetRacingData"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = GetEntityCoords
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = A0_3.Checkpoints
    L3_3 = L3_3[1]
    L3_3 = L3_3.coords
    L4_3 = vector3
    L5_3 = L3_3.x
    L6_3 = L3_3.y
    L7_3 = L3_3.z
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L4_3 = L2_3 - L4_3
    L4_3 = #L4_3
    if L4_3 <= 115.0 then
      L5_3 = A0_2.Joined
      if L5_3 then
        L5_3 = TriggerEvent
        L6_3 = "qs-racing:client:WaitingDistanceCheck"
        L5_3(L6_3)
      end
      L5_3 = A1_2
      L6_3 = true
      L5_3(L6_3)
    else
      L5_3 = SendTextMessage
      L6_3 = Lang
      L7_3 = "RACE_TOO_FAR"
      L6_3 = L6_3(L7_3)
      L7_3 = "error"
      L5_3(L6_3, L7_3)
      L5_3 = SetNewWaypoint
      L6_3 = L3_3.x
      L7_3 = L3_3.y
      L5_3(L6_3, L7_3)
      L5_3 = A1_2
      L6_3 = false
      L5_3(L6_3)
    end
  end
  L5_2 = A0_2.RaceId
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "IsBusyCheck"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.check
  if "editor" == L2_2 then
    L2_2 = A1_2
    L3_2 = exports
    L3_2 = L3_2["qs-racing"]
    L4_2 = L3_2
    L3_2 = L3_2.IsInEditor
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2
    L3_2 = exports
    L3_2 = L3_2["qs-racing"]
    L4_2 = L3_2
    L3_2 = L3_2.IsInRace
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "CanRaceSetup"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-racing:server:CanRaceSetup"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:client:UpdateLapraces"
function L15_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "UpdateRacingApp"
  L0_2(L1_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "StartTrackEditor"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-racing:server:CreateLapRace"
  L4_2 = A0_2.TrackName
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetRacingLeaderboards"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-racing:server:GetRacingLeaderboards"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetRaces"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-racing:server:GetListedRaces"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetAvailableRaces"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-racing:server:GetRaces"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "JoinRace"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-racing:server:JoinRace"
  L3_2 = A0_2.RaceData
  L1_2(L2_2, L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "LeaveRace"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-racing:server:LeaveRace"
  L3_2 = A0_2.RaceData
  L1_2(L2_2, L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "StartRace"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-racing:server:StartRace"
  L3_2 = A0_2.RaceData
  L3_2 = L3_2.RaceId
  L1_2(L2_2, L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SetupRace"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-racing:server:SetupRace"
  L4_2 = A0_2.RaceId
  L5_2 = tonumber
  L6_2 = A0_2.AmountOfLaps
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "HasCreatedRace"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-racing:server:HasCreatedRace"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "IsAuthorizedToCreateRaces"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-racing:server:IsAuthorizedToCreateRaces"
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = {}
    L2_3.IsAuthorized = A0_3
    L3_3 = exports
    L3_3 = L3_3["qs-racing"]
    L4_3 = L3_3
    L3_3 = L3_3.IsInEditor
    L3_3 = L3_3(L4_3)
    L2_3.IsBusy = L3_3
    L2_3.IsNameAvailable = A1_3
    L3_3 = A1_2
    L4_3 = L2_3
    L3_3(L4_3)
  end
  L5_2 = A0_2.TrackName
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:enough"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "qs-smartphone:enough"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "PhoneNotification"
  L3_2 = {}
  L4_2 = Lang
  L5_2 = "DARKWEB_TITLE"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = Lang
  L5_2 = "DARKWEB_PURCHASE"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L3_2.icon = "./img/apps/darkweb.png"
  L2_2.PhoneNotify = L3_2
  L1_2(L2_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:client:addPoliceAlert"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = Config
  L2_2 = L2_2.PoliceAppJobs
  L2_2 = #L2_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = GetJobFramework
    L5_2 = L5_2()
    L5_2 = L5_2.name
    L6_2 = Config
    L6_2 = L6_2.PoliceAppJobs
    L6_2 = L6_2[L4_2]
    if L5_2 == L6_2 then
      L5_2 = SendNUIMessage
      L6_2 = {}
      L6_2.action = "AddPoliceAlert"
      L6_2.alert = A0_2
      L5_2(L6_2)
      L5_2 = SendNUIMessage
      L6_2 = {}
      L6_2.action = "PhoneNotification"
      L7_2 = {}
      L8_2 = Lang
      L9_2 = "POLICE_TITLE"
      L8_2 = L8_2(L9_2)
      L7_2.title = L8_2
      L8_2 = A0_2.description
      L7_2.text = L8_2
      L7_2.icon = "./img/apps/police.png"
      L6_2.PhoneNotify = L7_2
      L5_2(L6_2)
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SetAlertWaypoint"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.alert
  L1_2 = L1_2.coords
  L2_2 = SetNewWaypoint
  L3_2 = L1_2.x
  L4_2 = L1_2.y
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "FetchVehicleResults"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetVehicleSearchResults"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    if nil ~= A0_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = A0_3[L5_3]
        L7_3.isFlagged = false
        L7_3 = Wait
        L8_3 = 50
        L7_3(L8_3)
      end
    end
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.input
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "FetchPlayerHouses"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:MeosGetPlayerHouses"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.input
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetirNotes"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetNotes"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:updateNotes"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "qs-smartphone:updateNotes"
function L15_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "UpdateNotes"
  L0_2(L1_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "LoadAdverts"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:LoadAdverts"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetirinstaResimleri"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetGalerinsta"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.owner
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "GetirinstaProfilBilgi"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetirinstaProfilBilgi"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.owner
  L2_2(L3_2, L4_2, L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "BringGalleryPictures"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetGaleri"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
function L13_1()
  local L0_2, L1_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "close"
  L0_2(L1_2)
end
ClosePhone = L13_1
L13_1 = RegisterNUICallback
L14_1 = "AcceptPingPlayer"
function L15_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerEvent
  L1_2 = "qs-smartphone:server:acceptping"
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "qs-smartphone:ping:client:UiUppers"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "rejectPingPlayer"
function L15_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerServerEvent
  L1_2 = "qs-smartphone:server:denyping"
  L0_2(L1_2)
  L0_2 = TriggerEvent
  L1_2 = "qs-smartphone:ping:client:UiUppers"
  L2_2 = false
  L0_2(L1_2, L2_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNUICallback
L14_1 = "SendPingPlayer"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:SendPing2"
  L3_2 = A0_2.id
  L1_2(L2_2, L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = {}
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:client:DoPing"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:SendPing"
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:client:AcceptPing"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = TriggerServerEvent
  L5_2 = "qs-smartphone:server:SendLocation"
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:client:SendLocation"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "Notification"
  L4_2 = {}
  L5_2 = Lang
  L6_2 = "PING_TITLE"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L5_2 = Lang
  L6_2 = "PING_LOCATION_ON_MAP"
  L5_2 = L5_2(L6_2)
  L4_2.text = L5_2
  L4_2.icon = "./img/apps/ping.png"
  L4_2.timeout = 1500
  L3_2.PhoneNotify = L4_2
  L2_2(L3_2)
  L3_2 = A0_2.sender
  L2_2 = L13_1
  L4_2 = AddBlipForCoord
  L5_2 = A0_2.coords
  L5_2 = L5_2.x
  L6_2 = A0_2.coords
  L6_2 = L6_2.y
  L7_2 = A0_2.coords
  L7_2 = L7_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L2_2[L3_2] = L4_2
  L2_2 = SetBlipSprite
  L4_2 = A0_2.sender
  L3_2 = L13_1
  L3_2 = L3_2[L4_2]
  L4_2 = 280
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipDisplay
  L4_2 = A0_2.sender
  L3_2 = L13_1
  L3_2 = L3_2[L4_2]
  L4_2 = 4
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipScale
  L4_2 = A0_2.sender
  L3_2 = L13_1
  L3_2 = L3_2[L4_2]
  L4_2 = 1.1
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipAsShortRange
  L4_2 = A0_2.sender
  L3_2 = L13_1
  L3_2 = L3_2[L4_2]
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetBlipColour
  L4_2 = A0_2.sender
  L3_2 = L13_1
  L3_2 = L3_2[L4_2]
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = BeginTextCommandSetBlipName
  L3_2 = "STRING"
  L2_2(L3_2)
  L2_2 = AddTextComponentSubstringPlayerName
  L3_2 = Lang
  L4_2 = "PING_BLIP_NAME"
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = EndTextCommandSetBlipName
  L4_2 = A0_2.sender
  L3_2 = L13_1
  L3_2 = L3_2[L4_2]
  L2_2(L3_2)
  L2_2 = SetTimeout
  L3_2 = 300000
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = SendNUIMessage
    L1_3 = {}
    L1_3.action = "Notification"
    L2_3 = {}
    L3_3 = Lang
    L4_3 = "PING_TITLE"
    L3_3 = L3_3(L4_3)
    L2_3.title = L3_3
    L3_3 = Lang
    L4_3 = "PING_EXPIRED"
    L3_3 = L3_3(L4_3)
    L2_3.text = L3_3
    L2_3.icon = "./img/apps/ping.png"
    L2_3.timeout = 1500
    L1_3.PhoneNotify = L2_3
    L0_3(L1_3)
    L0_3 = RemoveBlip
    L2_3 = A0_2.sender
    L1_3 = L13_1
    L1_3 = L1_3[L2_3]
    L0_3(L1_3)
    L1_3 = A0_2.sender
    L0_3 = L13_1
    L0_3[L1_3] = nil
    L0_3 = TriggerEvent
    L1_3 = "qs-smartphone:ping:client:UiUppers"
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:ping:client:UiUppers"
function L16_1(A0_2)
  local L1_2, L2_2
  if A0_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "acceptrejectBlock"
    L1_2(L2_2)
  else
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "acceptrejectNone"
    L1_2(L2_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "GetirInstaZamanTuneli"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetirInstaZamanTuneli"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "InstagramHesaplari"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:InstagramHesaplari"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "TamEkranKapat"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "TamEkranKapat"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "TamEkranGecis"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "TamEkranGecis"
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "ResimSil"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SilResim"
  L4_2 = A0_2.resim_url
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "ResimSilinsta"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:ResimSilinsta"
  L4_2 = A0_2.resim_url
  L5_2 = A0_2.id_photo
  L2_2(L3_2, L4_2, L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "PaylasInstaPost"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:PaylasInstaPost"
  L4_2 = A0_2.eskiResim
  L5_2 = A0_2.eskiEfekt
  L6_2 = A0_2.yazi
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "NotEkle"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:NotEkle"
  L4_2 = A0_2.baslik
  L5_2 = A0_2.aciklama
  L2_2(L3_2, L4_2, L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "NotSil"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:NotSil"
  L4_2 = A0_2.id
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "NotGuncelle"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:NotGuncelle"
  L4_2 = A0_2.id
  L5_2 = A0_2.baslik
  L6_2 = A0_2.aciklama
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "Takip_instagram"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:Takip_instagram"
  L4_2 = A0_2.takip
  L5_2 = A0_2.takip_edilen
  L2_2(L3_2, L4_2, L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "FotoGaleriKayit"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:kaydetResim"
  L4_2 = A0_2.resim_url
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "biyoguncelle"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:biyoguncelle"
  L4_2 = A0_2.biyografi
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "BildirimManager"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "BildirimManager"
  L3_2.bildirim = A0_2
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "GetActiveJob"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone-server:GetActiveJob"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.job
  L2_2(L3_2, L4_2, L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "AddAccountTinder"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:AddAccountTinder"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetUsersTinder"
      function L3_3(A0_4)
        local L1_4, L2_4
        L1_4 = A1_2
        L2_4 = A0_4
        L1_4(L2_4)
      end
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2.data
  L2_2(L3_2, L4_2, L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "GetUsersTinder"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetUsersTinder"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "GetTinderMessages"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetTinderMessages"
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "LikeDislike"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:LikeDislike"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A1_2
    L1_3 = true
    L0_3(L1_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "clearalarms"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = TriggerServerEvent
  L4_2 = "qs-smartphone:server:sendNewMail"
  L5_2 = {}
  L5_2.sender = "Robby Williams"
  L5_2.subject = "Hey bro, how are you?"
  L5_2.message = "Soon we will launch more versions and this will be more complete, what are you waiting for to get this great phone brother?"
  L6_2 = {}
  L5_2.button = L6_2
  L3_2(L4_2, L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "AddAlarm"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PhoneData
  L1_2 = L1_2.Alarms
  L1_2 = #L1_2
  L1_2 = L1_2 + 1
  A0_2.id = L1_2
  L1_2 = PhoneData
  L1_2 = L1_2.Alarms
  L2_2 = PhoneData
  L2_2 = L2_2.Alarms
  L2_2 = #L2_2
  L2_2 = L2_2 + 1
  L1_2[L2_2] = A0_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:UpdateAlarms"
  L3_2 = PhoneData
  L3_2 = L3_2.Alarms
  L1_2(L2_2, L3_2)
  L1_2 = PhoneData
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.metadata
  L1_2 = L1_2.phone
  L2_2 = PhoneData
  L2_2 = L2_2.Alarms
  L1_2.Alarms = L2_2
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "GetAlarmData"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = PhoneData
  L3_2 = L3_2.Alarms
  L2_2(L3_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "DeleteAlarm"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = PhoneData
  L1_2 = L1_2.Alarms
  L2_2 = tonumber
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 + 1
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = table
    L1_2 = L1_2.remove
    L2_2 = PhoneData
    L2_2 = L2_2.Alarms
    L3_2 = tonumber
    L4_2 = A0_2.id
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 + 1
    L1_2(L2_2, L3_2)
  end
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:UpdateAlarms"
  L3_2 = PhoneData
  L3_2 = L3_2.Alarms
  L1_2(L2_2, L3_2)
  L1_2 = PhoneData
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.metadata
  L2_2 = PhoneData
  L2_2 = L2_2.Alarms
  L1_2.phonealarms = L2_2
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNUICallback
L15_1 = "UpdateAlarm"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PhoneData
  L1_2 = L1_2.Alarms
  L2_2 = tonumber
  L3_2 = A0_2.id
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = PhoneData
    L1_2 = L1_2.Alarms
    L2_2 = tonumber
    L3_2 = A0_2.id
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    L2_2 = A0_2.enabled
    L1_2.enabled = L2_2
  end
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:UpdateAlarms"
  L3_2 = PhoneData
  L3_2 = L3_2.Alarms
  L1_2(L2_2, L3_2)
  L1_2 = PhoneData
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.metadata
  L2_2 = PhoneData
  L2_2 = L2_2.Alarms
  L1_2.phonealarms = L2_2
end
L14_1(L15_1, L16_1)
L14_1 = {}
L15_1 = {}
L16_1 = 0
L17_1 = 1
L18_1 = 2
L19_1 = 3
L20_1 = 4
L21_1 = 5
L22_1 = 6
L15_1[1] = L16_1
L15_1[2] = L17_1
L15_1[3] = L18_1
L15_1[4] = L19_1
L15_1[5] = L20_1
L15_1[6] = L21_1
L15_1[7] = L22_1
L14_1.everyday = L15_1
L15_1 = {}
L16_1 = 1
L17_1 = 2
L18_1 = 3
L19_1 = 4
L20_1 = 5
L15_1[1] = L16_1
L15_1[2] = L17_1
L15_1[3] = L18_1
L15_1[4] = L19_1
L15_1[5] = L20_1
L14_1.weekdays = L15_1
L15_1 = {}
L16_1 = 0
L17_1 = 6
L15_1[1] = L16_1
L15_1[2] = L17_1
L14_1.weekend = L15_1
function L15_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = A0_2.enabled
  if not L4_2 then
    return
  end
  L4_2 = A0_2.cycle
  L4_2 = "everyday" == L4_2 or L4_2
  if false == L4_2 then
    return
  end
  if false == L4_2 then
    L5_2 = false
    L6_2 = pairs
    L8_2 = A0_2.cycle
    L7_2 = L14_1
    L7_2 = L7_2[L8_2]
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = tonumber
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L13_2 = tonumber
      L14_2 = A1_2
      L13_2 = L13_2(L14_2)
      if L12_2 == L13_2 then
        L5_2 = true
        break
      end
    end
    if true == L5_2 then
      L4_2 = true
    end
  end
  L5_2 = tonumber
  L6_2 = A0_2.hour
  L5_2 = L5_2(L6_2)
  L6_2 = tonumber
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 == L6_2 or L5_2
  L6_2 = tonumber
  L7_2 = A0_2.minute
  L6_2 = L6_2(L7_2)
  L7_2 = tonumber
  L8_2 = A3_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2 == L7_2 or L6_2
  if L4_2 and L5_2 and L6_2 then
    L7_2 = SendNUIMessage
    L8_2 = {}
    L8_2.action = "PlayAlarm"
    L7_2(L8_2)
    L7_2 = SendNUIMessage
    L8_2 = {}
    L8_2.action = "Notification"
    L9_2 = {}
    L10_2 = Lang
    L11_2 = "CLOCK_TITLE"
    L10_2 = L10_2(L11_2)
    L9_2.title = L10_2
    L10_2 = A0_2.label
    L9_2.text = L10_2
    L9_2.icon = "./img/apps/clock.png"
    L8_2.PhoneNotify = L9_2
    L7_2(L8_2)
  end
end
CheckAlarm = L15_1
L15_1 = Citizen
L15_1 = L15_1.CreateThread
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  while true do
    L0_2 = ESX
    if nil ~= L0_2 then
      break
    end
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
  while true do
    L0_2 = GetLocalTime
    L0_2, L1_2, L2_2, L3_2, L4_2, L5_2 = L0_2()
    L6_2 = tonumber
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = 0
    L7_2 = L7_2(L8_2)
    if L6_2 == L7_2 then
      break
    end
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 999
    L6_2(L7_2)
  end
  while true do
    L0_2 = QSPhone
    L0_2 = L0_2.TriggerServerCallback
    L1_2 = "qs-smartphone:server:GetTime"
    function L2_2(A0_3, A1_3, A2_3)
      local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
      L3_3 = pairs
      L4_3 = PhoneData
      L4_3 = L4_3.Alarms
      L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
      for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
        L9_3 = CheckAlarm
        L10_3 = L8_3
        L11_3 = A0_3
        L12_3 = A1_3
        L13_3 = A2_3
        L9_3(L10_3, L11_3, L12_3, L13_3)
      end
    end
    L0_2(L1_2, L2_2)
    Citizen.Wait(59000)
  end
end
L15_1(L16_1)
L15_1 = RegisterNUICallback
L16_1 = "SendTinderMessage"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.message
  L3_2 = A0_2.phone
  L4_2 = {}
  L4_2.message = L2_2
  L4_2.phone = L3_2
  L5_2 = QSPhone
  L5_2 = L5_2.TriggerServerCallback
  L6_2 = "qs-smartphone:SendTinderMessage"
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetTinderMessages"
      function L3_3(A0_4)
        local L1_4, L2_4
        if A0_4 then
          L1_4 = A1_2
          L2_4 = A0_4
          L1_4(L2_4)
        end
      end
      L1_3(L2_3, L3_3)
    end
  end
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "SaveTinderPP"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:SaveTinderPP"
  function L4_2(A0_3)
    local L1_3
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "EditProfileTinder"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:EditProfileTinder"
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = true
      L1_3(L2_3)
    else
      L1_3 = A1_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:ClosePhone"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:ClosePhone"
function L17_1()
  local L0_2, L1_2
  L0_2 = ClosePhone
  L0_2()
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "Close"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1
  L2_2 = A0_2.widget_gorunum
  if L1_2 == L2_2 then
    L1_2 = L4_1
    L2_2 = A0_2.widget_tip
    if L1_2 == L2_2 then
      goto lbl_17
    end
  end
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:SaveWidget"
  L3_2 = A0_2.widget_gorunum
  L4_2 = A0_2.widget_tip
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = print
  L2_2 = "[qs-smartphone] Update Widget"
  L1_2(L2_2)
  ::lbl_17::
  L1_2 = A0_2.widget_gorunum
  L3_1 = L1_2
  L1_2 = A0_2.widget_tip
  L4_1 = L1_2
  L1_2 = PhoneData
  L1_2 = L1_2.CallData
  L1_2 = L1_2.InCall
  if L1_2 then
    L1_2 = PhoneData
    L1_2 = L1_2.CallData
    L1_2 = L1_2.AnsweredCall
    if L1_2 then
      L1_2 = PhoneData
      L1_2 = L1_2.AnimationData
      L1_2.lib = nil
      L1_2 = PhoneData
      L1_2 = L1_2.AnimationData
      L1_2.anim = nil
      L1_2 = DoPhoneAnimation
      L2_2 = "cellphone_text_to_call"
      L1_2(L2_2)
  end
  else
    L1_2 = DoPhoneAnimation
    L2_2 = "cellphone_text_out"
    L1_2(L2_2)
    L1_2 = SetTimeout
    L2_2 = 400
    function L3_2()
      local L0_3, L1_3, L2_3, L3_3, L4_3
      L0_3 = StopAnimTask
      L1_3 = PlayerPedId
      L1_3 = L1_3()
      L2_3 = PhoneData
      L2_3 = L2_3.AnimationData
      L2_3 = L2_3.lib
      L3_3 = PhoneData
      L3_3 = L3_3.AnimationData
      L3_3 = L3_3.anim
      L4_3 = 2.5
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = deletePhone
      L0_3()
      L0_3 = PhoneData
      L0_3 = L0_3.AnimationData
      L0_3.lib = nil
      L0_3 = PhoneData
      L0_3 = L0_3.AnimationData
      L0_3.anim = nil
    end
    L1_2(L2_2, L3_2)
  end
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = PhoneData
      L0_3 = L0_3.isOpen
      if L0_3 then
        break
      end
      L0_3 = IsNuiFocusKeepingInput
      if not L0_3 then
        break
      end
      L0_3 = IsControlJustPressed
      L1_3 = 0
      L2_3 = 24
      L0_3 = L0_3(L1_3, L2_3)
      if not L0_3 then
        L0_3 = IsDisabledControlJustPressed
        L1_3 = 0
        L2_3 = 24
        L0_3 = L0_3(L1_3, L2_3)
        if not L0_3 then
          goto lbl_27
        end
      end
      L0_3 = DisablePlayerFiring
      L1_3 = PlayerId
      L1_3 = L1_3()
      L2_3 = false
      L0_3(L1_3, L2_3)
      do break end
      goto lbl_32
      ::lbl_27::
      L0_3 = DisablePlayerFiring
      L1_3 = PlayerId
      L1_3 = L1_3()
      L2_3 = true
      L0_3(L1_3, L2_3)
      ::lbl_32::
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
    end
  end
  L1_2(L2_2)
  L1_2 = PhoneData
  L1_2.isOpen = false
  L1_2 = Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = SetNuiFocusKeepInput
  L2_2 = false
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 100
  L1_2(L2_2)
  L1_2 = SetNuiFocus
  L2_2 = false
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = false
  L8_1 = L1_2
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "RemoveMail"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.mailId
  L3_2 = TriggerServerEvent
  L4_2 = "qs-smartphone:server:RemoveMail"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "SaveTwitterPP"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.mailId
  L3_2 = TriggerServerEvent
  L4_2 = "qs-smartphone:server:SaveTwitPP"
  L5_2 = A0_2.img
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = "ok"
  L3_2(L4_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:client:UpdateMails"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:client:UpdateMails"
function L17_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "UpdateMails"
  L2_2.Mails = A0_2
  L1_2(L2_2)
  L1_2 = PhoneData
  L1_2.Mails = A0_2
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:client:dontHaveApp"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:client:dontHaveApp"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "Notification"
  L3_2 = {}
  L4_2 = Lang
  L5_2 = "SETTINGS_TITLE"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = Lang
  L5_2 = "NOT_MESSAGE_AVAILABLE"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L3_2.icon = "./img/apps/settings.png"
  L2_2.PhoneNotify = L3_2
  L1_2(L2_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:client:hospitalMessage"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:client:hospitalMessage"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetJobFramework
  L2_2 = L2_2()
  L2_2 = L2_2.name
  if "ambulance" == L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "Notification"
    L4_2 = {}
    L5_2 = Lang
    L6_2 = "EMERGENCY_TITLE"
    L5_2 = L5_2(L6_2)
    L4_2.title = L5_2
    L5_2 = Lang
    L6_2 = "MESSAGE_EMERGENGY"
    L5_2 = L5_2(L6_2)
    L4_2.text = L5_2
    L4_2.icon = "./img/apps/ambulance.png"
    L4_2.timeout = 3500
    L3_2.PhoneNotify = L4_2
    L2_2(L3_2)
    L2_2 = A0_2.phone
    L3_2 = GetJobFramework
    L3_2 = L3_2()
    L3_2 = L3_2.name
    if L2_2 == L3_2 then
      L2_2 = GetPlayerServerId
      L3_2 = PlayerId
      L3_2, L4_2, L5_2, L6_2 = L3_2()
      L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
      if A1_2 ~= L2_2 then
        L2_2 = TriggerServerEvent
        L3_2 = "qs-smartphone:SendNewMessageJobhospitalMessage"
        L4_2 = A0_2
        L5_2 = A1_2
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "AcceptMailButton"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerEvent
  L2_2 = A0_2.buttonEvent
  L3_2 = A0_2.buttonData
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:ClearButtonData"
  L3_2 = A0_2.mailId
  L1_2(L2_2, L3_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "AddStory"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:AddStory"
  L3_2 = A0_2.img
  L1_2(L2_2, L3_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:client:RefreshActivity"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:client:RefreshActivity"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "RefreshActivities"
  L3_2 = GetPlayerIdentifier
  L3_2 = L3_2()
  L3_2 = A0_2[L3_2]
  L2_2.activities = L3_2
  L1_2(L2_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "InstagramStories"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetInstagramStories"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "AddNewContact"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = PhoneData
  L3_2 = L3_2.Contacts
  L4_2 = {}
  L5_2 = PhoneData
  L5_2 = L5_2.Contacts
  L5_2 = #L5_2
  L5_2 = L5_2 + 1
  L4_2.id = L5_2
  L5_2 = A0_2.name
  L4_2.name = L5_2
  L5_2 = A0_2.number
  L4_2.number = L5_2
  L5_2 = A0_2.note
  L4_2.note = L5_2
  L5_2 = A0_2.pp
  L4_2.pp = L5_2
  L2_2(L3_2, L4_2)
  L2_2 = Citizen
  L2_2 = L2_2.Wait
  L3_2 = 100
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = PhoneData
  L3_2 = L3_2.Contacts
  L2_2(L3_2)
  L2_2 = PhoneData
  L2_2 = L2_2.Chats
  L3_2 = A0_2.ContactNumber
  L2_2 = L2_2[L3_2]
  if nil ~= L2_2 then
    L2_2 = next
    L3_2 = PhoneData
    L3_2 = L3_2.Chats
    L4_2 = A0_2.ContactNumber
    L3_2 = L3_2[L4_2]
    L2_2 = L2_2(L3_2)
    if nil ~= L2_2 then
      L2_2 = PhoneData
      L2_2 = L2_2.Chats
      L3_2 = A0_2.ContactNumber
      L2_2 = L2_2[L3_2]
      L3_2 = A0_2.ContactName
      L2_2.name = L3_2
    end
  end
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:AddNewContact"
  L4_2 = A0_2.name
  L5_2 = A0_2.number
  L6_2 = A0_2.note
  L7_2 = A0_2.pp
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "GetMails"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = PhoneData
  L3_2 = L3_2.Mails
  L2_2(L3_2)
end
L15_1(L16_1, L17_1)
L15_1 = _ENV
L16_1 = "numberIsJob"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Jobs
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.job
    if L7_2 == A0_2 then
      L7_2 = true
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
L15_1[L16_1] = L17_1
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:client:notify"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:client:notify"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "Notification"
  L3_2 = {}
  L4_2 = A0_2.title
  L3_2.title = L4_2
  L4_2 = A0_2.text
  L3_2.text = L4_2
  L4_2 = A0_2.icon
  L3_2.icon = L4_2
  L4_2 = A0_2.timeout
  L3_2.timeout = L4_2
  L2_2.PhoneNotify = L3_2
  L1_2(L2_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "GetWhatsappChat"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetWhatsappChat"
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L2_3 = A1_2
      L3_3 = {}
      L4_3 = json
      L4_3 = L4_3.encode
      L5_3 = A0_3
      L4_3 = L4_3(L5_3)
      L3_3.messages = L4_3
      L3_3.pp = A1_3
      L2_3(L3_3)
    else
      L2_3 = A1_2
      L3_3 = {}
      L4_3 = json
      L4_3 = L4_3.encode
      L5_3 = {}
      L4_3 = L4_3(L5_3)
      L3_3.messages = L4_3
      L3_3.pp = A1_3
      L2_3(L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "GetProfilePicture"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.number
  L3_2 = QSPhone
  L3_2 = L3_2.TriggerServerCallback
  L4_2 = "qs-smartphone:GetProfilePicture"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "GetBankContacts"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = PhoneData
  L3_2 = L3_2.Contacts
  L2_2(L3_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "GetBankData"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetBankData"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L15_1(L16_1, L17_1)
L15_1 = _ENV
L16_1 = "GetKeyByDate"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = nil
  L3_2 = PhoneData
  L3_2 = L3_2.Chats
  L3_2 = L3_2[A0_2]
  if nil ~= L3_2 then
    L3_2 = PhoneData
    L3_2 = L3_2.Chats
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.messages
    if nil ~= L3_2 then
      L3_2 = pairs
      L4_2 = PhoneData
      L4_2 = L4_2.Chats
      L4_2 = L4_2[A0_2]
      L4_2 = L4_2.messages
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L8_2.date
        if L9_2 == A1_2 then
          L2_2 = L7_2
          break
        end
      end
    end
  end
  return L2_2
end
L15_1[L16_1] = L17_1
L15_1 = _ENV
L16_1 = "GetKeyByNumber"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = tostring
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = PhoneData
  L2_2 = L2_2.Chats
  if L2_2 then
    L2_2 = pairs
    L3_2 = PhoneData
    L3_2 = L3_2.Chats
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.number
      if L8_2 == A0_2 then
        L1_2 = L6_2
      end
    end
  end
  return L1_2
end
L15_1[L16_1] = L17_1
L15_1 = _ENV
L16_1 = "ReorganizeChats"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = PhoneData
  L2_2 = L2_2.Chats
  L2_2 = L2_2[A0_2]
  L1_2[1] = L2_2
  L2_2 = pairs
  L3_2 = PhoneData
  L3_2 = L3_2.Chats
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L6_2 ~= A0_2 then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = L1_2
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
  L2_2 = PhoneData
  L2_2.Chats = L1_2
end
L15_1[L16_1] = L17_1
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:SendNewMessageJob"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:SendNewMessageJob"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.phone
  L3_2 = GetJobFramework
  L3_2 = L3_2()
  L3_2 = L3_2.name
  if L2_2 == L3_2 then
    L2_2 = GetPlayerServerId
    L3_2 = PlayerId
    L3_2, L4_2, L5_2 = L3_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if A1_2 ~= L2_2 then
      L2_2 = TriggerServerEvent
      L3_2 = "qs-smartphone:SendNewMessageJob"
      L4_2 = A0_2
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "SendMessage"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.message
  L3_2 = A0_2.phone
  L4_2 = A0_2.type
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  L6_2 = GetEntityCoords
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if "location" == L4_2 then
    L7_2 = json
    L7_2 = L7_2.encode
    L8_2 = {}
    L9_2 = L6_2.x
    L8_2.x = L9_2
    L9_2 = L6_2.y
    L8_2.y = L9_2
    L7_2 = L7_2(L8_2)
    L2_2 = L7_2
  end
  L7_2 = {}
  L7_2.message = L2_2
  L7_2.phone = L3_2
  L7_2.type = L4_2
  L8_2 = QSPhone
  L8_2 = L8_2.TriggerServerCallback
  L9_2 = "qs-smartphone:SendMessage"
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetWhatsappChat"
      function L3_3(A0_4, A1_4)
        local L2_4, L3_4, L4_4, L5_4
        if A0_4 then
          L2_4 = A1_2
          L3_4 = {}
          L4_4 = json
          L4_4 = L4_4.encode
          L5_4 = A0_4
          L4_4 = L4_4(L5_4)
          L3_4.messages = L4_4
          L3_4.pp = A1_4
          L2_4(L3_4)
        else
          L2_4 = A1_2
          L3_4 = false
          L2_4(L3_4)
        end
      end
      L4_3 = A0_2
      L1_3(L2_3, L3_3, L4_3)
    end
  end
  L11_2 = L7_2
  L8_2(L9_2, L10_2, L11_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "SharedLocation"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.coords
  L1_2 = L1_2.x
  L2_2 = A0_2.coords
  L2_2 = L2_2.y
  L3_2 = SetNewWaypoint
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = whatsapp_notifications
  if L3_2 then
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "Notification"
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "WHATSAPP_TITLE"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = Lang
    L7_2 = "WHATSAPP_LOCATION_DEFINED"
    L6_2 = L6_2(L7_2)
    L5_2.text = L6_2
    L5_2.icon = "./img/apps/whatsapp.png"
    L5_2.timeout = 1500
    L4_2.PhoneNotify = L5_2
    L3_2(L4_2)
  end
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "SharedLocationMessage"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.coords
  L1_2 = L1_2.x
  L2_2 = A0_2.coords
  L2_2 = L2_2.y
  L3_2 = SetNewWaypoint
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = messages_notifications
  if L3_2 then
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "Notification"
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "MESSAGE_TITLE"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = Lang
    L7_2 = "MESSAGE_LOCATION_DEFINED"
    L6_2 = L6_2(L7_2)
    L5_2.text = L6_2
    L5_2.icon = "./img/apps/messages.png"
    L5_2.timeout = 1500
    L4_2.PhoneNotify = L5_2
    L3_2(L4_2)
  end
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "GetLocation"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = table
  L3_2 = L3_2.unpack
  L4_2 = GetEntityCoords
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = GetStreetNameFromHashKey
  L7_2 = GetStreetNameAtCoord
  L8_2 = L3_2
  L9_2 = L4_2
  L10_2 = L5_2
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = A1_2
  L8_2 = L6_2
  L7_2(L8_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:client:BankNotify"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:client:BankNotify"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "Notification"
  L3_2 = {}
  L4_2 = Lang
  L5_2 = "BANK_TITLE"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L3_2.text = A0_2
  L3_2.icon = "./img/apps/banksign.png"
  L3_2.timeout = 3500
  L2_2.PhoneNotify = L3_2
  L1_2(L2_2)
end
L15_1(L16_1, L17_1)
L15_1 = _ENV
L16_1 = "Citizen"
L15_1 = L15_1[L16_1]
L16_1 = "CreateThread"
L15_1 = L15_1[L16_1]
function L16_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = PhoneData
    L0_2 = L0_2.isOpen
    if L0_2 then
      L0_2 = SendNUIMessage
      L1_2 = {}
      L1_2.action = "updateTweets"
      L2_2 = PhoneData
      L2_2 = L2_2.Tweets
      L1_2.tweets = L2_2
      L2_2 = PhoneData
      L2_2 = L2_2.SelfTweets
      L1_2.selfTweets = L2_2
      L0_2(L1_2)
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 2000
    L0_2(L1_2)
  end
end
L15_1(L16_1)
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:client:NewMailNotify"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:client:NewMailNotify"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PhoneData
  L1_2 = L1_2.isOpen
  if L1_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "Notification"
    L3_2 = {}
    L4_2 = Lang
    L5_2 = "MAIL_TITLE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = Lang
    L5_2 = "MAIL_NEW"
    L4_2 = L4_2(L5_2)
    L5_2 = " "
    L6_2 = A0_2.sender
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2.text = L4_2
    L3_2.icon = "./img/apps/mail.png"
    L3_2.timeout = 1500
    L2_2.PhoneNotify = L3_2
    L1_2(L2_2)
  else
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "Notification"
    L3_2 = {}
    L4_2 = Lang
    L5_2 = "MAIL_TITLE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = Lang
    L5_2 = "MAIL_NEW"
    L4_2 = L4_2(L5_2)
    L5_2 = " "
    L6_2 = A0_2.sender
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2.text = L4_2
    L3_2.icon = "./img/apps/mail.png"
    L3_2.timeout = 3500
    L2_2.PhoneNotify = L3_2
    L1_2(L2_2)
  end
  L1_2 = FindApplication
  L2_2 = "mail"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = Config
    L2_2 = L2_2.PhoneApplications
    L2_2 = L2_2[L1_2]
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.Alerts
    L3_2 = L3_2 + 1
    L2_2.Alerts = L3_2
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "RefreshAppAlerts"
  L4_2 = Config
  L4_2 = L4_2.PhoneApplications
  L3_2.AppData = L4_2
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SetPhoneAlerts"
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "PostAdvert"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:AddAdvert"
  L3_2 = A0_2.message
  L4_2 = A0_2.cekilmis_foto
  L1_2(L2_2, L3_2, L4_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:client:UpdateAdverts"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:client:UpdateAdverts"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PhoneData
  L2_2.Adverts = A0_2
  L2_2 = PhoneData
  L2_2 = L2_2.isOpen
  if L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "Notification"
    L4_2 = {}
    L5_2 = Lang
    L6_2 = "ADVERTISEMENT_TITLE"
    L5_2 = L5_2(L6_2)
    L4_2.title = L5_2
    L5_2 = Lang
    L6_2 = "ADVERTISEMENT_NEW"
    L5_2 = L5_2(L6_2)
    L6_2 = " "
    L7_2 = A1_2
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2.text = L5_2
    L4_2.icon = "./img/apps/yellow_pages.png"
    L4_2.timeout = 2500
    L3_2.PhoneNotify = L4_2
    L2_2(L3_2)
  else
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "Notification"
    L4_2 = {}
    L5_2 = Lang
    L6_2 = "ADVERTISEMENT_TITLE"
    L5_2 = L5_2(L6_2)
    L4_2.title = L5_2
    L5_2 = Lang
    L6_2 = "ADVERTISEMENT_NEW"
    L5_2 = L5_2(L6_2)
    L6_2 = " "
    L7_2 = A1_2
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2.text = L5_2
    L4_2.icon = "./img/apps/yellow_pages.png"
    L4_2.timeout = 2500
    L3_2.PhoneNotify = L4_2
    L2_2(L3_2)
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "RefreshAdverts"
  L4_2 = PhoneData
  L4_2 = L4_2.Adverts
  L3_2.Adverts = L4_2
  L2_2(L3_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "ClearAlerts"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.number
  L3_2 = GetKeyByNumber
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = PhoneData
  L4_2 = L4_2.Chats
  L4_2 = L4_2[L3_2]
  L4_2 = L4_2.Unread
  if nil ~= L4_2 then
    L4_2 = FindApplication
    L5_2 = "whatsapp"
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = Config
      L5_2 = L5_2.PhoneApplications
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.Alerts
      L6_2 = PhoneData
      L6_2 = L6_2.Chats
      L6_2 = L6_2[L3_2]
      L6_2 = L6_2.Unread
      L5_2 = L5_2 - L6_2
      L6_2 = Config
      L6_2 = L6_2.PhoneApplications
      L6_2 = L6_2[L4_2]
      L6_2.Alerts = L5_2
    end
    L5_2 = TriggerServerEvent
    L6_2 = "qs-smartphone:server:SetPhoneAlerts"
    L7_2 = L4_2
    L8_2 = newAlerts
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = PhoneData
    L5_2 = L5_2.Chats
    L5_2 = L5_2[L3_2]
    L5_2.Unread = 0
    L5_2 = SendNUIMessage
    L6_2 = {}
    L6_2.action = "RefreshWhatsappAlerts"
    L7_2 = PhoneData
    L7_2 = L7_2.Chats
    L6_2.Chats = L7_2
    L5_2(L6_2)
    L5_2 = SendNUIMessage
    L6_2 = {}
    L6_2.action = "RefreshAppAlerts"
    L7_2 = Config
    L7_2 = L7_2.PhoneApplications
    L6_2.AppData = L7_2
    L5_2(L6_2)
  end
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "EditContact"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2.id
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = PhoneData
    L3_2 = L3_2.Contacts
    return L2_2(L3_2)
  end
  L2_2 = A0_2.name
  L3_2 = A0_2.number
  L4_2 = A0_2.note
  L5_2 = A0_2.pp
  L6_2 = pairs
  L7_2 = PhoneData
  L7_2 = L7_2.Contacts
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L11_2.id
    L13_2 = A0_2.id
    if L12_2 == L13_2 then
      L11_2.name = L2_2
      L11_2.number = L3_2
      L11_2.note = L4_2
      L11_2.pp = L5_2
      break
    end
  end
  L6_2 = TriggerServerEvent
  L7_2 = "qs-smartphone:server:EditContact"
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = A0_2.id
  L12_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = A1_2
  L7_2 = PhoneData
  L7_2 = L7_2.Contacts
  L6_2(L7_2)
end
L15_1(L16_1, L17_1)
L15_1 = _ENV
L16_1 = "GenerateTweetId"
function L17_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = "TWEET-"
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 11111111
  L3_2 = 99999999
  L1_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2 .. L1_2
  return L0_2
end
L15_1[L16_1] = L17_1
L15_1 = RegisterNetEvent
L16_1 = "qs-smartphone:client:UpdateHashtags"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:client:UpdateHashtags"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PhoneData
  L2_2 = L2_2.Hashtags
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = PhoneData
    L3_2 = L3_2.Hashtags
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.messages
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = PhoneData
    L2_2 = L2_2.Hashtags
    L3_2 = {}
    L3_2.hashtag = A0_2
    L4_2 = {}
    L3_2.messages = L4_2
    L2_2[A0_2] = L3_2
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = PhoneData
    L3_2 = L3_2.Hashtags
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.messages
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "UpdateHashtags"
  L4_2 = PhoneData
  L4_2 = L4_2.Hashtags
  L3_2.Hashtags = L4_2
  L2_2(L3_2)
end
L15_1(L16_1, L17_1)
L15_1 = _ENV
L16_1 = "exports"
L15_1 = L15_1[L16_1]
L16_1 = "isphoneopened"
function L17_1()
  local L0_2, L1_2
  L0_2 = L8_1
  return L0_2
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "DeleteTweet"
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:deleteTweet"
  L4_2 = A0_2.id
  L2_2(L3_2, L4_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNUICallback
L16_1 = "UpdateProfilePicture"
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.profilepicture
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SaveMetaData"
  L4_2 = "profilepicture"
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = "[?!@#]"
L16_1 = RegisterNetEvent
L17_1 = "qs-smartphone:updateForEveryone"
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "qs-smartphone:updateForEveryone"
function L18_1(A0_2)
  local L1_2
  L1_2 = PhoneData
  L1_2.Tweets = A0_2
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = "qs-smartphone:updateidForEveryone"
L16_1(L17_1)
L16_1 = AddEventHandler
L17_1 = "qs-smartphone:updateidForEveryone"
function L18_1()
  local L0_2, L1_2
  L0_2 = PhoneData
  L1_2 = PhoneData
  L1_2 = L1_2.id
  L1_2 = L1_2 + 1
  L0_2.id = L1_2
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "GetTweets"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetTweets"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "GetSelfTweets"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetSelfTweets"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNUICallback
L17_1 = "PostNewTweet"
function L18_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:PostNewTweet"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 then
      L1_3 = {}
      L2_3 = TwitterAccount
      L2_3 = L2_3.name
      L1_3.name = L2_3
      L2_3 = TwitterAccount
      L2_3 = L2_3.username
      L1_3.username = L2_3
      L2_3 = A0_2.message
      L1_3.message = L2_3
      L2_3 = A0_2.image
      L1_3.image = L2_3
      L2_3 = TwitterAccount
      L2_3 = L2_3.name
      if nil ~= L2_3 then
        L2_3 = TwitterAccount
        L2_3 = L2_3.name
        if "" ~= L2_3 then
          L2_3 = TwitterAccount
          L2_3 = L2_3.username
          if nil ~= L2_3 then
            L2_3 = TwitterAccount
            L2_3 = L2_3.username
            if "" ~= L2_3 then
              L2_3 = TriggerServerEvent
              L3_3 = "qs-smartphone:MentionedPlayer"
              L4_3 = TwitterAccount
              L4_3 = L4_3.name
              L5_3 = TwitterAccount
              L5_3 = L5_3.username
              L6_3 = L1_3
              L2_3(L3_3, L4_3, L5_3, L6_3)
            end
          end
        end
      end
      L2_3 = TriggerServerEvent
      L3_3 = "qs-smartphone:UpdateTweets"
      L4_3 = GetPlayerServerId
      L5_3 = PlayerId
      L5_3, L6_3 = L5_3()
      L4_3 = L4_3(L5_3, L6_3)
      L5_3 = L1_3
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = A1_2
      L3_3 = true
      L2_3(L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Citizen
  L2_2 = L2_2.Wait
  L3_2 = 1000
  L2_2(L3_2)
end
L16_1(L17_1, L18_1)
L16_1 = false
L17_1 = false
function L18_1()
  local L0_2, L1_2
  L0_2 = false
  L16_1 = L0_2
  L0_2 = ClearHelp
  L1_2 = true
  L0_2(L1_2)
  L0_2 = Wait
  L1_2 = 0
  L0_2(L1_2)
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 100
  L0_2(L1_2)
  L0_2 = SetFollowPedCamViewMode
  L1_2 = 1
  L0_2(L1_2)
  L0_2 = DestroyMobilePhone
  L0_2()
  L0_2 = DisplayRadar
  L1_2 = true
  L0_2(L1_2)
end
function L19_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Citizen
  L1_2 = L1_2.InvokeNative
  L2_2 = "0x2491A93618B7D838"
  L3_2 = A0_2
  return L1_2(L2_2, L3_2)
end
function L20_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = BeginTextCommandDisplayHelp
  L1_2 = "THREESTRINGS"
  L0_2(L1_2)
  L0_2 = AddTextComponentString
  L1_2 = Lang
  L2_2 = "CAMERA_EXIT"
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AddTextComponentString
  L1_2 = Lang
  L2_2 = "CAMERA_TOGGLE"
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = AddTextComponentString
  L1_2 = Lang
  L2_2 = "CAMERA_TAKE"
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2, L3_2, L4_2)
  L0_2 = EndTextCommandDisplayHelp
  L1_2 = 0
  L2_2 = true
  L3_2 = false
  L4_2 = -1
  L0_2(L1_2, L2_2, L3_2, L4_2)
end
function L21_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = ClearHelp
  L2_2 = true
  L1_2(L2_2)
  L1_2 = Wait
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = exports
  L2_2 = Config
  L2_2 = L2_2.ScreenshotBasic
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.requestScreenshotUpload
  L3_2 = L2_1
  L4_2 = "files[]"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = json
      L1_3 = L1_3.decode
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      if L1_3 then
        L2_3 = L1_3.attachments
        if L2_3 then
          L2_3 = L1_3.attachments
          L2_3 = L2_3[1]
          if L2_3 then
            L2_3 = L1_3.attachments
            L2_3 = L2_3[1]
            L2_3 = L2_3.proxy_url
            if L2_3 then
              L2_3 = A0_2
              L3_3 = L1_3.attachments
              L3_3 = L3_3[1]
              L3_3 = L3_3.proxy_url
              L2_3(L3_3)
          end
        end
      end
      else
        L2_3 = A0_2
        L3_3 = false
        L2_3(L3_3)
      end
    else
      L1_3 = A0_2
      L2_3 = false
      L1_3(L2_3)
    end
    L1_3 = L18_1
    L1_3()
    L1_3 = OpenPhone
    L2_3 = true
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L22_1 = RegisterNUICallback
L23_1 = "PostNewImage"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DisplayRadar
  L3_2 = false
  L2_2(L3_2)
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = CreateMobilePhone
  L3_2 = 1
  L2_2(L3_2)
  L2_2 = CellCamActivate
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = true
  L16_1 = L2_2
  while true do
    L2_2 = L16_1
    if not L2_2 then
      break
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
    L2_2 = IsControlJustPressed
    L3_2 = 1
    L4_2 = 27
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = L17_1
      L2_2 = not L2_2
      L17_1 = L2_2
      L2_2 = L19_1
      L3_2 = L17_1
      L2_2(L3_2)
    else
      L2_2 = IsControlJustPressed
      L3_2 = 1
      L4_2 = 176
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 then
        L2_2 = L21_1
        L3_2 = A1_2
        L2_2(L3_2)
        return
      else
        L2_2 = IsControlJustPressed
        L3_2 = 1
        L4_2 = 177
        L2_2 = L2_2(L3_2, L4_2)
        if L2_2 then
          L2_2 = A1_2
          L3_2 = false
          L2_2(L3_2)
          L2_2 = L18_1
          L2_2()
          L2_2 = Citizen
          L2_2 = L2_2.Wait
          L3_2 = 300
          L2_2(L3_2)
          L2_2 = ClosePhone
          L2_2()
          return
        end
      end
    end
    L2_2 = L20_1
    L2_2()
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "qs-smartphone:client:TransferMoney"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "qs-smartphone:client:TransferMoney"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = PhoneData
  L2_2 = L2_2.isOpen
  if L2_2 then
    L2_2 = SendNUIMessage
    L3_2 = {}
    L3_2.action = "UpdateBank"
    L3_2.NewBalance = A1_2
    L2_2(L3_2)
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "qs-smartphone:UpdateInstagramPosts"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "qs-smartphone:UpdateInstagramPosts"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  if A0_2 ~= L2_2 then
    L3_2 = instagram_notifications
    if L3_2 then
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.action = "Notification"
      L5_2 = {}
      L6_2 = Lang
      L7_2 = "INSTAGRAM_TITLE"
      L6_2 = L6_2(L7_2)
      L5_2.title = L6_2
      L6_2 = Lang
      L7_2 = "INSTAGRAM_NEW_POST"
      L6_2 = L6_2(L7_2)
      L5_2.text = L6_2
      L5_2.icon = "./img/apps/instagram.png"
      L5_2.timeout = 3500
      L4_2.PhoneNotify = L5_2
      L3_2(L4_2)
    end
  else
    L3_2 = instagram_notifications
    if L3_2 then
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.action = "Notification"
      L5_2 = {}
      L6_2 = Lang
      L7_2 = "INSTAGRAM_TITLE"
      L6_2 = L6_2(L7_2)
      L5_2.title = L6_2
      L6_2 = Lang
      L7_2 = "INSTAGRAM_NEW_SEND"
      L6_2 = L6_2(L7_2)
      L5_2.text = L6_2
      L5_2.icon = "./img/apps/instagram.png"
      L5_2.timeout = 1000
      L4_2.PhoneNotify = L5_2
      L3_2(L4_2)
    end
  end
  L3_2 = FindApplication
  L4_2 = "instagram"
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = Config
    L4_2 = L4_2.PhoneApplications
    L4_2 = L4_2[L3_2]
    L5_2 = Config
    L5_2 = L5_2.PhoneApplications
    L5_2 = L5_2[L3_2]
    L5_2 = L5_2.Alerts
    L5_2 = L5_2 + 1
    L4_2.Alerts = L5_2
  end
  L4_2 = TriggerServerEvent
  L5_2 = "qs-smartphone:server:SetPhoneAlerts"
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "RefreshAppAlerts"
  L6_2 = Config
  L6_2 = L6_2.PhoneApplications
  L5_2.AppData = L6_2
  L4_2(L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "qs-smartphone:UpdateTweets"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "qs-smartphone:UpdateTweets"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetPlayerServerId
  L3_2 = PlayerId
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2()
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  if A0_2 ~= L2_2 then
    L3_2 = PhoneData
    L3_2 = L3_2.isOpen
    if not L3_2 then
      if nil ~= A1_2 then
        L3_2 = twitter_notifications
        if L3_2 then
          L3_2 = SendNUIMessage
          L4_2 = {}
          L4_2.action = "Notification"
          L5_2 = {}
          L6_2 = Lang
          L7_2 = "TWITTER_TITLE"
          L6_2 = L6_2(L7_2)
          L7_2 = " (@"
          L8_2 = A1_2.username
          L9_2 = ")"
          L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
          L5_2.title = L6_2
          L6_2 = A1_2.message
          L5_2.text = L6_2
          L5_2.icon = "./img/apps/twitter.png"
          L5_2.timeout = 3500
          L4_2.PhoneNotify = L5_2
          L3_2(L4_2)
        end
      else
        L3_2 = twitter_notifications
        if L3_2 then
          L3_2 = SendNUIMessage
          L4_2 = {}
          L4_2.action = "Notification"
          L5_2 = {}
          L6_2 = Lang
          L7_2 = "TWITTER_TITLE"
          L6_2 = L6_2(L7_2)
          L5_2.title = L6_2
          L6_2 = Lang
          L7_2 = "TWITTER_NEW"
          L6_2 = L6_2(L7_2)
          L5_2.text = L6_2
          L5_2.icon = "./img/apps/twitter.png"
          L5_2.timeout = 3500
          L4_2.PhoneNotify = L5_2
          L3_2(L4_2)
        end
      end
    elseif nil ~= A1_2 then
      L3_2 = twitter_notifications
      if L3_2 then
        L3_2 = SendNUIMessage
        L4_2 = {}
        L4_2.action = "Notification"
        L5_2 = {}
        L6_2 = Lang
        L7_2 = "TWITTER_TITLE"
        L6_2 = L6_2(L7_2)
        L7_2 = " (@"
        L8_2 = A1_2.username
        L9_2 = ")"
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
        L5_2.title = L6_2
        L6_2 = A1_2.message
        L5_2.text = L6_2
        L5_2.icon = "./img/apps/twitter.png"
        L4_2.PhoneNotify = L5_2
        L3_2(L4_2)
      end
    else
      L3_2 = twitter_notifications
      if L3_2 then
        L3_2 = SendNUIMessage
        L4_2 = {}
        L4_2.action = "Notification"
        L5_2 = {}
        L6_2 = Lang
        L7_2 = "TWITTER_TITLE"
        L6_2 = L6_2(L7_2)
        L5_2.title = L6_2
        L6_2 = Lang
        L7_2 = "TWITTER_NEW"
        L6_2 = L6_2(L7_2)
        L5_2.text = L6_2
        L5_2.icon = "./img/apps/twitter.png"
        L4_2.PhoneNotify = L5_2
        L3_2(L4_2)
      end
    end
  else
    L3_2 = twitter_notifications
    if L3_2 then
      L3_2 = SendNUIMessage
      L4_2 = {}
      L4_2.action = "Notification"
      L5_2 = {}
      L6_2 = Lang
      L7_2 = "TWITTER_TITLE"
      L6_2 = L6_2(L7_2)
      L5_2.title = L6_2
      L6_2 = Lang
      L7_2 = "TWITTER_NEW"
      L6_2 = L6_2(L7_2)
      L5_2.text = L6_2
      L5_2.icon = "./img/apps/twitter.png"
      L5_2.timeout = 1000
      L4_2.PhoneNotify = L5_2
      L3_2(L4_2)
    end
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "GetMentionedTweets"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetMentionedTweets"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "GetHashtags"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetHashtags"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "GetHashtagMessages"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetHashtagMessages"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "qs-smartphone:client:GetMentioned"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "qs-smartphone:client:GetMentioned"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PhoneData
  L2_2 = L2_2.isOpen
  if not L2_2 then
    L2_2 = twitter_notifications
    if L2_2 then
      L2_2 = SendNUIMessage
      L3_2 = {}
      L3_2.action = "Notification"
      L4_2 = {}
      L5_2 = Lang
      L6_2 = "TWITTER_TITLE"
      L5_2 = L5_2(L6_2)
      L4_2.title = L5_2
      L5_2 = A0_2.message
      L4_2.text = L5_2
      L4_2.icon = "./img/apps/twitter.png"
      L4_2.timeout = 3500
      L3_2.PhoneNotify = L4_2
      L2_2(L3_2)
    end
  else
    L2_2 = twitter_notifications
    if L2_2 then
      L2_2 = SendNUIMessage
      L3_2 = {}
      L3_2.action = "Notification"
      L4_2 = {}
      L5_2 = Lang
      L6_2 = "TWITTER_TITLE"
      L5_2 = L5_2(L6_2)
      L4_2.title = L5_2
      L5_2 = A0_2.message
      L4_2.text = L5_2
      L4_2.icon = "./img/apps/twitter.png"
      L3_2.PhoneNotify = L4_2
      L2_2(L3_2)
    end
  end
  L2_2 = FindApplication
  L3_2 = "twitter"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L2_2]
    L4_2 = Config
    L4_2 = L4_2.PhoneApplications
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.Alerts
    L4_2 = L4_2 + 1
    L3_2.Alerts = L4_2
  end
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "RefreshAppAlerts"
  L5_2 = Config
  L5_2 = L5_2.PhoneApplications
  L4_2.AppData = L5_2
  L3_2(L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "WhatsappOptions"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.type
  if "whatsapp-clear-chat" == L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = "qs-smartphone:DeleteMessages"
    L4_2 = A0_2.number
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = TriggerServerEvent
    L3_2 = "qs-smartphone:DeleteMessages"
    L4_2 = A0_2.number
    L2_2(L3_2, L4_2)
  end
  L2_2 = Wait
  L3_2 = 100
  L2_2(L3_2)
  L2_2 = A1_2
  L3_2 = "ok"
  L2_2(L3_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "ClearMentions"
function L24_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = FindApplication
  L1_2 = "twitter"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L1_2 = Config
    L1_2 = L1_2.PhoneApplications
    L1_2 = L1_2[L0_2]
    L1_2.Alerts = 0
  end
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone:server:SetPhoneAlerts"
  L3_2 = "twitter"
  L4_2 = 0
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "RefreshAppAlerts"
  L3_2 = Config
  L3_2 = L3_2.PhoneApplications
  L2_2.AppData = L3_2
  L1_2(L2_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "ClearGeneralAlerts"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetTimeout
  L2_2 = 400
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = FindApplication
    L1_3 = A0_2.app
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L1_3 = Config
      L1_3 = L1_3.PhoneApplications
      L1_3 = L1_3[L0_3]
      L1_3.Alerts = 0
    else
      L1_3 = print
      L2_3 = "4[qs-smartphone] ^2An error occurred in the Alerts."
      L1_3(L2_3)
    end
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "RefreshAppAlerts"
    L3_3 = Config
    L3_3 = L3_3.PhoneApplications
    L2_3.AppData = L3_3
    L1_3(L2_3)
    L1_3 = TriggerServerEvent
    L2_3 = "qs-smartphone:server:SetPhoneAlerts"
    L3_3 = A0_2.app
    L4_3 = 0
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = SendNUIMessage
    L2_3 = {}
    L2_3.action = "RefreshAppAlerts"
    L3_3 = Config
    L3_3 = L3_3.PhoneApplications
    L2_3.AppData = L3_3
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2)
end
L22_1(L23_1, L24_1)
L22_1 = _ENV
L23_1 = "FindApplication"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.PhoneApplications
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if L6_2 then
      L7_2 = L6_2.app
      if A0_2 == L7_2 then
        return L5_2
      end
    end
  end
  L1_2 = false
  return L1_2
end
L22_1[L23_1] = L24_1
L22_1 = _ENV
L23_1 = "string"
L22_1 = L22_1[L23_1]
L23_1 = "split"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = string
  L4_2 = L4_2.find
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2, L5_2 = L4_2(L5_2, L6_2, L7_2)
  while L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L2_2
    L8_2 = string
    L8_2 = L8_2.sub
    L9_2 = A0_2
    L10_2 = L3_2
    L11_2 = L4_2 - 1
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2 = L5_2 + 1
    L6_2 = string
    L6_2 = L6_2.find
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = L3_2
    L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L7_2
    L4_2 = L6_2
  end
  L6_2 = table
  L6_2 = L6_2.insert
  L7_2 = L2_2
  L8_2 = string
  L8_2 = L8_2.sub
  L9_2 = A0_2
  L10_2 = L3_2
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  return L2_2
end
L22_1[L23_1] = L24_1
L22_1 = RegisterNUICallback
L23_1 = "TransferMoney"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = tonumber
  L4_2 = A0_2.amount
  L3_2 = L3_2(L4_2)
  L4_2 = QSPhone
  L4_2 = L4_2.TriggerServerCallback
  L5_2 = "qs-smartphone:server:GetBankData"
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    L1_3 = tonumber
    L2_3 = A0_3.bank
    L1_3 = L1_3(L2_3)
    L2_3 = L3_2
    if L1_3 >= L2_3 then
      L1_3 = tonumber
      L2_3 = A0_3.bank
      L1_3 = L1_3(L2_3)
      L2_3 = L3_2
      L1_3 = L1_3 - L2_3
      L2_3 = TriggerServerEvent
      L3_3 = "qs-smartphone:server:TransferMoney"
      L4_3 = A0_2.iban
      L5_3 = L3_2
      L2_3(L3_3, L4_3, L5_3)
      L2_3 = {}
      L2_3.CanTransfer = true
      L2_3.NewAmount = L1_3
      L3_3 = L2_2
      L4_3 = L2_3
      L3_3(L4_3)
    else
      L1_3 = {}
      L1_3.CanTransfer = false
      L1_3.NewAmount = nil
      L2_3 = L2_2
      L3_3 = L1_3
      L2_3(L3_3)
    end
  end
  L4_2(L5_2, L6_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "GetWhatsappChats"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetWhatsappChats"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "LikeTweet"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:LikeTweet"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A1_2
    L1_3 = true
    L0_3(L1_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "LikeInsta"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:LikeInsta"
  function L4_2()
    local L0_3, L1_3
    L0_3 = A1_2
    L1_3 = true
    L0_3(L1_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "qs-smartphone:refreshWhatsappChats"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "qs-smartphone:refreshWhatsappChats"
function L24_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "UpdateChat"
  L2_2.chatNumber = A0_2
  L1_2(L2_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "UpdateChat:NotifyLockScreen:App"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = FindApplication
  L3_2 = "whatsapp"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L2_2]
    L4_2 = Config
    L4_2 = L4_2.PhoneApplications
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.Alerts
    L4_2 = L4_2 + 1
    L3_2.Alerts = L4_2
  end
  L3_2 = Config
  L3_2 = L3_2.PhoneApplications
  if L3_2 then
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "RefreshAppAlerts"
    L5_2 = Config
    L5_2 = L5_2.PhoneApplications
    L4_2.AppData = L5_2
    L3_2(L4_2)
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = TriggerServerEvent
      L4_2 = "qs-smartphone:server:SetPhoneAlerts"
      L5_2 = "whatsapp"
      L6_2 = Config
      L6_2 = L6_2.PhoneApplications
      L6_2 = L6_2[L2_2]
      L6_2 = L6_2.Alerts
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "TransferCid"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.newBsn
  L3_2 = QSPhone
  L3_2 = L3_2.TriggerServerCallback
  L4_2 = "qs-smartphone:server:TransferCid"
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L6_2 = L2_2
  L7_2 = A0_2.HouseData
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "qs-smartphone:refreshiMessageChats"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "qs-smartphone:refreshiMessageChats"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "UpdateMessageChat"
  L2_2.chatNumber = A0_2
  L1_2(L2_2)
  L1_2 = FindApplication
  L2_2 = "messages"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = Config
    L2_2 = L2_2.PhoneApplications
    L2_2 = L2_2[L1_2]
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.Alerts
    L3_2 = L3_2 + 1
    L2_2.Alerts = L3_2
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "RefreshAppAlerts"
  L4_2 = Config
  L4_2 = L4_2.PhoneApplications
  L3_2.AppData = L4_2
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SetPhoneAlerts"
  L4_2 = "whatsapp"
  L5_2 = Config
  L5_2 = L5_2.PhoneApplications
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.Alerts
  L2_2(L3_2, L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "qs-smartphone:refreshTinderMessages"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "qs-smartphone:refreshTinderMessages"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "UpdateTinderMessages"
  L2_2.chatNumber = A0_2
  L1_2(L2_2)
  L1_2 = FindApplication
  L2_2 = "tinder"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = Config
    L2_2 = L2_2.PhoneApplications
    L2_2 = L2_2[L1_2]
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.Alerts
    L3_2 = L3_2 + 1
    L2_2.Alerts = L3_2
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "RefreshAppAlerts"
  L4_2 = Config
  L4_2 = L4_2.PhoneApplications
  L3_2.AppData = L4_2
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SetPhoneAlerts"
  L4_2 = "whatsapp"
  L5_2 = Config
  L5_2 = L5_2.PhoneApplications
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.Alerts
  L2_2(L3_2, L4_2, L5_2)
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNetEvent
L23_1 = "qs-smartphone:whatsappgroupNotify"
L22_1(L23_1)
L22_1 = AddEventHandler
L23_1 = "qs-smartphone:whatsappgroupNotify"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A1_2
  L3_2 = GetPlayerDataFramework
  L3_2 = L3_2()
  L3_2 = L3_2.charinfo
  L3_2 = L3_2.phone
  L4_2 = PhoneData
  if L4_2 then
    L4_2 = PhoneData
    L4_2 = L4_2.PlayerData
    if L4_2 then
      L4_2 = PhoneData
      L4_2 = L4_2.PlayerData
      L4_2 = L4_2.charinfo
      if L4_2 then
        L4_2 = PhoneData
        L4_2 = L4_2.PlayerData
        L4_2 = L4_2.charinfo
        L4_2 = L4_2.phone
        if L4_2 then
          L4_2 = pairs
          L5_2 = A0_2
          L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
          for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
            if L9_2 then
              L10_2 = L9_2.phone
              L11_2 = PhoneData
              L11_2 = L11_2.PlayerData
              L11_2 = L11_2.charinfo
              L11_2 = L11_2.phone
              if L10_2 == L11_2 then
                L10_2 = SendNUIMessage
                L11_2 = {}
                L11_2.action = "UpdateGroupChat"
                L11_2.chatNumber = L2_2
                L10_2(L11_2)
                break
              end
            end
          end
        end
      end
    end
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "Update:NotifyLockScreen:App"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = FindApplication
  L3_2 = "whatsapp"
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L2_2]
    L4_2 = Config
    L4_2 = L4_2.PhoneApplications
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.Alerts
    L4_2 = L4_2 + 1
    L3_2.Alerts = L4_2
  end
  L3_2 = Config
  L3_2 = L3_2.PhoneApplications
  if L3_2 then
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "RefreshAppAlerts"
    L5_2 = Config
    L5_2 = L5_2.PhoneApplications
    L4_2.AppData = L5_2
    L3_2(L4_2)
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L2_2]
    if L3_2 then
      L3_2 = TriggerServerEvent
      L4_2 = "qs-smartphone:server:SetPhoneAlerts"
      L5_2 = "whatsapp"
      L6_2 = Config
      L6_2 = L6_2.PhoneApplications
      L6_2 = L6_2[L2_2]
      L6_2 = L6_2.Alerts
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "GetWhatsappProfiles"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetWhatsappProfiles"
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    else
      L1_3 = A1_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L22_1(L23_1, L24_1)
L22_1 = AddEventHandler
L23_1 = "onResourceStop"
function L24_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = SetNuiFocus
    L2_2 = false
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = SetNuiFocusKeepInput
    L2_2 = false
    L1_2(L2_2)
  end
end
L22_1(L23_1, L24_1)
L22_1 = RegisterNUICallback
L23_1 = "RemoveSuggestion"
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.data
  L3_2 = PhoneData
  L3_2 = L3_2.SuggestedContacts
  if nil ~= L3_2 then
    L3_2 = next
    L4_2 = PhoneData
    L4_2 = L4_2.SuggestedContacts
    L3_2 = L3_2(L4_2)
    if nil ~= L3_2 then
      L3_2 = pairs
      L4_2 = PhoneData
      L4_2 = L4_2.SuggestedContacts
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L2_2.name
        L9_2 = L9_2[1]
        L10_2 = L8_2.name
        L10_2 = L10_2[1]
        if L9_2 == L10_2 then
          L9_2 = L2_2.name
          L9_2 = L9_2[2]
          L10_2 = L8_2.name
          L10_2 = L10_2[2]
          if L9_2 == L10_2 then
            L9_2 = L2_2.number
            L10_2 = L8_2.number
            if L9_2 == L10_2 then
              L9_2 = table
              L9_2 = L9_2.remove
              L10_2 = PhoneData
              L10_2 = L10_2.SuggestedContacts
              L11_2 = L7_2
              L9_2(L10_2, L11_2)
            end
          end
        end
      end
    end
  end
end
L22_1(L23_1, L24_1)
L22_1 = nil
L23_1 = RegisterNetEvent
L24_1 = "qs-smartphone:client:GiveContactDetails"
L23_1(L24_1)
L23_1 = AddEventHandler
L24_1 = "qs-smartphone:client:GiveContactDetails"
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetClosestPlayer
  L1_2, L2_2 = L1_2()
  if -1 ~= L1_2 then
    L3_2 = 2.5
    if L2_2 < L3_2 then
      L3_2 = GetPlayerServerId
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = L22_1
      if L4_2 ~= L3_2 then
        L22_1 = L3_2
        L4_2 = TriggerServerEvent
        L5_2 = "qs-smartphone:server:GiveContactDetails"
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
      else
        L4_2 = SendTextMessage
        L5_2 = Lang
        L6_2 = "PHONE_SEND_CONTACT"
        L5_2 = L5_2(L6_2)
        L6_2 = "success"
        L4_2(L5_2, L6_2)
      end
  end
  else
    L3_2 = SendTextMessage
    L4_2 = Lang
    L5_2 = "NO_PLAYERS"
    L4_2 = L4_2(L5_2)
    L5_2 = "error"
    L3_2(L4_2, L5_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "GiveContact"
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetClosestPlayer
  L1_2, L2_2 = L1_2()
  if -1 ~= L1_2 then
    L3_2 = 2.5
    if L2_2 < L3_2 then
      L3_2 = GetPlayerServerId
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = L22_1
      if L4_2 ~= L3_2 then
        L22_1 = L3_2
        L4_2 = TriggerServerEvent
        L5_2 = "qs-smartphone:server:GiveContactDetails"
        L6_2 = L3_2
        L4_2(L5_2, L6_2)
      else
        L4_2 = SendNUIMessage
        L5_2 = {}
        L5_2.action = "PhoneNotification"
        L6_2 = {}
        L7_2 = Lang
        L8_2 = "AIRDROP_TITLE"
        L7_2 = L7_2(L8_2)
        L6_2.title = L7_2
        L7_2 = Lang
        L8_2 = "PHONE_SEND_CONTACT"
        L7_2 = L7_2(L8_2)
        L6_2.text = L7_2
        L6_2.icon = "./img/apps/airdrop.png"
        L5_2.PhoneNotify = L6_2
        L4_2(L5_2)
      end
  end
  else
    L3_2 = SendNUIMessage
    L4_2 = {}
    L4_2.action = "PhoneNotification"
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "AIRDROP_TITLE"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = Lang
    L7_2 = "NO_PLAYERS"
    L6_2 = L6_2(L7_2)
    L5_2.text = L6_2
    L5_2.icon = "./img/apps/airdrop.png"
    L4_2.PhoneNotify = L5_2
    L3_2(L4_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "DeleteContact"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = A0_2.id
  L3_2 = pairs
  L4_2 = PhoneData
  L4_2 = L4_2.Contacts
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.id
    if L9_2 == L2_2 then
      L9_2 = table
      L9_2 = L9_2.remove
      L10_2 = PhoneData
      L10_2 = L10_2.Contacts
      L11_2 = L7_2
      L9_2(L10_2, L11_2)
      L9_2 = SendNUIMessage
      L10_2 = {}
      L10_2.action = "Notification"
      L11_2 = {}
      L12_2 = Lang
      L13_2 = "PHONE_TITLE"
      L12_2 = L12_2(L13_2)
      L11_2.title = L12_2
      L12_2 = Lang
      L13_2 = "CONTACTS_REMOVED"
      L12_2 = L12_2(L13_2)
      L11_2.text = L12_2
      L11_2.icon = "./img/apps/phone.png"
      L11_2.timeout = 3500
      L10_2.PhoneNotify = L11_2
      L9_2(L10_2)
      break
    end
  end
  L3_2 = Citizen
  L3_2 = L3_2.Wait
  L4_2 = 100
  L3_2(L4_2)
  L3_2 = A1_2
  L4_2 = PhoneData
  L4_2 = L4_2.Contacts
  L3_2(L4_2)
  L3_2 = PhoneData
  L3_2 = L3_2.Chats
  L4_2 = Number
  L3_2 = L3_2[L4_2]
  if nil ~= L3_2 then
    L3_2 = next
    L4_2 = PhoneData
    L4_2 = L4_2.Chats
    L5_2 = Number
    L4_2 = L4_2[L5_2]
    L3_2 = L3_2(L4_2)
    if nil ~= L3_2 then
      L3_2 = PhoneData
      L3_2 = L3_2.Chats
      L4_2 = Number
      L3_2 = L3_2[L4_2]
      L4_2 = Number
      L3_2.name = L4_2
    end
  end
  L3_2 = TriggerServerEvent
  L4_2 = "qs-smartphone:server:RemoveContact"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "qs-smartphone:client:AddNewSuggestion"
L23_1(L24_1)
L23_1 = AddEventHandler
L24_1 = "qs-smartphone:client:AddNewSuggestion"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = table
  L1_2 = L1_2.insert
  L2_2 = PhoneData
  L2_2 = L2_2.SuggestedContacts
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = PhoneData
  L1_2 = L1_2.isOpen
  if L1_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "Notification"
    L3_2 = {}
    L4_2 = Lang
    L5_2 = "AIRDROP_TITLE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = Lang
    L5_2 = "CONTACTS_NEWSUGGESTED"
    L4_2 = L4_2(L5_2)
    L3_2.text = L4_2
    L3_2.icon = "./img/apps/airdrop.png"
    L3_2.timeout = 1500
    L2_2.PhoneNotify = L3_2
    L1_2(L2_2)
  else
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "Notification"
    L3_2 = {}
    L4_2 = Lang
    L5_2 = "AIRDROP_TITLE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = Lang
    L5_2 = "CONTACTS_NEWSUGGESTED"
    L4_2 = L4_2(L5_2)
    L3_2.text = L4_2
    L3_2.icon = "./img/apps/airdrop.png"
    L3_2.timeout = 3500
    L2_2.PhoneNotify = L3_2
    L1_2(L2_2)
  end
  L1_2 = FindApplication
  L2_2 = "phone"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = Config
    L2_2 = L2_2.PhoneApplications
    L2_2 = L2_2[L1_2]
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2 = L3_2[L1_2]
    L3_2 = L3_2.Alerts
    L3_2 = L3_2 + 1
    L2_2.Alerts = L3_2
  end
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "RefreshAppAlerts"
  L4_2 = Config
  L4_2 = L4_2.PhoneApplications
  L3_2.AppData = L4_2
  L2_2(L3_2)
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:SetPhoneAlerts"
  L4_2 = L1_2
  L5_2 = Config
  L5_2 = L5_2.PhoneApplications
  L5_2 = L5_2[L1_2]
  L5_2 = L5_2.Alerts
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "GetCryptoData"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-crypto:server:GetCryptoData"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.crypto
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "BuyCrypto"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-crypto:server:BuyCrypto"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "SellCrypto"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-crypto:server:SellCrypto"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "TransferCrypto"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-crypto:server:TransferCrypto"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNetEvent
L24_1 = "qs-smartphone:client:RemoveBankMoney"
L23_1(L24_1)
L23_1 = AddEventHandler
L24_1 = "qs-smartphone:client:RemoveBankMoney"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PhoneData
  L1_2 = L1_2.isOpen
  if L1_2 then
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "Notification"
    L3_2 = {}
    L4_2 = Lang
    L5_2 = "BANK_TITLE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = Lang
    L5_2 = "BANK_REMOVE_MONEY"
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = L4_2 .. L5_2
    L3_2.text = L4_2
    L3_2.icon = "./img/apps/banksign.png"
    L3_2.timeout = 3500
    L2_2.PhoneNotify = L3_2
    L1_2(L2_2)
  else
    L1_2 = SendNUIMessage
    L2_2 = {}
    L2_2.action = "Notification"
    L3_2 = {}
    L4_2 = Lang
    L5_2 = "BANK_TITLE"
    L4_2 = L4_2(L5_2)
    L3_2.title = L4_2
    L4_2 = Lang
    L5_2 = "BANK_REMOVE_MONEY"
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2
    L4_2 = L4_2 .. L5_2
    L3_2.text = L4_2
    L3_2.icon = "./img/apps/banksign.png"
    L3_2.timeout = 3500
    L2_2.PhoneNotify = L3_2
    L1_2(L2_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "SetupStoreApps"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetPlayerDataFramework
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = Config
  L4_2 = L4_2.StoreApps
  L3_2.StoreApps = L4_2
  L4_2 = L2_2.metadata
  L4_2 = L4_2.phone
  L3_2.PhoneData = L4_2
  L4_2 = Config
  L4_2 = L4_2.StoreAppToday
  L3_2.StoreAppToday = L4_2
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "InstallApplication"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = false
  L3_2 = pairs
  L4_2 = Config
  L4_2 = L4_2.PhoneApplications
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.app
    L10_2 = A0_2.app
    if L9_2 == L10_2 then
      L2_2 = true
      break
    end
  end
  if not L2_2 then
    L3_2 = Config
    L3_2 = L3_2.StoreApps
    L4_2 = A0_2.app
    L3_2 = L3_2[L4_2]
    L4_2 = GetEmptySlot
    L4_2 = L4_2()
    L5_2 = Config
    L5_2 = L5_2.PhoneApplications
    L6_2 = {}
    L7_2 = A0_2.app
    L6_2.app = L7_2
    L7_2 = L3_2.color
    L6_2.color = L7_2
    L7_2 = L3_2.tooltipText
    L6_2.tooltipText = L7_2
    L7_2 = L3_2.job
    L6_2.job = L7_2
    L7_2 = L3_2.blockedjobs
    L6_2.blockedjobs = L7_2
    L6_2.slot = L4_2
    L6_2.Alerts = 0
    L5_2[L4_2] = L6_2
    L5_2 = TriggerServerEvent
    L6_2 = "qs-smartphone:server:InstallApplication"
    L7_2 = A0_2.app
    L5_2(L6_2, L7_2)
    L5_2 = TriggerServerEvent
    L6_2 = "qs-smartphone:server:SaveApps"
    L7_2 = Config
    L7_2 = L7_2.PhoneApplications
    L5_2(L6_2, L7_2)
    L5_2 = A1_2
    L6_2 = {}
    L7_2 = A0_2.app
    L6_2.app = L7_2
    L7_2 = Config
    L7_2 = L7_2.PhoneApplications
    L6_2.data = L7_2
    L5_2(L6_2)
  else
    L3_2 = A1_2
    L4_2 = {}
    L5_2 = A0_2.app
    L4_2.app = L5_2
    L5_2 = Config
    L5_2 = L5_2.PhoneApplications
    L4_2.data = L5_2
    L3_2(L4_2)
  end
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "UpdateSlotApp"
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.type
  if L1_2 then
    L1_2 = Config
    L1_2 = L1_2.PhoneApplications
    L2_2 = A0_2.slot
    L1_2[L2_2] = nil
  else
    L1_2 = Config
    L1_2 = L1_2.PhoneApplications
    L2_2 = A0_2.slot
    L1_2 = L1_2[L2_2]
    if L1_2 then
      L1_2 = Config
      L1_2 = L1_2.PhoneApplications
      L2_2 = A0_2.slot
      L1_2 = L1_2[L2_2]
      L2_2 = A0_2.app
      L1_2.app = L2_2
      L1_2 = Config
      L1_2 = L1_2.PhoneApplications
      L2_2 = A0_2.slot
      L1_2 = L1_2[L2_2]
      L2_2 = A0_2.color
      L1_2.color = L2_2
      L1_2 = Config
      L1_2 = L1_2.PhoneApplications
      L2_2 = A0_2.slot
      L1_2 = L1_2[L2_2]
      L2_2 = A0_2.job
      L1_2.job = L2_2
      L1_2 = Config
      L1_2 = L1_2.PhoneApplications
      L2_2 = A0_2.slot
      L1_2 = L1_2[L2_2]
      L2_2 = A0_2.tooltipText
      L1_2.tooltipText = L2_2
    else
      L1_2 = Config
      L1_2 = L1_2.PhoneApplications
      L2_2 = A0_2.slot
      L3_2 = {}
      L4_2 = A0_2.app
      L3_2.app = L4_2
      L4_2 = A0_2.color
      L3_2.color = L4_2
      L4_2 = A0_2.job
      L3_2.job = L4_2
      L4_2 = A0_2.blockedjobs
      L3_2.blockedjobs = L4_2
      L4_2 = A0_2.slot
      L3_2.slot = L4_2
      L3_2.Alerts = 0
      L4_2 = A0_2.tooltipText
      L3_2.tooltipText = L4_2
      L1_2[L2_2] = L3_2
    end
  end
end
L23_1(L24_1, L25_1)
L23_1 = _ENV
L24_1 = "GetEmptySlot"
function L25_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = 1
  L1_2 = Config
  L1_2 = L1_2.MaxApp
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = Config
    L4_2 = L4_2.PhoneApplications
    L4_2 = L4_2[L3_2]
    if nil == L4_2 then
      return L3_2
    end
  end
  L0_2 = false
  return L0_2
end
L23_1[L24_1] = L25_1
L23_1 = RegisterNUICallback
L24_1 = "RemoveApplication"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:RemoveInstallation"
  L4_2 = A0_2.app
  L2_2(L3_2, L4_2)
  L2_2 = FindApplication
  L3_2 = A0_2.app
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.PhoneApplications
    L3_2[L2_2] = nil
  end
  L3_2 = A1_2
  L4_2 = {}
  L5_2 = A0_2.app
  L4_2.app = L5_2
  L5_2 = Config
  L5_2 = L5_2.PhoneApplications
  L4_2.data = L5_2
  L3_2(L4_2)
  L3_2 = TriggerServerEvent
  L4_2 = "qs-smartphone:server:SaveApps"
  L5_2 = Config
  L5_2 = L5_2.PhoneApplications
  L3_2(L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "GetEmptySlot"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = GetEmptySlot
  L3_2 = L3_2()
  L2_2(L3_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "GetUserProfileTwitter"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetUserProfileTwitter"
  function L4_2(A0_3)
    local L1_3, L2_3
    if nil ~= A0_3 then
      TwitterAccount = A0_3
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "AddAccountTwitter"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:AddAccountTwitter"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetUserProfileTwitter"
      function L3_3(A0_4)
        local L1_4, L2_4
        if nil ~= A0_4 then
          TwitterAccount = A0_4
          L1_4 = A1_2
          L2_4 = A0_4
          L1_4(L2_4)
        end
      end
      L1_3(L2_3, L3_3)
    else
      L1_3 = A1_2
      L2_3 = "used"
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "GetUserProfileInsta"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetUserProfileInsta"
  function L4_2(A0_3)
    local L1_3, L2_3
    if nil ~= A0_3 then
      InstagramAccount = A0_3
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "AddAccountInsta"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:AddAccountInsta"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetUserProfileInsta"
      function L3_3(A0_4)
        local L1_4, L2_4
        if nil ~= A0_4 then
          InstagramAccount = A0_4
          L1_4 = A1_2
          L2_4 = A0_4
          L1_4(L2_4)
        end
      end
      L1_3(L2_3, L3_3)
    else
      L1_3 = A1_2
      L2_3 = "used"
      L1_3(L2_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "GetStoriesInstagram"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetStoriesInstagram"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      StoriesInstagram = A0_3
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "GetMyStorieInstagram"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetMyStorieInstagram"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      MyStorieInstagram = A0_3
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    else
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = "vazio"
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "GetPostsInstagram"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetPostsInstagram"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      StoriesPosts = A0_3
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "AddStorieInsta"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:AddStorieInsta"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetMyStorieInstagram"
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        if A0_4 then
          MyStorieInstagram = A0_4
          L1_4 = A1_2
          L2_4 = json
          L2_4 = L2_4.encode
          L3_4 = A0_4
          L2_4, L3_4, L4_4 = L2_4(L3_4)
          L1_4(L2_4, L3_4, L4_4)
        end
        L1_4 = SendNUIMessage
        L2_4 = {}
        L2_4.action = "RefreshMyStorieInsta"
        L3_4 = json
        L3_4 = L3_4.encode
        L4_4 = MyStorieInstagram
        L3_4 = L3_4(L4_4)
        L2_4.stories = L3_4
        L1_4(L2_4)
      end
      L1_3(L2_3, L3_3)
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetStoriesInstagram"
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        if A0_4 then
          StoriesInstagram = A0_4
        end
        L1_4 = SendNUIMessage
        L2_4 = {}
        L2_4.action = "RefreshStoriesInsta"
        L3_4 = json
        L3_4 = L3_4.encode
        L4_4 = StoriesInstagram
        L3_4 = L3_4(L4_4)
        L2_4.stories = L3_4
        L1_4(L2_4)
      end
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = RegisterNUICallback
L24_1 = "AddPostInsta"
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:AddPostInsta"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetPostsInstagram"
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        L1_4 = A1_2
        L2_4 = true
        L1_4(L2_4)
        L1_4 = SendNUIMessage
        L2_4 = {}
        L2_4.action = "RefreshPostsInsta"
        L3_4 = json
        L3_4 = L3_4.encode
        L4_4 = A0_4
        L3_4 = L3_4(L4_4)
        L2_4.posts = L3_4
        L1_4(L2_4)
      end
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L23_1(L24_1, L25_1)
L23_1 = nil
L24_1 = RegisterNUICallback
L25_1 = "GetProfilesInstagram"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L23_1
  if L2_2 then
    L2_2 = A1_2
    L3_2 = L23_1
    return L2_2(L3_2)
  end
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetProfilesInstagram"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = json
      L1_3 = L1_3.encode
      L2_3 = A0_3
      L1_3 = L1_3(L2_3)
      L23_1 = L1_3
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2)
  L2_2 = CreateThread
  function L3_2()
    local L0_3, L1_3
    L0_3 = Wait
    L1_3 = 100
    L0_3(L1_3)
    L0_3 = nil
    L23_1 = L0_3
  end
  L2_2(L3_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "GetProfilesInstagramLike"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetProfilesInstagramLike"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "GetProfileInstagram"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetProfileInstagram"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2.id
  L2_2(L3_2, L4_2, L5_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "GetProfileInstagramUsername"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:GetProfileInstagram"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = A0_3
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2.username
  L2_2(L3_2, L4_2, L5_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "FollowUserInsta"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:FollowUserInsta"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = true
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetPostsInstagram"
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        if A0_4 then
          StoriesPosts = A0_4
        end
        L1_4 = SendNUIMessage
        L2_4 = {}
        L2_4.action = "RefreshPostsInsta"
        L3_4 = json
        L3_4 = L3_4.encode
        L4_4 = A0_4
        L3_4 = L3_4(L4_4)
        L2_4.posts = L3_4
        L1_4(L2_4)
      end
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "UnfollowUserInsta"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:UnfollowUserInsta"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = true
      L2_3, L3_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3)
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetPostsInstagram"
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        if A0_4 then
          StoriesPosts = A0_4
        end
        L1_4 = SendNUIMessage
        L2_4 = {}
        L2_4.action = "RefreshPostsInsta"
        L3_4 = json
        L3_4 = L3_4.encode
        L4_4 = A0_4
        L3_4 = L3_4(L4_4)
        L2_4.posts = L3_4
        L1_4(L2_4)
      end
      L1_3(L2_3, L3_3)
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "EditProfileInsta"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:EditProfileInsta"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3
    if A0_3 then
      L1_3 = A1_2
      L2_3 = json
      L2_3 = L2_3.encode
      L3_3 = true
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      L1_3(L2_3, L3_3, L4_3, L5_3)
      L1_3 = QSPhone
      L1_3 = L1_3.TriggerServerCallback
      L2_3 = "qs-smartphone:GetPostsInstagram"
      function L3_3(A0_4)
        local L1_4, L2_4, L3_4, L4_4
        if A0_4 then
          StoriesPosts = A0_4
        end
        L1_4 = SendNUIMessage
        L2_4 = {}
        L2_4.action = "RefreshPostsInsta"
        L3_4 = json
        L3_4 = L3_4.encode
        L4_4 = A0_4
        L3_4 = L3_4(L4_4)
        L2_4.posts = L3_4
        L1_4(L2_4)
      end
      L1_3(L2_3, L3_3)
    else
      L1_3 = instagram_notifications
      if L1_3 then
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "Notification"
        L3_3 = {}
        L4_3 = Lang
        L5_3 = "INSTAGRAM_TITLE"
        L4_3 = L4_3(L5_3)
        L3_3.title = L4_3
        L4_3 = Lang
        L5_3 = "INSTAGRAM_USERNAME_USED"
        L4_3 = L4_3(L5_3)
        L3_3.text = L4_3
        L3_3.icon = "./img/apps/instagram.png"
        L3_3.timeout = 3500
        L2_3.PhoneNotify = L3_3
        L1_3(L2_3)
      end
    end
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "GetPlayerHouses"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetPlayerHouses"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "GetPlayerKeys"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:GetHouseKeys"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "SetHouseLocation"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = SetNewWaypoint
  L3_2 = A0_2.HouseData
  L3_2 = L3_2.HouseData
  L3_2 = L3_2.coords
  L3_2 = L3_2.enter
  L3_2 = L3_2.x
  L4_2 = A0_2.HouseData
  L4_2 = L4_2.HouseData
  L4_2 = L4_2.coords
  L4_2 = L4_2.enter
  L4_2 = L4_2.y
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "Notification"
  L4_2 = {}
  L5_2 = Lang
  L6_2 = "HOME_TITLE"
  L5_2 = L5_2(L6_2)
  L4_2.title = L5_2
  L5_2 = Lang
  L6_2 = "HOME_GPS_LOCATION"
  L5_2 = L5_2(L6_2)
  L6_2 = " "
  L7_2 = A0_2.HouseData
  L7_2 = L7_2.HouseData
  L7_2 = L7_2.adress
  L5_2 = L5_2 .. L6_2 .. L7_2
  L4_2.text = L5_2
  L4_2.icon = "./img/apps/home.png"
  L3_2.PhoneNotify = L4_2
  L2_2(L3_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "RemoveKeyholder"
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-housing:server:removeHouseKey"
  L3_2 = A0_2.HouseData
  L3_2 = L3_2.name
  L4_2 = {}
  L5_2 = A0_2.HolderData
  L5_2 = L5_2.citizenid
  L4_2.identifier = L5_2
  L5_2 = A0_2.HolderData
  L5_2 = L5_2.charinfo
  L5_2 = L5_2.firstname
  L4_2.firstname = L5_2
  L5_2 = A0_2.HolderData
  L5_2 = L5_2.charinfo
  L5_2 = L5_2.lastname
  L4_2.lastname = L5_2
  L1_2(L2_2, L3_2, L4_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "FetchPlayerHouses"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = QSPhone
  L2_2 = L2_2.TriggerServerCallback
  L3_2 = "qs-smartphone:server:MeosGetPlayerHouses"
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.input
  L2_2(L3_2, L4_2, L5_2)
end
L24_1(L25_1, L26_1)
L24_1 = _ENV
L25_1 = "Lang"
function L26_1(A0_2)
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
L24_1[L25_1] = L26_1
L24_1 = RegisterNUICallback
L25_1 = "GetLangData"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = {}
  L4_2 = Config
  L4_2 = L4_2.Languages
  L3_2.table = L4_2
  L4_2 = Config
  L4_2 = L4_2.Language
  L3_2.current = L4_2
  L2_2(L3_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNetEvent
L25_1 = "qs-smartphone:client:sendMessageTransfer"
L24_1(L25_1)
L24_1 = AddEventHandler
L25_1 = "qs-smartphone:client:sendMessageTransfer"
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "Notification"
  L3_2 = {}
  L4_2 = Lang
  L5_2 = "HOME_TITLE"
  L4_2 = L4_2(L5_2)
  L3_2.title = L4_2
  L4_2 = Lang
  L5_2 = "HOME_NEW"
  L4_2 = L4_2(L5_2)
  L3_2.text = L4_2
  L3_2.icon = "./img/apps/home.png"
  L2_2.PhoneNotify = L3_2
  L1_2(L2_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNetEvent
L25_1 = "qs-smartphone:client:anon"
L24_1(L25_1)
L24_1 = AddEventHandler
L25_1 = "qs-smartphone:client:anon"
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if nil == A0_2 or "" == A0_2 then
    return
  end
  L1_2 = {}
  L2_2 = Lang
  L3_2 = "PHONE_ANON"
  L2_2 = L2_2(L3_2)
  L1_2.firstName = L2_2
  L1_2.lastName = ""
  L1_2.message = A0_2
  L2_2 = test
  if not L2_2 then
    L2_2 = ""
  end
  L1_2.url = L2_2
  L1_2.time = "none"
  L2_2 = PhoneData
  L2_2 = L2_2.id
  L1_2.id = L2_2
  L1_2.picture = "https://cdn.discordapp.com/attachments/808603408302473216/831682724431527963/unknown.png"
  test = ""
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:saveTwitterToDatabase"
  L4_2 = L1_2.firstName
  L5_2 = L1_2.lastName
  L6_2 = L1_2.message
  L7_2 = L1_2.url
  L8_2 = L1_2.time
  L9_2 = L1_2.picture
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L2_2 = TriggerServerEvent
  L3_2 = "qs-smartphone:server:updateidForEveryone"
  L2_2(L3_2)
  L2_2 = A0_2
  L4_2 = L2_2
  L3_2 = L2_2.split
  L5_2 = "@"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = L2_2
  L4_2 = L2_2.split
  L6_2 = "#"
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 2
  L6_2 = #L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    L10_2 = L9_2
    L9_2 = L9_2.split
    L11_2 = " "
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = L9_2[1]
    if nil ~= L9_2 or "" ~= L9_2 then
      L10_2 = string
      L10_2 = L10_2.match
      L11_2 = L9_2
      L12_2 = L15_1
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        L12_2 = L9_2
        L11_2 = L9_2.gsub
        L13_2 = "%"
        L14_2 = L10_2
        L13_2 = L13_2 .. L14_2
        L14_2 = ""
        L11_2 = L11_2(L12_2, L13_2, L14_2)
        L9_2 = L11_2
      end
      L11_2 = TriggerServerEvent
      L12_2 = "qs-smartphone:server:UpdateHashtags"
      L13_2 = L9_2
      L14_2 = L1_2
      L11_2(L12_2, L13_2, L14_2)
    end
  end
  L5_2 = 2
  L6_2 = #L3_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L3_2[L8_2]
    L10_2 = L9_2
    L9_2 = L9_2.split
    L11_2 = " "
    L9_2 = L9_2(L10_2, L11_2)
    L9_2 = L9_2[1]
    if nil ~= L9_2 or "" ~= L9_2 then
      L11_2 = L9_2
      L10_2 = L9_2.split
      L12_2 = "_"
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L10_2[1]
      L12_2 = table
      L12_2 = L12_2.remove
      L13_2 = L10_2
      L14_2 = 1
      L12_2(L13_2, L14_2)
      L12_2 = table
      L12_2 = L12_2.concat
      L13_2 = L10_2
      L14_2 = " "
      L12_2 = L12_2(L13_2, L14_2)
      if nil ~= L11_2 and "" ~= L11_2 and nil ~= L12_2 and "" ~= L12_2 then
        L13_2 = PhoneData
        L13_2 = L13_2.PlayerData
        L13_2 = L13_2.charinfo
        L13_2 = L13_2.firstname
        if L11_2 ~= L13_2 then
          L13_2 = PhoneData
          L13_2 = L13_2.PlayerData
          L13_2 = L13_2.charinfo
          L13_2 = L13_2.lastname
          if L12_2 ~= L13_2 then
            L13_2 = TriggerServerEvent
            L14_2 = "qs-smartphone:server:MentionedPlayer"
            L15_2 = L11_2
            L16_2 = L12_2
            L17_2 = L1_2
            L13_2(L14_2, L15_2, L16_2, L17_2)
        end
        else
          L13_2 = SetTimeout
          L14_2 = 2500
          function L15_2()
            local L0_3, L1_3, L2_3, L3_3, L4_3
            L0_3 = twitter_notifications
            if L0_3 then
              L0_3 = SendNUIMessage
              L1_3 = {}
              L1_3.action = "Notification"
              L2_3 = {}
              L3_3 = Lang
              L4_3 = "TWITTER_TITLE"
              L3_3 = L3_3(L4_3)
              L2_3.title = L3_3
              L3_3 = Lang
              L4_3 = "TWITTER_MENTION_YOURSELF"
              L3_3 = L3_3(L4_3)
              L2_3.text = L3_3
              L2_3.icon = "./img/apps/twitter.png"
              L1_3.PhoneNotify = L2_3
              L0_3(L1_3)
            end
          end
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = 1000
  L5_2(L6_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = PhoneData
  L6_2 = L6_2.Tweets
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = table
  L5_2 = L5_2.insert
  L6_2 = PhoneData
  L6_2 = L6_2.SelfTweets
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = TriggerServerEvent
  L6_2 = "qs-smartphone:server:updateForEveryone"
  L7_2 = PhoneData
  L7_2 = L7_2.Tweets
  L5_2(L6_2, L7_2)
  L5_2 = TriggerServerEvent
  L6_2 = "qs-smartphone:server:UpdateTweets"
  L7_2 = L1_2
  L5_2(L6_2, L7_2)
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "updateTest"
  L7_2 = PhoneData
  L7_2 = L7_2.SelfTweets
  L6_2.selftTweets = L7_2
  L5_2(L6_2)
end
L24_1(L25_1, L26_1)
L24_1 = RegisterNUICallback
L25_1 = "GetWeather"
function L26_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = GetWeatherTypeTransition
  L2_2, L3_2, L4_2 = L2_2()
  L5_2 = GetNextWeatherTypeHashName
  L5_2 = L5_2()
  L6_2 = {}
  L7_2 = GetClockHours
  L7_2 = L7_2()
  L8_2 = Citizen
  L8_2 = L8_2.InvokeNative
  L9_2 = 6218213562023429539
  L8_2 = L8_2(L9_2)
  L9_2 = getWeatherStringFromHash
  L10_2 = L8_2
  L9_2 = L9_2(L10_2)
  L10_2 = GetClockMonth
  L10_2 = L10_2()
  L11_2 = havadurumu
  L12_2 = L2_2
  L11_2 = L11_2(L12_2)
  L6_2.simdikizaman = L11_2
  L11_2 = havadurumu
  L12_2 = L5_2
  L11_2 = L11_2(L12_2)
  L6_2.birsonraki = L11_2
  L11_2 = calcTemp
  L12_2 = L9_2
  L13_2 = L10_2
  L14_2 = L7_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  temp = L11_2
  L11_2 = FtoC
  L12_2 = temp
  L11_2 = L11_2(L12_2)
  L6_2.derece = L11_2
  L11_2 = A1_2
  L12_2 = L6_2
  L11_2(L12_2)
end
L24_1(L25_1, L26_1)
L24_1 = _ENV
L25_1 = "havadurumu"
function L26_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetHashKey
  L2_2 = "THUNDER"
  L1_2 = L1_2(L2_2)
  if L1_2 == A0_2 then
    A0_2 = "THUNDER"
  else
    L1_2 = GetHashKey
    L2_2 = "RAIN"
    L1_2 = L1_2(L2_2)
    if L1_2 == A0_2 then
      A0_2 = "RAIN"
    else
      L1_2 = GetHashKey
      L2_2 = "EXTRASUNNY"
      L1_2 = L1_2(L2_2)
      if L1_2 == A0_2 then
        A0_2 = "EXTRASUNNY"
      else
        L1_2 = GetHashKey
        L2_2 = "CLOUDS"
        L1_2 = L1_2(L2_2)
        if L1_2 == A0_2 then
          A0_2 = "CLOUDS"
        else
          L1_2 = GetHashKey
          L2_2 = "OVERCAST"
          L1_2 = L1_2(L2_2)
          if L1_2 == A0_2 then
            A0_2 = "OVERCAST"
          else
            L1_2 = GetHashKey
            L2_2 = "CLEAR"
            L1_2 = L1_2(L2_2)
            if L1_2 == A0_2 then
              A0_2 = "CLEARING"
            else
              L1_2 = GetHashKey
              L2_2 = "CLEARING"
              L1_2 = L1_2(L2_2)
              if L1_2 == A0_2 then
                A0_2 = "CLEARING"
              else
                L1_2 = GetHashKey
                L2_2 = "SMOG"
                L1_2 = L1_2(L2_2)
                if L1_2 == A0_2 then
                  A0_2 = "SMOG"
                else
                  L1_2 = GetHashKey
                  L2_2 = "FOGGY"
                  L1_2 = L1_2(L2_2)
                  if L1_2 == A0_2 then
                    A0_2 = "FOGGY"
                  else
                    L1_2 = GetHashKey
                    L2_2 = "XMAS"
                    L1_2 = L1_2(L2_2)
                    if L1_2 == A0_2 then
                      A0_2 = "XMAS"
                    else
                      L1_2 = GetHashKey
                      L2_2 = "SNOWLIGHT"
                      L1_2 = L1_2(L2_2)
                      if L1_2 == A0_2 then
                        A0_2 = "SNOWLIGHT"
                      else
                        L1_2 = GetHashKey
                        L2_2 = "BLIZZARD"
                        L1_2 = L1_2(L2_2)
                        if L1_2 == A0_2 then
                          A0_2 = "BLIZZARD"
                        else
                          A0_2 = "BILINMIYOR"
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return A0_2
end
L24_1[L25_1] = L26_1
L24_1 = 1000
L25_1 = RegisterNUICallback
L26_1 = "Fener"
function L27_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2.fener
  if "acik" == L2_2 then
    FENER = true
    L2_2 = 0
    L24_1 = L2_2
  else
    FENER = false
    L2_2 = 1000
    L24_1 = L2_2
  end
end
L25_1(L26_1, L27_1)
L25_1 = _ENV
L26_1 = "Citizen"
L25_1 = L25_1[L26_1]
L26_1 = "CreateThread"
L25_1 = L25_1[L26_1]
function L26_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  while true do
    L0_2 = PhoneData
    L0_2 = L0_2.isOpen
    if L0_2 then
      L0_2 = FENER
      if true == L0_2 then
        L0_2 = GetEntityCoords
        L1_2 = PlayerPedId
        L1_2 = L1_2()
        L2_2 = true
        L0_2 = L0_2(L1_2, L2_2)
        L1_2 = GetEntityForwardVector
        L2_2 = PlayerPedId
        L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L2_2()
        L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
        L2_2 = DrawSpotLight
        L3_2 = L0_2.x
        L4_2 = L0_2.y
        L5_2 = L0_2.z
        L6_2 = L1_2.x
        L7_2 = L1_2.y
        L8_2 = L1_2.z
        L9_2 = 255
        L10_2 = 255
        L11_2 = 255
        L12_2 = 20.0
        L13_2 = 1.0
        L14_2 = 1.0
        L15_2 = 25.0
        L16_2 = 0
        L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      end
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = L24_1
    L0_2(L1_2)
  end
end
L25_1(L26_1)
L25_1 = _ENV
L26_1 = "MAX_INCREASE"
L27_1 = 1.5
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "MIN_INCREASE"
L27_1 = 0.2
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "RAND_FLUC"
L27_1 = 0.2
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "START_INCREASE_HR"
L27_1 = 4
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "STOP_INCREASE_HR"
L27_1 = 16
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "MonthData"
L27_1 = {}
L28_1 = {}
L29_1 = 36
L30_1 = 20
L28_1[1] = L29_1
L28_1[2] = L30_1
L29_1 = {}
L30_1 = 41
L31_1 = 24
L29_1[1] = L30_1
L29_1[2] = L31_1
L30_1 = {}
L31_1 = 53
L32_1 = 34
L30_1[1] = L31_1
L30_1[2] = L32_1
L31_1 = {}
L32_1 = 65
L33_1 = 43
L31_1[1] = L32_1
L31_1[2] = L33_1
L32_1 = {}
L33_1 = 75
L34_1 = 54
L32_1[1] = L33_1
L32_1[2] = L34_1
L33_1 = {}
L34_1 = 82
L35_1 = 61
L33_1[1] = L34_1
L33_1[2] = L35_1
L34_1 = {}
L35_1 = 86
L36_1 = 66
L34_1[1] = L35_1
L34_1[2] = L36_1
L35_1 = {}
L36_1 = 85
L37_1 = 64
L35_1[1] = L36_1
L35_1[2] = L37_1
L36_1 = {}
L37_1 = 78
L38_1 = 58
L36_1[1] = L37_1
L36_1[2] = L38_1
L37_1 = {}
L38_1 = 66
L39_1 = 46
L37_1[1] = L38_1
L37_1[2] = L39_1
L38_1 = {}
L39_1 = 53
L40_1 = 37
L38_1[1] = L39_1
L38_1[2] = L40_1
L39_1 = {}
L40_1 = 43
L41_1 = 28
L39_1[1] = L40_1
L39_1[2] = L41_1
L27_1[1] = L28_1
L27_1[2] = L29_1
L27_1[3] = L30_1
L27_1[4] = L31_1
L27_1[5] = L32_1
L27_1[6] = L33_1
L27_1[7] = L34_1
L27_1[8] = L35_1
L27_1[9] = L36_1
L27_1[10] = L37_1
L27_1[11] = L38_1
L27_1[12] = L39_1
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "AvailableWeatherTypes"
L27_1 = {}
L28_1 = "EXTRASUNNY"
L29_1 = "CLEAR"
L30_1 = "NEUTRAL"
L31_1 = "SMOG"
L32_1 = "FOGGY"
L33_1 = "OVERCAST"
L34_1 = "CLOUDS"
L35_1 = "CLEARING"
L36_1 = "RAIN"
L37_1 = "THUNDER"
L38_1 = "SNOW"
L39_1 = "BLIZZARD"
L40_1 = "SNOWLIGHT"
L41_1 = "XMAS"
L42_1 = "HALLOWEEN"
L27_1[1] = L28_1
L27_1[2] = L29_1
L27_1[3] = L30_1
L27_1[4] = L31_1
L27_1[5] = L32_1
L27_1[6] = L33_1
L27_1[7] = L34_1
L27_1[8] = L35_1
L27_1[9] = L36_1
L27_1[10] = L37_1
L27_1[11] = L38_1
L27_1[12] = L39_1
L27_1[13] = L40_1
L27_1[14] = L41_1
L27_1[15] = L42_1
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "calcTemp"
function L27_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A1_2 = A1_2 + 1
  L3_2 = MonthData
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2[1]
  L4_2 = MonthData
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2[2]
  L5_2 = nil
  L6_2 = nil
  L7_2 = nil
  if "SNOW" == A0_2 or "BLIZZARD" == A0_2 or "SNOWLIGHT" == A0_2 or "XMAS" == A0_2 then
    L5_2 = 32
    L6_2 = -20
  elseif "EXTRASUNNY" == A0_2 then
    L5_2 = L3_2 + 20
    L6_2 = L4_2 + 20
  elseif "SMOG" == A0_2 then
    L5_2 = L3_2 + 10
    L6_2 = L4_2 + 10
  elseif "FOGGY" == A0_2 or "CLOUDS" == A0_2 or "THUNDER" == A0_2 or "HALLOWEEN" == A0_2 then
    L5_2 = L3_2 - 10
    L6_2 = L4_2 - 10
  else
    L5_2 = L3_2
    L6_2 = L4_2
  end
  L8_2 = randf
  L9_2 = L6_2
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L7_2 = L8_2
  L8_2 = START_INCREASE_HR
  if A2_2 >= L8_2 then
    L8_2 = STOP_INCREASE_HR
    if A2_2 < L8_2 then
      if L5_2 <= L7_2 then
        L8_2 = randf
        L9_2 = RAND_FLUC
        L9_2 = -L9_2
        L10_2 = RAND_FLUC
        L8_2 = L8_2(L9_2, L10_2)
        L7_2 = L5_2 + L8_2
      else
        L8_2 = randf
        L9_2 = MIN_INCREASE
        L10_2 = MAX_INCREASE
        L8_2 = L8_2(L9_2, L10_2)
        L7_2 = L7_2 + L8_2
      end
  end
  elseif L6_2 >= L7_2 then
    L8_2 = randf
    L9_2 = RAND_FLUC
    L9_2 = -L9_2
    L10_2 = RAND_FLUC
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L6_2 + L8_2
  else
    L8_2 = randf
    L9_2 = MIN_INCREASE
    L10_2 = MAX_INCREASE
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L7_2 - L8_2
  end
  return L7_2
end
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "getWeatherStringFromHash"
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = "?"
  L2_2 = 1
  L3_2 = AvailableWeatherTypes
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetHashKey
    L7_2 = AvailableWeatherTypes
    L7_2 = L7_2[L5_2]
    L6_2 = L6_2(L7_2)
    if A0_2 == L6_2 then
      L6_2 = AvailableWeatherTypes
      L1_2 = L6_2[L5_2]
    end
  end
  return L1_2
end
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "genSeed"
function L27_1()
  local L0_2, L1_2
  L0_2 = GetClockYear
  L0_2 = L0_2()
  L1_2 = GetClockMonth
  L1_2 = L1_2()
  L0_2 = L0_2 + L1_2
  L1_2 = GetClockDayOfWeek
  L1_2 = L1_2()
  L0_2 = L0_2 + L1_2
  return L0_2
end
L25_1[L26_1] = L27_1
L25_1 = _ENV
L26_1 = "randf"
function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = math
  L2_2 = L2_2.randomseed
  L3_2 = GetClockDayOfMonth
  L3_2 = L3_2()
  L4_2 = GetClockYear
  L4_2 = L4_2()
  L3_2 = L3_2 + L4_2
  L4_2 = GetClockMonth
  L4_2 = L4_2()
  L3_2 = L3_2 + L4_2
  L4_2 = GetClockHours
  L4_2 = L4_2()
  L3_2 = L3_2 + L4_2
  L2_2(L3_2)
  L2_2 = math
  L2_2 = L2_2.random
  L2_2 = L2_2()
  L3_2 = A1_2 - A0_2
  L2_2 = L2_2 * L3_2
  L2_2 = A0_2 + L2_2
  return L2_2
end
L25_1[L26_1] = L27_1
L25_1 = false
L26_1 = AddEventHandler
L27_1 = "showHud"
function L28_1(A0_2)
  local L1_2
  L1_2 = not A0_2
  L25_1 = L1_2
end
L26_1(L27_1, L28_1)
L26_1 = _ENV
L27_1 = "FtoC"
function L28_1(A0_2)
  local L1_2
  L1_2 = A0_2 - 32
  L1_2 = L1_2 * 0.5555555555555556
  return L1_2
end
L26_1[L27_1] = L28_1
L26_1 = RegisterNetEvent
L27_1 = "qs-smartphone-client-UpdateBankBalance"
L26_1(L27_1)
L26_1 = AddEventHandler
L27_1 = "qs-smartphone-client-UpdateBankBalance"
function L28_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "UpdateBankBalance"
  L2_2.amount = A0_2
  L1_2(L2_2)
end
L26_1(L27_1, L28_1)
L26_1 = RegisterNUICallback
L27_1 = "BuyOrSellCryptoCurrency"
function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerServerEvent
  L2_2 = "qs-smartphone-server-BuyCryptoCurrency"
  L3_2 = A0_2.type
  L4_2 = A0_2.amount
  L5_2 = A0_2.crypto
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L26_1(L27_1, L28_1)
L26_1 = RegisterNetEvent
L27_1 = "qs-smartphone-client-UpdateMyCryptos"
L26_1(L27_1)
L26_1 = AddEventHandler
L27_1 = "qs-smartphone-client-UpdateMyCryptos"
function L28_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "UpdateCryptoValue"
  L3_2.crypto = A0_2
  L3_2.value = A1_2
  L2_2(L3_2)
end
L26_1(L27_1, L28_1)
L26_1 = RegisterNetEvent
L27_1 = "qs-smartphone-clinet:AddNewCryptoTransfer"
L26_1(L27_1)
L26_1 = AddEventHandler
L27_1 = "qs-smartphone-clinet:AddNewCryptoTransfer"
function L28_1(A0_2)
  local L1_2, L2_2
  L1_2 = SendNUIMessage
  L2_2 = {}
  L2_2.action = "AddNewCryptoTransfer"
  L2_2.data = A0_2
  L1_2(L2_2)
end
L26_1(L27_1, L28_1)
L26_1 = RegisterNetEvent
L27_1 = "qs-smartphone:sendMessage"
L26_1(L27_1)
L26_1 = AddEventHandler
L27_1 = "qs-smartphone:sendMessage"
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SendTextMessage
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L26_1(L27_1, L28_1)
L26_1 = RegisterNetEvent
L27_1 = "qs-smartphone:client:jobMessages"
L26_1(L27_1)
L26_1 = AddEventHandler
L27_1 = "qs-smartphone:client:jobMessages"
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = ""
  L3_2 = ""
  L4_2 = pairs
  L5_2 = Config
  L5_2 = L5_2.Jobs
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.job
    if L10_2 == A0_2 then
      L2_2 = L9_2.img
      L3_2 = L9_2.name
      break
    end
  end
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "UpdateMessageChatEmergency"
  L5_2.chatNumber = A0_2
  L4_2(L5_2)
  L4_2 = SendNUIMessage
  L5_2 = {}
  L5_2.action = "Notification"
  L6_2 = {}
  L6_2.title = L3_2
  L6_2.text = A1_2
  L6_2.icon = L2_2
  L5_2.PhoneNotify = L6_2
  L4_2(L5_2)
end
L26_1(L27_1, L28_1)
L26_1 = RegisterNetEvent
L27_1 = "qs-smartphone:client:AddTransaction"
function L28_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = {}
  L4_2.TransactionTitle = A3_2
  L4_2.TransactionMessage = A2_2
  L5_2 = PhoneData
  L5_2 = L5_2.CryptoTransactions
  L6_2 = PhoneData
  L6_2 = L6_2.CryptoTransactions
  L6_2 = #L6_2
  L6_2 = L6_2 + 1
  L5_2[L6_2] = L4_2
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "PhoneNotification"
  L7_2 = {}
  L8_2 = Lang
  L9_2 = "CRYPTO_TITLE"
  L8_2 = L8_2(L9_2)
  L7_2.title = L8_2
  L7_2.text = A2_2
  L7_2.icon = "./img/apps/wallet.png"
  L6_2.PhoneNotify = L7_2
  L5_2(L6_2)
  L5_2 = SendNUIMessage
  L6_2 = {}
  L6_2.action = "UpdateTransactions"
  L7_2 = PhoneData
  L7_2 = L7_2.CryptoTransactions
  L6_2.CryptoTransactions = L7_2
  L5_2(L6_2)
  L5_2 = TriggerServerEvent
  L6_2 = "qs-smartphone:server:AddTransaction"
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L26_1(L27_1, L28_1)
L26_1 = RegisterNetEvent
L27_1 = "qs-smartphone:sendNotify"
L26_1(L27_1)
L26_1 = AddEventHandler
L27_1 = "qs-smartphone:sendNotify"
function L28_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.action = A0_2
  L8_2 = {}
  L8_2.title = A1_2
  L8_2.text = A2_2
  L8_2.icon = A3_2
  L8_2.color = A4_2
  L8_2.timeout = A5_2
  L7_2.PhoneNotify = L8_2
  L6_2(L7_2)
end
L26_1(L27_1, L28_1)
L26_1 = RegisterNetEvent
L27_1 = "qs-smartphone:sendNotifyRental"
L26_1(L27_1)
L26_1 = AddEventHandler
L27_1 = "qs-smartphone:sendNotifyRental"
function L28_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = SendNUIMessage
  L7_2 = {}
  L7_2.action = A0_2
  L8_2 = {}
  L9_2 = Lang
  L10_2 = "RENTEL_TITLE"
  L9_2 = L9_2(L10_2)
  L8_2.title = L9_2
  L9_2 = Message
  L8_2.text = L9_2
  L8_2.icon = "./img/apps/rentel.png"
  L8_2.color = A4_2
  L8_2.timeout = A5_2
  L7_2.PhoneNotify = L8_2
  L6_2(L7_2)
end
L26_1(L27_1, L28_1)
L26_1 = RegisterCommand
L27_1 = "loadplayerphone"
function L28_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = L5_1
  if not L3_2 then
    L3_2 = LoadPhone
    L3_2()
    L3_2 = true
    L5_1 = L3_2
  end
end
L26_1(L27_1, L28_1)
L26_1 = RegisterNetEvent
L27_1 = "qs-smartphone:SetHavePhoneStatus"
L26_1(L27_1)
L26_1 = AddEventHandler
L27_1 = "qs-smartphone:SetHavePhoneStatus"
function L28_1(A0_2)
  local L1_2
  L1_2 = FirstCheckHavePhone
  if not L1_2 then
    FirstCheckHavePhone = true
  end
  HavePhone = A0_2
end
L26_1(L27_1, L28_1)
