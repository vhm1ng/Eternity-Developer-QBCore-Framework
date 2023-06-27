local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1
ESX = nil
QS = nil
QBCore = nil
L0_1 = {}
notAvailable = L0_1
L0_1 = {}
Calls = L0_1
L0_1 = Config
L0_1 = L0_1.Framework
if "ESX" == L0_1 then
  L0_1 = TriggerEvent
  L1_1 = Config
  L1_1 = L1_1.getSharedObject
  function L2_1(A0_2)
    local L1_2
    ESX = A0_2
  end
  L0_1(L1_1, L2_1)
  L0_1 = TriggerEvent
  L1_1 = "qs-base:getSharedObject"
  function L2_1(A0_2)
    local L1_2
    QS = A0_2
  end
  L0_1(L1_1, L2_1)
  L0_1 = print
  L1_1 = "^4[qs-smartphone] ^2The ESX version of Quasar Smartphone is running.^0"
  L0_1(L1_1)
else
  L0_1 = Config
  L0_1 = L0_1.Framework
  if "QBCore" == L0_1 then
    L0_1 = exports
    L1_1 = Config
    L1_1 = L1_1.QBCoreGetCoreObject
    L0_1 = L0_1[L1_1]
    L1_1 = L0_1
    L0_1 = L0_1.GetCoreObject
    L0_1 = L0_1(L1_1)
    QBCore = L0_1
    L0_1 = print
    L1_1 = "^4[qs-smartphone] ^2The QBCore version of Quasar Smartphone is running.^0"
    L0_1(L1_1)
  end
end
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = {}
L5_1 = {}
L6_1 = {}
L7_1 = {}
L8_1 = {}
GeneratedPlates = L8_1
discord_notifications = true
L8_1 = RegisterNetEvent
L9_1 = "qs-smartphone:discord_notifications"
function L10_1(A0_2)
  local L1_2
  discord_notifications = A0_2
end
L8_1(L9_1, L10_1)
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = A0_2
    if L1_2 then
      L2_2 = type
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if "string" == L2_2 then
        L3_2 = L1_2
        L2_2 = L1_2.gsub
        L4_2 = "%s+"
        L5_2 = ""
        L2_2 = L2_2(L3_2, L4_2, L5_2)
        L1_2 = L2_2
      end
      L2_2 = pairs
      L3_2 = QS
      L3_2 = L3_2.GetPlayers
      L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2()
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        if L7_2 then
          L8_2 = tostring
          L9_2 = L7_2.PlayerData
          L9_2 = L9_2.charinfo
          L9_2 = L9_2.phone
          L8_2 = L8_2(L9_2)
          L9_2 = tostring
          L10_2 = L1_2
          L9_2 = L9_2(L10_2)
          if L8_2 == L9_2 then
            return L7_2
          end
        end
      end
    end
    L2_2 = nil
    return L2_2
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = A0_2
      if L1_2 then
        L2_2 = type
        L3_2 = L1_2
        L2_2 = L2_2(L3_2)
        if "string" == L2_2 then
          L3_2 = L1_2
          L2_2 = L1_2.gsub
          L4_2 = "%s+"
          L5_2 = ""
          L2_2 = L2_2(L3_2, L4_2, L5_2)
          L1_2 = L2_2
        end
        L2_2 = pairs
        L3_2 = QBCore
        L3_2 = L3_2.Functions
        L3_2 = L3_2.GetQBPlayers
        L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L3_2()
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          if L7_2 then
            L8_2 = tostring
            L9_2 = L7_2.PlayerData
            L9_2 = L9_2.charinfo
            L9_2 = L9_2.phone
            L8_2 = L8_2(L9_2)
            L9_2 = tostring
            L10_2 = L1_2
            L9_2 = L9_2(L10_2)
            if L8_2 == L9_2 then
              return L7_2
            end
          end
        end
      end
      L2_2 = nil
      return L2_2
    end
  end
end
GetPlayerFromPhone = L8_1
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetPlayerFromPhone
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = false
  if nil ~= L1_2 then
    L2_2 = true
  end
  return L2_2
end
GetOnlineStatus = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Jobs
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.job
    if L7_2 == A0_2 then
      L7_2 = L6_2.job
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
GetConfigJobs = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = Config
  L2_2 = L2_2.Jobs
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.job
    if L7_2 == A0_2 then
      L7_2 = L6_2.name
      return L7_2
    end
  end
  L1_2 = false
  return L1_2
end
GetConfigJobsName = L8_1
L8_1 = nil
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:SetYoutubePlaylist"
function L11_1(A0_2)
  local L1_2
  L8_1 = A0_2
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerEvent
L10_1 = "qs-smartphone:server:updateForEveryone"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:updateForEveryone"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = TriggerClientEvent
  L3_2 = "qs-smartphone:updateForEveryone"
  L4_2 = -1
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerEvent
L10_1 = "qs-smartphone:server:RestoreSmartphone"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:RestoreSmartphone"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "ESX" == L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Sync
      L3_2 = L3_2.execute
      L4_2 = "UPDATE users SET apps = @apps, widget = @widget WHERE identifier = @identifier"
      L5_2 = {}
      L5_2["@apps"] = nil
      L5_2["@widget"] = nil
      L6_2 = L2_2.identifier
      L5_2["@identifier"] = L6_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = Config
      L3_2 = L3_2.Framework
      if "QBCore" == L3_2 then
        L3_2 = print
        L4_2 = L2_2.identifier
        L3_2(L4_2)
        L3_2 = MySQL
        L3_2 = L3_2.Sync
        L3_2 = L3_2.execute
        L4_2 = "UPDATE players SET apps = @apps, widget = @widget WHERE citizenid = @citizenid"
        L5_2 = {}
        L5_2["@apps"] = nil
        L5_2["@widget"] = nil
        L6_2 = L2_2.identifier
        L5_2["@citizenid"] = L6_2
        L3_2(L4_2, L5_2)
      end
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerEvent
L10_1 = "qs-smartphone:server:updateidForEveryone"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:updateidForEveryone"
function L11_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerClientEvent
  L1_2 = "qs-smartphone:updateidForEveryone"
  L2_2 = -1
  L0_2(L1_2, L2_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:server:SaveApps"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:SaveApps"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = source
    L2_2 = GetPlayerFromIdFramework
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.execute
    L4_2 = "UPDATE users SET apps = @apps WHERE identifier = @identifier"
    L5_2 = {}
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = A0_2
    L6_2 = L6_2(L7_2)
    L5_2["@apps"] = L6_2
    L6_2 = L2_2.identifier
    L5_2["@identifier"] = L6_2
    L3_2(L4_2, L5_2)
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = source
      L2_2 = GetPlayerFromIdFramework
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = MySQL
      L3_2 = L3_2.Sync
      L3_2 = L3_2.execute
      L4_2 = "UPDATE "
      L5_2 = Config
      L5_2 = L5_2.QBCoreFrameworkPlayersTable
      L6_2 = " SET apps = @apps WHERE citizenid = @citizenid"
      L4_2 = L4_2 .. L5_2 .. L6_2
      L5_2 = {}
      L6_2 = json
      L6_2 = L6_2.encode
      L7_2 = A0_2
      L6_2 = L6_2(L7_2)
      L5_2["@apps"] = L6_2
      L6_2 = L2_2.identifier
      L5_2["@citizenid"] = L6_2
      L3_2(L4_2, L5_2)
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetUserProfileWhatsApp"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L5_2 = {}
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.phone
    L5_2["@phone"] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A1_2
    L5_2 = L3_2[1]
    if not L5_2 then
      L5_2 = false
    end
    L4_2(L5_2)
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerEvent
L10_1 = "qs-smartphone:server:btShare"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:btShare"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = GetPlayerFromIdFramework
    L2_2 = source
    L1_2 = L1_2(L2_2)
    if L1_2 then
      if A0_2 then
        A0_2 = 1
      else
        A0_2 = 0
      end
      L2_2 = MySQL
      L2_2 = L2_2.Sync
      L2_2 = L2_2.execute
      L3_2 = "UPDATE `users` SET `bt` = \""
      L4_2 = A0_2
      L5_2 = "\" WHERE  `identifier` = \""
      L6_2 = L1_2.identifier
      L7_2 = "\""
      L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
      L2_2(L3_2)
    end
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = GetPlayerFromIdFramework
      L2_2 = source
      L1_2 = L1_2(L2_2)
      if L1_2 then
        if A0_2 then
          A0_2 = 1
        else
          A0_2 = 0
        end
        L2_2 = MySQL
        L2_2 = L2_2.Sync
        L2_2 = L2_2.execute
        L3_2 = "UPDATE "
        L4_2 = Config
        L4_2 = L4_2.QBCoreFrameworkPlayersTable
        L5_2 = " SET `bt` = \""
        L6_2 = A0_2
        L7_2 = "\" WHERE  `citizenid` = \""
        L8_2 = L1_2.identifier
        L9_2 = "\""
        L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
        L2_2(L3_2)
      end
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerEvent
L10_1 = "qs-smartphone:server:DosyaGonder"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:DosyaGonder"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerClientEvent
  L2_2 = "qs-smartphone:client:DosyaAl"
  L3_2 = A0_2.src
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerEvent
L10_1 = "qs-smartphone:server:DosyaKaydet"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:DosyaKaydet"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM `player_gallery` WHERE resim ='"
  L5_2 = A0_2.resim_url
  L6_2 = "'  "
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = {}
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2[1]
  L4_2 = L4_2.resim
  if L4_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.execute
    L5_2 = "INSERT INTO `player_gallery` (`identifier`, `resim`, `data`) VALUES ('"
    L6_2 = L2_2.identifier
    L7_2 = "', '"
    L8_2 = L3_2[1]
    L8_2 = L8_2.resim
    L9_2 = "', '"
    L10_2 = L3_2[1]
    L10_2 = L10_2.data
    L11_2 = "' )"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
    L4_2(L5_2)
    L4_2 = TriggerClientEvent
    L5_2 = "qs-smartphone:UpdateGallery"
    L6_2 = L1_2
    L4_2(L5_2, L6_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:server:getShareBluetooth"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = Config
  L2_2 = L2_2.Framework
  if "ESX" == L2_2 then
    L2_2 = {}
    L3_2 = pairs
    L4_2 = GetPlayers
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2()
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = GetPlayerFromIdFramework
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L10_2 = MySQL
      L10_2 = L10_2.Sync
      L10_2 = L10_2.fetchAll
      L11_2 = "SELECT bt FROM users WHERE identifier = @idf AND bt = @bt"
      L12_2 = {}
      L13_2 = L9_2.identifier
      L12_2["@idf"] = L13_2
      L12_2["@bt"] = 1
      L10_2 = L10_2(L11_2, L12_2)
      if L10_2 then
        L11_2 = L10_2[1]
        if L11_2 then
          L11_2 = {}
          L12_2 = {}
          L13_2 = L9_2.PlayerData
          L13_2 = L13_2.charinfo
          L13_2 = L13_2.firstname
          L14_2 = " "
          L15_2 = L9_2.PlayerData
          L15_2 = L15_2.charinfo
          L15_2 = L15_2.lastname
          L13_2 = L13_2 .. L14_2 .. L15_2
          L12_2.user = L13_2
          L13_2 = L9_2.identifier
          L12_2.identifier = L13_2
          L12_2.id = L8_2
          L11_2 = L12_2
          L12_2 = table
          L12_2 = L12_2.insert
          L13_2 = L2_2
          L14_2 = L11_2
          L12_2(L13_2, L14_2)
        end
      end
    end
    L3_2 = A1_2
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L2_2 = Config
    L2_2 = L2_2.Framework
    if "QBCore" == L2_2 then
      L2_2 = {}
      L3_2 = pairs
      L4_2 = GetPlayers
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2()
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = GetPlayerFromIdFramework
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        L10_2 = MySQL
        L10_2 = L10_2.Sync
        L10_2 = L10_2.fetchAll
        L11_2 = "SELECT bt FROM "
        L12_2 = Config
        L12_2 = L12_2.QBCoreFrameworkPlayersTable
        L13_2 = " WHERE citizenid = @idf AND bt = @bt"
        L11_2 = L11_2 .. L12_2 .. L13_2
        L12_2 = {}
        L13_2 = L9_2.citizenid
        L12_2["@idf"] = L13_2
        L12_2["@bt"] = 1
        L10_2 = L10_2(L11_2, L12_2)
        if L10_2 then
          L11_2 = L10_2[1]
          if L11_2 then
            L11_2 = {}
            L12_2 = {}
            L13_2 = L9_2.PlayerData
            L13_2 = L13_2.charinfo
            L13_2 = L13_2.firstname
            L14_2 = " "
            L15_2 = L9_2.PlayerData
            L15_2 = L15_2.charinfo
            L15_2 = L15_2.lastname
            L13_2 = L13_2 .. L14_2 .. L15_2
            L12_2.user = L13_2
            L13_2 = L9_2.identifier
            L12_2.identifier = L13_2
            L12_2.id = L8_2
            L11_2 = L12_2
            L12_2 = table
            L12_2 = L12_2.insert
            L13_2 = L2_2
            L14_2 = L11_2
            L12_2(L13_2, L14_2)
          end
        end
      end
      L3_2 = A1_2
      L4_2 = L2_2
      L3_2(L4_2)
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetUserApps"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Config
  L2_2 = L2_2.Framework
  if "ESX" == L2_2 then
    L2_2 = GetPlayerFromIdFramework
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Sync
      L3_2 = L3_2.fetchAll
      L4_2 = "SELECT apps, widget FROM users WHERE identifier = @identifier"
      L5_2 = {}
      L6_2 = L2_2.identifier
      L5_2["@identifier"] = L6_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L4_2 = L3_2[1]
        if L4_2 then
          L4_2 = A1_2
          L5_2 = {}
          L6_2 = L3_2[1]
          L6_2 = L6_2.apps
          if L6_2 then
            L6_2 = json
            L6_2 = L6_2.decode
            L7_2 = L3_2[1]
            L7_2 = L7_2.apps
            L6_2 = L6_2(L7_2)
          end
          L5_2.apps = L6_2
          L6_2 = L3_2[1]
          L6_2 = L6_2.widget
          if L6_2 then
            L6_2 = json
            L6_2 = L6_2.decode
            L7_2 = L3_2[1]
            L7_2 = L7_2.widget
            L6_2 = L6_2(L7_2)
          end
          L5_2.widget = L6_2
          L4_2(L5_2)
      end
      else
        L4_2 = A1_2
        L5_2 = {}
        L6_2 = {}
        L5_2.apps = L6_2
        L6_2 = {}
        L5_2.widget = L6_2
        L4_2(L5_2)
      end
    else
      L3_2 = A1_2
      L4_2 = false
      L3_2(L4_2)
    end
  else
    L2_2 = Config
    L2_2 = L2_2.Framework
    if "QBCore" == L2_2 then
      L2_2 = GetPlayerFromIdFramework
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = MySQL
        L3_2 = L3_2.Sync
        L3_2 = L3_2.fetchAll
        L4_2 = "SELECT apps, widget FROM "
        L5_2 = Config
        L5_2 = L5_2.QBCoreFrameworkPlayersTable
        L6_2 = " WHERE citizenid = @citizenid"
        L4_2 = L4_2 .. L5_2 .. L6_2
        L5_2 = {}
        L6_2 = L2_2.identifier
        L5_2["@citizenid"] = L6_2
        L3_2 = L3_2(L4_2, L5_2)
        if L3_2 then
          L4_2 = L3_2[1]
          if L4_2 then
            L4_2 = A1_2
            L5_2 = {}
            L6_2 = L3_2[1]
            L6_2 = L6_2.apps
            if L6_2 then
              L6_2 = json
              L6_2 = L6_2.decode
              L7_2 = L3_2[1]
              L7_2 = L7_2.apps
              L6_2 = L6_2(L7_2)
            end
            L5_2.apps = L6_2
            L6_2 = L3_2[1]
            L6_2 = L6_2.widget
            if L6_2 then
              L6_2 = json
              L6_2 = L6_2.decode
              L7_2 = L3_2[1]
              L7_2 = L7_2.widget
              L6_2 = L6_2(L7_2)
            end
            L5_2.widget = L6_2
            L4_2(L5_2)
        end
        else
          L4_2 = A1_2
          L5_2 = {}
          L6_2 = {}
          L5_2.apps = L6_2
          L6_2 = {}
          L5_2.widget = L6_2
          L4_2(L5_2)
        end
      else
        L3_2 = A1_2
        L4_2 = false
        L3_2(L4_2)
      end
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetWhatsappProfiles"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM whatsapp_accounts"
  L5_2 = {}
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:AddAccountInsta"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM instagram_account WHERE phone = @id"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@id"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if not L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT * FROM instagram_account WHERE username = @username"
      L7_2 = {}
      L8_2 = A2_2.username
      L7_2["@username"] = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2[1]
      if L6_2 then
        L6_2 = A1_2
        L7_2 = false
        L6_2(L7_2)
      else
        L6_2 = MySQL
        L6_2 = L6_2.Sync
        L6_2 = L6_2.execute
        L7_2 = "INSERT INTO instagram_account (`id`, `name`, `phone`, `username`, `password`, `avatar`) VALUES(@user_id, @name, @phone, @username, @password, @avatar);"
        L8_2 = {}
        L9_2 = L3_2.identifier
        L8_2["@user_id"] = L9_2
        L9_2 = L3_2.PlayerData
        L9_2 = L9_2.charinfo
        L9_2 = L9_2.firstname
        L10_2 = " "
        L11_2 = L3_2.PlayerData
        L11_2 = L11_2.charinfo
        L11_2 = L11_2.lastname
        L9_2 = L9_2 .. L10_2 .. L11_2
        L8_2["@name"] = L9_2
        L9_2 = L3_2.PlayerData
        L9_2 = L9_2.charinfo
        L9_2 = L9_2.phone
        L8_2["@phone"] = L9_2
        L9_2 = CheckHtmlInput
        L10_2 = EscapeSqli
        L11_2 = A2_2.username
        L10_2, L11_2 = L10_2(L11_2)
        L9_2 = L9_2(L10_2, L11_2)
        L8_2["@username"] = L9_2
        L9_2 = EscapeSqli
        L10_2 = A2_2.password
        L9_2 = L9_2(L10_2)
        L8_2["@password"] = L9_2
        L8_2["@avatar"] = "default.png"
        L6_2(L7_2, L8_2)
        L6_2 = A1_2
        L7_2 = true
        L6_2(L7_2)
      end
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerEvent
L10_1 = "qs-smartphone:server:AddAdvert"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:AddAdvert"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.PlayerData
  L4_2 = L4_2.charinfo
  L5_2 = "@"
  L6_2 = L4_2.firstname
  L7_2 = ""
  L8_2 = L4_2.lastname
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2
  L6_2 = L4_2.phone
  if A1_2 then
    L7_2 = MySQL
    L7_2 = L7_2.Async
    L7_2 = L7_2.execute
    L8_2 = "INSERT INTO `yellowpages_posts` (`owner`, `mesaj`, `isim`, `telno`, `resim`) VALUES ('"
    L9_2 = L3_2.PlayerData
    L9_2 = L9_2.charinfo
    L9_2 = L9_2.phone
    L10_2 = "', '"
    L11_2 = CheckHtmlInput
    L12_2 = EscapeSqli2
    L13_2 = A0_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L12_2 = "', '"
    L13_2 = EscapeSqli2
    L14_2 = L5_2
    L13_2 = L13_2(L14_2)
    L14_2 = "' , '"
    L15_2 = L6_2
    L16_2 = "' , '"
    L17_2 = A1_2
    L18_2 = "' )"
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
    L9_2 = {}
    L7_2(L8_2, L9_2)
  else
    L7_2 = MySQL
    L7_2 = L7_2.Async
    L7_2 = L7_2.execute
    L8_2 = "INSERT INTO `yellowpages_posts` (`owner`, `mesaj`, `isim`, `telno` ) VALUES ('"
    L9_2 = L3_2.PlayerData
    L9_2 = L9_2.charinfo
    L9_2 = L9_2.phone
    L10_2 = "', '"
    L11_2 = CheckHtmlInput
    L12_2 = EscapeSqli2
    L13_2 = A0_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L12_2 = "', '"
    L13_2 = EscapeSqli2
    L14_2 = L5_2
    L13_2 = L13_2(L14_2)
    L14_2 = "' , '"
    L15_2 = L6_2
    L16_2 = "'  )"
    L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L9_2 = {}
    L7_2(L8_2, L9_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:server:DeleteAdvert"
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = GetPlayerFromIdFramework
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.PlayerData
  L1_2 = L1_2.charinfo
  L1_2 = L1_2.phone
  L2_2 = L6_1
  L2_2[L1_2] = nil
  L2_2 = TriggerClientEvent
  L3_2 = "qs-smartphone:client:UpdateAdvertsDel"
  L4_2 = -1
  L5_2 = L6_1
  L2_2(L3_2, L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetUserProfileInsta"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM instagram_account WHERE phone = @phone"
    L5_2 = {}
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.phone
    L5_2["@phone"] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2[1]
    if L4_2 then
      L4_2 = A1_2
      L5_2 = L3_2[1]
      L4_2(L5_2)
    else
      L4_2 = A1_2
      L5_2 = false
      L4_2(L5_2)
    end
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetUserProfileTwitter"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM twitter_account WHERE phone = @phone"
    L5_2 = {}
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.phone
    L5_2["@phone"] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = A1_2
    L5_2 = L3_2[1]
    L4_2(L5_2)
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetMessagesChat"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = nil
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT * FROM phone_messages WHERE phone = @phone AND number = @number OR phone = @number AND number = @phone"
    L7_2 = {}
    L8_2 = L3_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@phone"] = L8_2
    L7_2["@number"] = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    L4_2 = L5_2
    if L4_2 then
      L5_2 = L4_2[1]
      if L5_2 then
        L5_2 = {}
        L6_2 = json
        L6_2 = L6_2.decode
        L7_2 = L4_2[1]
        L7_2 = L7_2.messages
        L6_2 = L6_2(L7_2)
        L5_2.messages = L6_2
        L6_2 = 1
        L7_2 = L5_2.messages
        L7_2 = #L7_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = L5_2.messages
          L10_2 = L10_2[L9_2]
          L10_2 = L10_2.owner
          L11_2 = L3_2.PlayerData
          L11_2 = L11_2.charinfo
          L11_2 = L11_2.phone
          if L10_2 == L11_2 then
            L10_2 = L5_2.messages
            L10_2 = L10_2[L9_2]
            L10_2 = L10_2.message
            L5_2.lastMessageMe = L10_2
          else
            L10_2 = L5_2.messages
            L10_2 = L10_2[L9_2]
            L10_2 = L10_2.message
            L5_2.lastMessageTarget = L10_2
          end
        end
        L6_2 = A1_2
        L7_2 = L5_2
        L6_2(L7_2)
    end
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:CleariMessageChat"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * FROM phone_messages WHERE phone = @phone AND number = @number OR phone = @number AND number = @phone"
  L6_2 = {}
  L7_2 = L3_2.PlayerData
  L7_2 = L7_2.charinfo
  L7_2 = L7_2.phone
  L6_2["@phone"] = L7_2
  L7_2 = A2_2.number
  L6_2["@number"] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2[1]
  if L5_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.execute
    L6_2 = "UPDATE phone_messages SET messages = @newMessages WHERE id = @id"
    L7_2 = {}
    L8_2 = L4_2[1]
    L8_2 = L8_2.id
    L7_2["@id"] = L8_2
    L8_2 = json
    L8_2 = L8_2.encode
    L9_2 = {}
    L8_2 = L8_2(L9_2)
    L7_2["@newMessages"] = L8_2
    L5_2(L6_2, L7_2)
    L5_2 = A1_2
    L6_2 = true
    L5_2(L6_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:DeleteiMessage"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * FROM phone_messages WHERE phone = @phone AND number = @number OR phone = @number AND number = @phone"
  L6_2 = {}
  L7_2 = L3_2.PlayerData
  L7_2 = L7_2.charinfo
  L7_2 = L7_2.phone
  L6_2["@phone"] = L7_2
  L7_2 = A2_2.number
  L6_2["@number"] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2[1]
  if L5_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.execute
    L6_2 = "DELETE FROM phone_messages WHERE id = @id"
    L7_2 = {}
    L8_2 = L4_2[1]
    L8_2 = L8_2.id
    L7_2["@id"] = L8_2
    L5_2(L6_2, L7_2)
    L5_2 = A1_2
    L6_2 = true
    L5_2(L6_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:SendNewMessage"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A2_2.phone
    L5_2 = GetPlayerFromPhone
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L4_2 then
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT * FROM phone_messages WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
      L8_2 = {}
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L8_2["@phone"] = L9_2
      L8_2["@number"] = L4_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = L6_2[1]
      if L7_2 then
        L7_2 = json
        L7_2 = L7_2.decode
        L8_2 = L6_2[1]
        L8_2 = L8_2.messages
        L7_2 = L7_2(L8_2)
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L7_2
        L10_2 = {}
        L11_2 = L3_2.PlayerData
        L11_2 = L11_2.charinfo
        L11_2 = L11_2.phone
        L10_2.owner = L11_2
        L11_2 = A2_2.type
        L10_2.type = L11_2
        L11_2 = A2_2.message
        L10_2.message = L11_2
        L11_2 = os
        L11_2 = L11_2.date
        L12_2 = "%Y-%m-%d %H:%M:%S"
        L11_2 = L11_2(L12_2)
        L10_2.created = L11_2
        L10_2.read = 0
        L8_2(L9_2, L10_2)
        L8_2 = MySQL
        L8_2 = L8_2.Sync
        L8_2 = L8_2.execute
        L9_2 = "UPDATE phone_messages SET messages = @messages, created = @created WHERE id = @id"
        L10_2 = {}
        L11_2 = L6_2[1]
        L11_2 = L11_2.id
        L10_2["@id"] = L11_2
        L11_2 = CheckHtmlInput
        L12_2 = json
        L12_2 = L12_2.encode
        L13_2 = L7_2
        L12_2, L13_2 = L12_2(L13_2)
        L11_2 = L11_2(L12_2, L13_2)
        L10_2["@messages"] = L11_2
        L11_2 = os
        L11_2 = L11_2.date
        L12_2 = "%Y-%m-%d %H:%M:%S"
        L11_2 = L11_2(L12_2)
        L10_2["@created"] = L11_2
        L8_2(L9_2, L10_2)
      else
        L7_2 = {}
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L7_2
        L10_2 = {}
        L11_2 = L3_2.PlayerData
        L11_2 = L11_2.charinfo
        L11_2 = L11_2.phone
        L10_2.owner = L11_2
        L11_2 = A2_2.type
        L10_2.type = L11_2
        L11_2 = A2_2.message
        L10_2.message = L11_2
        L11_2 = os
        L11_2 = L11_2.date
        L12_2 = "%Y-%m-%d %H:%M:%S"
        L11_2 = L11_2(L12_2)
        L10_2.created = L11_2
        L10_2.read = 0
        L8_2(L9_2, L10_2)
        L8_2 = MySQL
        L8_2 = L8_2.Sync
        L8_2 = L8_2.execute
        L9_2 = "INSERT INTO phone_messages (`phone`, `number`, `created`, `messages`) VALUES(@phone, @number, @created, @messages)"
        L10_2 = {}
        L11_2 = L3_2.PlayerData
        L11_2 = L11_2.charinfo
        L11_2 = L11_2.phone
        L10_2["@phone"] = L11_2
        L10_2["@number"] = L4_2
        L11_2 = os
        L11_2 = L11_2.date
        L12_2 = "%Y-%m-%d %H:%M:%S"
        L11_2 = L11_2(L12_2)
        L10_2["@created"] = L11_2
        L11_2 = CheckHtmlInput
        L12_2 = json
        L12_2 = L12_2.encode
        L13_2 = L7_2
        L12_2, L13_2 = L12_2(L13_2)
        L11_2 = L11_2(L12_2, L13_2)
        L10_2["@messages"] = L11_2
        L8_2(L9_2, L10_2)
      end
      if L5_2 then
        L7_2 = TriggerClientEvent
        L8_2 = "qs-smartphone:refreshiMessageChats"
        L9_2 = L5_2.PlayerData
        L9_2 = L9_2.source
        L10_2 = L3_2.PlayerData
        L10_2 = L10_2.charinfo
        L10_2 = L10_2.phone
        L7_2(L8_2, L9_2, L10_2)
      end
      L7_2 = GetConfigJobs
      L8_2 = L4_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = TriggerClientEvent
        L9_2 = "qs-smartphone:SendNewMessageJob"
        L10_2 = -1
        L11_2 = A2_2
        L12_2 = A0_2
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      L8_2 = A1_2
      L9_2 = true
      L8_2(L9_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:SendNewMessageJobhospitalMessage"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:SendNewMessageJobhospitalMessage"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM phone_messages WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
  L5_2 = {}
  L6_2 = A0_2.phone
  L5_2["@phone"] = L6_2
  L6_2 = L2_2.PlayerData
  L6_2 = L6_2.charinfo
  L6_2 = L6_2.phone
  L5_2["@number"] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2[1]
  if L4_2 then
    L4_2 = json
    L4_2 = L4_2.decode
    L5_2 = L3_2[1]
    L5_2 = L5_2.messages
    L4_2 = L4_2(L5_2)
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L4_2
    L7_2 = {}
    L8_2 = A0_2.phone
    L7_2.owner = L8_2
    L8_2 = A0_2.type
    L7_2.type = L8_2
    L8_2 = CheckHtmlInput
    L9_2 = EscapeSqli
    L10_2 = A0_2.message
    L9_2, L10_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.message = L8_2
    L8_2 = os
    L8_2 = L8_2.date
    L9_2 = "%Y-%m-%d %H:%M:%S"
    L8_2 = L8_2(L9_2)
    L7_2.created = L8_2
    L7_2.read = 0
    L5_2(L6_2, L7_2)
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.execute
    L6_2 = "UPDATE phone_messages SET messages = @messages WHERE id = @id"
    L7_2 = {}
    L8_2 = L3_2[1]
    L8_2 = L8_2.id
    L7_2["@id"] = L8_2
    L8_2 = json
    L8_2 = L8_2.encode
    L9_2 = L4_2
    L8_2 = L8_2(L9_2)
    L7_2["@messages"] = L8_2
    L5_2(L6_2, L7_2)
  else
    L4_2 = {}
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L4_2
    L7_2 = {}
    L8_2 = A0_2.phone
    L7_2.owner = L8_2
    L8_2 = A0_2.type
    L7_2.type = L8_2
    L8_2 = CheckHtmlInput
    L9_2 = EscapeSqli
    L10_2 = A0_2.message
    L9_2, L10_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2)
    L7_2.message = L8_2
    L8_2 = os
    L8_2 = L8_2.date
    L9_2 = "%Y-%m-%d %H:%M:%S"
    L8_2 = L8_2(L9_2)
    L7_2.created = L8_2
    L7_2.read = 0
    L5_2(L6_2, L7_2)
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.execute
    L6_2 = "INSERT INTO phone_messages (`phone`, `number`, `created`, `messages`) VALUES(@phone, @number, @created, @messages)"
    L7_2 = {}
    L8_2 = A0_2.phone
    L7_2["@phone"] = L8_2
    L8_2 = L2_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@number"] = L8_2
    L8_2 = os
    L8_2 = L8_2.date
    L9_2 = "%Y-%m-%d %H:%M:%S"
    L8_2 = L8_2(L9_2)
    L7_2["@created"] = L8_2
    L8_2 = CheckHtmlInput
    L9_2 = json
    L9_2 = L9_2.encode
    L10_2 = L4_2
    L9_2, L10_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2)
    L7_2["@messages"] = L8_2
    L5_2(L6_2, L7_2)
  end
  if L2_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "qs-smartphone:refreshiMessageChats"
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.source
    L7_2 = L2_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = TriggerClientEvent
    L5_2 = "qs-smartphone:client:jobMessages"
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.source
    L7_2 = A0_2.phone
    L8_2 = A0_2.message
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:SendNewMessageJob"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:SendNewMessageJob"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * FROM phone_messages WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
  L6_2 = {}
  L7_2 = A0_2.phone
  L6_2["@phone"] = L7_2
  L7_2 = L2_2.PlayerData
  L7_2 = L7_2.charinfo
  L7_2 = L7_2.phone
  L6_2["@number"] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2[1]
  if L5_2 then
    L5_2 = json
    L5_2 = L5_2.decode
    L6_2 = L4_2[1]
    L6_2 = L6_2.messages
    L5_2 = L5_2(L6_2)
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L5_2
    L8_2 = {}
    L9_2 = L3_2.PlayerData
    L9_2 = L9_2.charinfo
    L9_2 = L9_2.phone
    L8_2.owner = L9_2
    L9_2 = A0_2.type
    L8_2.type = L9_2
    L9_2 = CheckHtmlInput
    L10_2 = EscapeSqli
    L11_2 = A0_2.message
    L10_2, L11_2 = L10_2(L11_2)
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.message = L9_2
    L9_2 = os
    L9_2 = L9_2.date
    L10_2 = "%Y-%m-%d %H:%M:%S"
    L9_2 = L9_2(L10_2)
    L8_2.created = L9_2
    L8_2.read = 0
    L6_2(L7_2, L8_2)
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.execute
    L7_2 = "UPDATE phone_messages SET messages = @messages, created = @created WHERE id = @id"
    L8_2 = {}
    L9_2 = L4_2[1]
    L9_2 = L9_2.id
    L8_2["@id"] = L9_2
    L9_2 = CheckHtmlInput
    L10_2 = json
    L10_2 = L10_2.encode
    L11_2 = L5_2
    L10_2, L11_2 = L10_2(L11_2)
    L9_2 = L9_2(L10_2, L11_2)
    L8_2["@messages"] = L9_2
    L9_2 = os
    L9_2 = L9_2.date
    L10_2 = "%Y-%m-%d %H:%M:%S"
    L9_2 = L9_2(L10_2)
    L8_2["@created"] = L9_2
    L6_2(L7_2, L8_2)
  else
    L5_2 = {}
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L5_2
    L8_2 = {}
    L9_2 = L3_2.PlayerData
    L9_2 = L9_2.charinfo
    L9_2 = L9_2.phone
    L8_2.owner = L9_2
    L9_2 = A0_2.type
    L8_2.type = L9_2
    L9_2 = EscapeSqli
    L10_2 = A0_2.message
    L9_2 = L9_2(L10_2)
    L8_2.message = L9_2
    L9_2 = os
    L9_2 = L9_2.date
    L10_2 = "%Y-%m-%d %H:%M:%S"
    L9_2 = L9_2(L10_2)
    L8_2.created = L9_2
    L8_2.read = 0
    L6_2(L7_2, L8_2)
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.execute
    L7_2 = "INSERT INTO phone_messages (`phone`, `number`, `created`, `messages`) VALUES(@phone, @number, @created, @messages)"
    L8_2 = {}
    L9_2 = A0_2.phone
    L8_2["@phone"] = L9_2
    L9_2 = L2_2.PlayerData
    L9_2 = L9_2.charinfo
    L9_2 = L9_2.phone
    L8_2["@number"] = L9_2
    L9_2 = os
    L9_2 = L9_2.date
    L10_2 = "%Y-%m-%d %H:%M:%S"
    L9_2 = L9_2(L10_2)
    L8_2["@created"] = L9_2
    L9_2 = CheckHtmlInput
    L10_2 = json
    L10_2 = L10_2.encode
    L11_2 = L5_2
    L10_2, L11_2 = L10_2(L11_2)
    L9_2 = L9_2(L10_2, L11_2)
    L8_2["@messages"] = L9_2
    L6_2(L7_2, L8_2)
  end
  if L2_2 then
    L5_2 = Config
    L5_2 = L5_2.RequiredPhone
    if L5_2 then
      L5_2 = CheckPhone
      L6_2 = L2_2.PlayerData
      L6_2 = L6_2.source
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:refreshiMessageChats"
        L8_2 = L2_2.PlayerData
        L8_2 = L8_2.source
        L9_2 = L2_2.PlayerData
        L9_2 = L9_2.charinfo
        L9_2 = L9_2.phone
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:client:jobMessages"
        L8_2 = L2_2.PlayerData
        L8_2 = L8_2.source
        L9_2 = A0_2.phone
        L10_2 = A0_2.message
        L6_2(L7_2, L8_2, L9_2, L10_2)
      end
    else
      L5_2 = TriggerClientEvent
      L6_2 = "qs-smartphone:refreshiMessageChats"
      L7_2 = L2_2.PlayerData
      L7_2 = L7_2.source
      L8_2 = L2_2.PlayerData
      L8_2 = L8_2.charinfo
      L8_2 = L8_2.phone
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = TriggerClientEvent
      L6_2 = "qs-smartphone:client:jobMessages"
      L7_2 = L2_2.PlayerData
      L7_2 = L7_2.source
      L8_2 = A0_2.phone
      L9_2 = A0_2.message
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = Config
    L3_2 = L3_2.StoreApps
    L3_2 = L3_2[A1_2]
    if L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Sync
      L3_2 = L3_2.fetchAll
      L4_2 = "select apps from users where identifier = @identifier"
      L5_2 = {}
      L5_2["@identifier"] = L2_2
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L3_2[1]
      if L4_2 then
        L4_2 = L3_2[1]
        L4_2 = L4_2.apps
        if L4_2 then
          L4_2 = L3_2[1]
          L4_2 = L4_2.apps
          if "" ~= L4_2 then
            L4_2 = json
            L4_2 = L4_2.decode
            L5_2 = L3_2[1]
            L5_2 = L5_2.apps
            L4_2 = L4_2(L5_2)
            L5_2 = pairs
            L6_2 = L4_2
            L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
            for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
              L11_2 = L10_2.app
              if L11_2 == A1_2 then
                L11_2 = true
                return L11_2
              end
            end
          end
        end
      end
    else
      L3_2 = true
      return L3_2
    end
    L3_2 = false
    return L3_2
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = Config
      L3_2 = L3_2.StoreApps
      L3_2 = L3_2[A1_2]
      if L3_2 then
        L3_2 = MySQL
        L3_2 = L3_2.Sync
        L3_2 = L3_2.fetchAll
        L4_2 = "select apps from "
        L5_2 = Config
        L5_2 = L5_2.QBCoreFrameworkPlayersTable
        L6_2 = " where citizenid = @citizenid"
        L4_2 = L4_2 .. L5_2 .. L6_2
        L5_2 = {}
        L5_2["@citizenid"] = L2_2
        L3_2 = L3_2(L4_2, L5_2)
        L4_2 = L3_2[1]
        if L4_2 then
          L4_2 = L3_2[1]
          L4_2 = L4_2.apps
          if L4_2 then
            L4_2 = L3_2[1]
            L4_2 = L4_2.apps
            if "" ~= L4_2 then
              L4_2 = json
              L4_2 = L4_2.decode
              L5_2 = L3_2[1]
              L5_2 = L5_2.apps
              L4_2 = L4_2(L5_2)
              L5_2 = pairs
              L6_2 = L4_2
              L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
              for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
                L11_2 = L10_2.app
                if L11_2 == A1_2 then
                  L11_2 = true
                  return L11_2
                end
              end
            end
          end
        end
      else
        L3_2 = true
        return L3_2
      end
      L3_2 = false
      return L3_2
    end
  end
end
checkAppIsDownloaded = L9_1
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:server:AddJobMessage"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:AddJobMessage"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    A0_2.phone = "ambulance"
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM phone_messages WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
    L5_2 = {}
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.phone
    L5_2["@phone"] = L6_2
    L6_2 = A0_2.phone
    L5_2["@number"] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2[1]
    if L4_2 then
      L4_2 = json
      L4_2 = L4_2.decode
      L5_2 = L3_2[1]
      L5_2 = L5_2.messages
      L4_2 = L4_2(L5_2)
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L4_2
      L7_2 = {}
      L8_2 = L2_2.PlayerData
      L8_2 = L8_2.charinfo
      L8_2 = L8_2.phone
      L7_2.owner = L8_2
      L8_2 = A0_2.type
      L7_2.type = L8_2
      L8_2 = EscapeSqli
      L9_2 = A0_2.message
      L8_2 = L8_2(L9_2)
      L7_2.message = L8_2
      L8_2 = os
      L8_2 = L8_2.date
      L9_2 = "%Y-%m-%d %H:%M:%S"
      L8_2 = L8_2(L9_2)
      L7_2.created = L8_2
      L7_2.read = 0
      L5_2(L6_2, L7_2)
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "UPDATE phone_messages SET messages = @messages WHERE id = @id"
      L7_2 = {}
      L8_2 = L3_2[1]
      L8_2 = L8_2.id
      L7_2["@id"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = json
      L9_2 = L9_2.encode
      L10_2 = L4_2
      L9_2, L10_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2)
      L7_2["@messages"] = L8_2
      L5_2(L6_2, L7_2)
    else
      L4_2 = {}
      L5_2 = table
      L5_2 = L5_2.insert
      L6_2 = L4_2
      L7_2 = {}
      L8_2 = L2_2.PlayerData
      L8_2 = L8_2.charinfo
      L8_2 = L8_2.phone
      L7_2.owner = L8_2
      L8_2 = A0_2.type
      L7_2.type = L8_2
      L8_2 = EscapeSqli
      L9_2 = A0_2.message
      L8_2 = L8_2(L9_2)
      L7_2.message = L8_2
      L8_2 = os
      L8_2 = L8_2.date
      L9_2 = "%Y-%m-%d %H:%M:%S"
      L8_2 = L8_2(L9_2)
      L7_2.created = L8_2
      L7_2.read = 0
      L5_2(L6_2, L7_2)
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "INSERT INTO phone_messages (`phone`, `number`, `created`, `messages`) VALUES(@phone, @number, @created, @messages)"
      L7_2 = {}
      L8_2 = L2_2.PlayerData
      L8_2 = L8_2.charinfo
      L8_2 = L8_2.phone
      L7_2["@phone"] = L8_2
      L8_2 = A0_2.phone
      L7_2["@number"] = L8_2
      L8_2 = os
      L8_2 = L8_2.date
      L9_2 = "%Y-%m-%d %H:%M:%S"
      L8_2 = L8_2(L9_2)
      L7_2["@created"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = json
      L9_2 = L9_2.encode
      L10_2 = L4_2
      L9_2, L10_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2)
      L7_2["@messages"] = L8_2
      L5_2(L6_2, L7_2)
    end
    L4_2 = TriggerClientEvent
    L5_2 = "qs-smartphone:client:hospitalMessage"
    L6_2 = -1
    L7_2 = A0_2
    L8_2 = L1_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetMessages"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = {}
  L4_2 = GetPlayerFromIdFramework
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT * FROM phone_messages WHERE phone = @phone OR number = @phone"
    L7_2 = {}
    L8_2 = L4_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@phone"] = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = L5_2[1]
      if L6_2 then
        L6_2 = 1
        L7_2 = #L5_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = L5_2[L9_2]
          L10_2 = L10_2.phone
          L11_2 = L4_2.PlayerData
          L11_2 = L11_2.charinfo
          L11_2 = L11_2.phone
          if L10_2 == L11_2 then
            L10_2 = GetConfigJobsName
            L11_2 = L5_2[L9_2]
            L11_2 = L11_2.number
            L10_2 = L10_2(L11_2)
            if L10_2 then
              L11_2 = json
              L11_2 = L11_2.decode
              L12_2 = L5_2[L9_2]
              L12_2 = L12_2.messages
              L11_2 = L11_2(L12_2)
              L12_2 = MySQL
              L12_2 = L12_2.Sync
              L12_2 = L12_2.fetchAll
              L13_2 = "SELECT name, pp FROM player_contacts WHERE identifier = @identifier AND number = @num"
              L14_2 = {}
              L15_2 = L5_2[L9_2]
              L15_2 = L15_2.number
              L14_2["@num"] = L15_2
              L15_2 = L4_2.PlayerData
              L15_2 = L15_2.charinfo
              L15_2 = L15_2.phone
              L14_2["@identifier"] = L15_2
              L12_2 = L12_2(L13_2, L14_2)
              L13_2 = table
              L13_2 = L13_2.insert
              L14_2 = L3_2
              L15_2 = {}
              L16_2 = next
              L17_2 = L11_2
              L16_2 = L16_2(L17_2)
              if L16_2 then
                L16_2 = #L11_2
                L16_2 = L11_2[L16_2]
                L16_2 = L16_2.created
                if L16_2 then
                  goto lbl_76
                end
              end
              L16_2 = ""
              ::lbl_76::
              L15_2.created = L16_2
              L16_2 = next
              L17_2 = L11_2
              L16_2 = L16_2(L17_2)
              if L16_2 then
                L16_2 = #L11_2
                L16_2 = L11_2[L16_2]
                L16_2 = L16_2.message
                if L16_2 then
                  goto lbl_88
                end
              end
              L16_2 = ""
              ::lbl_88::
              L15_2.message = L16_2
              L15_2.contact_name = L10_2
              L16_2 = L12_2[1]
              if L16_2 then
                L16_2 = L12_2[1]
                L16_2 = L16_2.pp
                if L16_2 then
                  goto lbl_98
                end
              end
              L16_2 = nil
              ::lbl_98::
              L15_2.contact_picture = L16_2
              L16_2 = L5_2[L9_2]
              L16_2 = L16_2.number
              L15_2.phone = L16_2
              L16_2 = L5_2[L9_2]
              L16_2 = L16_2.chat
              L15_2.read = L16_2
              L13_2(L14_2, L15_2)
            else
              L11_2 = json
              L11_2 = L11_2.decode
              L12_2 = L5_2[L9_2]
              L12_2 = L12_2.messages
              L11_2 = L11_2(L12_2)
              L12_2 = MySQL
              L12_2 = L12_2.Sync
              L12_2 = L12_2.fetchAll
              L13_2 = "SELECT name, pp FROM player_contacts WHERE identifier = @identifier AND number = @num"
              L14_2 = {}
              L15_2 = L5_2[L9_2]
              L15_2 = L15_2.number
              L14_2["@num"] = L15_2
              L15_2 = L4_2.PlayerData
              L15_2 = L15_2.charinfo
              L15_2 = L15_2.phone
              L14_2["@identifier"] = L15_2
              L12_2 = L12_2(L13_2, L14_2)
              L13_2 = table
              L13_2 = L13_2.insert
              L14_2 = L3_2
              L15_2 = {}
              L16_2 = next
              L17_2 = L11_2
              L16_2 = L16_2(L17_2)
              if L16_2 then
                L16_2 = #L11_2
                L16_2 = L11_2[L16_2]
                L16_2 = L16_2.created
                if L16_2 then
                  goto lbl_142
                end
              end
              L16_2 = ""
              ::lbl_142::
              L15_2.created = L16_2
              L16_2 = next
              L17_2 = L11_2
              L16_2 = L16_2(L17_2)
              if L16_2 then
                L16_2 = #L11_2
                L16_2 = L11_2[L16_2]
                L16_2 = L16_2.message
                if L16_2 then
                  goto lbl_154
                end
              end
              L16_2 = ""
              ::lbl_154::
              L15_2.message = L16_2
              L16_2 = L12_2[1]
              if L16_2 then
                L16_2 = L12_2[1]
                L16_2 = L16_2.name
                if L16_2 then
                  goto lbl_163
                end
              end
              L16_2 = nil
              ::lbl_163::
              L15_2.contact_name = L16_2
              L16_2 = L12_2[1]
              if L16_2 then
                L16_2 = L12_2[1]
                L16_2 = L16_2.pp
                if L16_2 then
                  goto lbl_172
                end
              end
              L16_2 = nil
              ::lbl_172::
              L15_2.contact_picture = L16_2
              L16_2 = L5_2[L9_2]
              L16_2 = L16_2.number
              L15_2.phone = L16_2
              L16_2 = L5_2[L9_2]
              L16_2 = L16_2.chat
              L15_2.read = L16_2
              L13_2(L14_2, L15_2)
            end
          else
            L10_2 = L5_2[L9_2]
            L10_2 = L10_2.number
            L11_2 = L4_2.PlayerData
            L11_2 = L11_2.charinfo
            L11_2 = L11_2.phone
            if L10_2 == L11_2 then
              L10_2 = GetConfigJobsName
              L11_2 = L5_2[L9_2]
              L11_2 = L11_2.phone
              L10_2 = L10_2(L11_2)
              if L10_2 then
                L11_2 = json
                L11_2 = L11_2.decode
                L12_2 = L5_2[L9_2]
                L12_2 = L12_2.messages
                L11_2 = L11_2(L12_2)
                L12_2 = MySQL
                L12_2 = L12_2.Sync
                L12_2 = L12_2.fetchAll
                L13_2 = "SELECT name FROM player_contacts WHERE identifier = @identifier AND number = @num"
                L14_2 = {}
                L15_2 = L5_2[L9_2]
                L15_2 = L15_2.phone
                L14_2["@num"] = L15_2
                L15_2 = L4_2.PlayerData
                L15_2 = L15_2.charinfo
                L15_2 = L15_2.phone
                L14_2["@identifier"] = L15_2
                L12_2 = L12_2(L13_2, L14_2)
                L13_2 = table
                L13_2 = L13_2.insert
                L14_2 = L3_2
                L15_2 = {}
                L16_2 = next
                L17_2 = L11_2
                L16_2 = L16_2(L17_2)
                if L16_2 then
                  L16_2 = #L11_2
                  L16_2 = L11_2[L16_2]
                  L16_2 = L16_2.created
                  if L16_2 then
                    goto lbl_229
                  end
                end
                L16_2 = ""
                ::lbl_229::
                L15_2.created = L16_2
                L16_2 = next
                L17_2 = L11_2
                L16_2 = L16_2(L17_2)
                if L16_2 then
                  L16_2 = #L11_2
                  L16_2 = L11_2[L16_2]
                  L16_2 = L16_2.message
                  if L16_2 then
                    goto lbl_241
                  end
                end
                L16_2 = ""
                ::lbl_241::
                L15_2.message = L16_2
                L15_2.contact_name = L10_2
                L16_2 = L5_2[L9_2]
                L16_2 = L16_2.phone
                L15_2.phone = L16_2
                L16_2 = L5_2[L9_2]
                L16_2 = L16_2.chat
                L15_2.read = L16_2
                L13_2(L14_2, L15_2)
              else
                L11_2 = json
                L11_2 = L11_2.decode
                L12_2 = L5_2[L9_2]
                L12_2 = L12_2.messages
                L11_2 = L11_2(L12_2)
                L12_2 = MySQL
                L12_2 = L12_2.Sync
                L12_2 = L12_2.fetchAll
                L13_2 = "SELECT name FROM player_contacts WHERE identifier = @identifier AND number = @num"
                L14_2 = {}
                L15_2 = L5_2[L9_2]
                L15_2 = L15_2.phone
                L14_2["@num"] = L15_2
                L15_2 = L4_2.PlayerData
                L15_2 = L15_2.charinfo
                L15_2 = L15_2.phone
                L14_2["@identifier"] = L15_2
                L12_2 = L12_2(L13_2, L14_2)
                L13_2 = table
                L13_2 = L13_2.insert
                L14_2 = L3_2
                L15_2 = {}
                L16_2 = next
                L17_2 = L11_2
                L16_2 = L16_2(L17_2)
                if L16_2 then
                  L16_2 = #L11_2
                  L16_2 = L11_2[L16_2]
                  L16_2 = L16_2.created
                  if L16_2 then
                    goto lbl_286
                  end
                end
                L16_2 = ""
                ::lbl_286::
                L15_2.created = L16_2
                L16_2 = next
                L17_2 = L11_2
                L16_2 = L16_2(L17_2)
                if L16_2 then
                  L16_2 = #L11_2
                  L16_2 = L11_2[L16_2]
                  L16_2 = L16_2.message
                  if L16_2 then
                    goto lbl_298
                  end
                end
                L16_2 = ""
                ::lbl_298::
                L15_2.message = L16_2
                L16_2 = L12_2[1]
                if L16_2 then
                  L16_2 = L12_2[1]
                  L16_2 = L16_2.name
                  if L16_2 then
                    goto lbl_307
                  end
                end
                L16_2 = nil
                ::lbl_307::
                L15_2.contact_name = L16_2
                L16_2 = L5_2[L9_2]
                L16_2 = L16_2.phone
                L15_2.phone = L16_2
                L16_2 = L5_2[L9_2]
                L16_2 = L16_2.chat
                L15_2.read = L16_2
                L13_2(L14_2, L15_2)
              end
            end
          end
        end
        if L3_2 then
          L6_2 = table
          L6_2 = L6_2.sort
          L7_2 = L3_2
          function L8_2(A0_3, A1_3)
            local L2_3, L3_3
            L2_3 = A0_3.created
            L3_3 = A1_3.created
            L2_3 = L2_3 > L3_3
            return L2_3
          end
          L6_2(L7_2, L8_2)
        end
      end
    end
    L6_2 = A1_2
    L7_2 = L3_2
    L6_2(L7_2)
  else
    L5_2 = A1_2
    L6_2 = false
    L5_2(L6_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:AddAccountTwitter"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A2_2.username
    if nil ~= L4_2 then
      L4_2 = A2_2.phone
      if nil ~= L4_2 then
        L4_2 = A2_2.password
        if nil ~= L4_2 then
          L4_2 = MySQL
          L4_2 = L4_2.Sync
          L4_2 = L4_2.fetchAll
          L5_2 = "SELECT * FROM twitter_account WHERE phone = @phone"
          L6_2 = {}
          L7_2 = L3_2.PlayerData
          L7_2 = L7_2.charinfo
          L7_2 = L7_2.phone
          L6_2["@phone"] = L7_2
          L4_2 = L4_2(L5_2, L6_2)
          L5_2 = L4_2[1]
          if nil == L5_2 then
            L5_2 = MySQL
            L5_2 = L5_2.Sync
            L5_2 = L5_2.execute
            L6_2 = "INSERT INTO twitter_account (`id`, `name`, `phone`, `username`, `password`, `avatar`) VALUES(@user_id, @name, @phone, @username, @password, @avatar)"
            L7_2 = {}
            L8_2 = L3_2.identifier
            L7_2["@user_id"] = L8_2
            L8_2 = L3_2.PlayerData
            L8_2 = L8_2.charinfo
            L8_2 = L8_2.firstname
            L9_2 = " "
            L10_2 = L3_2.PlayerData
            L10_2 = L10_2.charinfo
            L10_2 = L10_2.lastname
            L8_2 = L8_2 .. L9_2 .. L10_2
            L7_2["@name"] = L8_2
            L8_2 = A2_2.phone
            L7_2["@phone"] = L8_2
            L8_2 = CheckHtmlInput
            L9_2 = EscapeSqli
            L10_2 = A2_2.username
            L9_2, L10_2 = L9_2(L10_2)
            L8_2 = L8_2(L9_2, L10_2)
            L7_2["@username"] = L8_2
            L8_2 = EscapeSqli
            L9_2 = A2_2.password
            L8_2 = L8_2(L9_2)
            L7_2["@password"] = L8_2
            L7_2["@avatar"] = "default.png"
            L5_2(L6_2, L7_2)
            L5_2 = A1_2
            L6_2 = true
            L5_2(L6_2)
          else
            L5_2 = A1_2
            L6_2 = "used"
            L5_2(L6_2)
          end
      end
    end
  end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterServerEvent
L10_1 = "qs-smartphone:MentionedPlayer"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:MentionedPlayer"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = A0_2
  L4_2 = TriggerClientEvent
  L5_2 = "qs-smartphone:client:GetMentioned"
  L6_2 = L3_2
  L7_2 = A1_2
  L8_2 = A2_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetHashtags"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM twitter_hashtags ORDER BY id DESC"
  L5_2 = {}
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 1
  L5_2 = #L3_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = MySQL
    L8_2 = L8_2.Sync
    L8_2 = L8_2.fetchAll
    L9_2 = "SELECT T.*, A.name, A.avatar FROM twitter_tweets AS T LEFT JOIN twitter_account AS A ON A.username = T.username WHERE T.hashtags = @hashtag"
    L10_2 = {}
    L11_2 = L3_2[L7_2]
    L11_2 = L11_2.name
    L10_2["@hashtag"] = L11_2
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = L8_2[1]
    if L9_2 then
      L9_2 = L3_2[L7_2]
      L9_2.messages = L8_2
      L9_2 = L3_2[L7_2]
      L10_2 = L8_2.length
      L9_2.count = L10_2
    end
    L9_2 = L3_2[L7_2]
    L10_2 = L3_2[L7_2]
    L10_2 = L10_2.name
    L11_2 = L10_2
    L10_2 = L10_2.gsub
    L12_2 = "#"
    L13_2 = ""
    L10_2 = L10_2(L11_2, L12_2, L13_2)
    L9_2.name = L10_2
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetMentionedTweets"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = {}
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * FROM twitter_account WHERE phone = @phone"
  L6_2 = {}
  L7_2 = L3_2.PlayerData
  L7_2 = L7_2.charinfo
  L7_2 = L7_2.phone
  L6_2["@phone"] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2[1]
  if L5_2 then
    L5_2 = L4_2[1]
    L5_2 = L5_2.username
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT * FROM twitter_mentions WHERE username = ? ORDER BY id DESC"
      L7_2 = {}
      L8_2 = L4_2[1]
      L8_2 = L8_2.username
      L7_2[1] = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = L5_2[1]
      if L6_2 then
        L6_2 = MySQL
        L6_2 = L6_2.Sync
        L6_2 = L6_2.fetchAll
        L7_2 = "SELECT * FROM twitter_tweets ORDER BY id DESC"
        L6_2 = L6_2(L7_2)
        L7_2 = 1
        L8_2 = #L5_2
        L9_2 = 1
        for L10_2 = L7_2, L8_2, L9_2 do
          L11_2 = 1
          L12_2 = #L6_2
          L13_2 = 1
          for L14_2 = L11_2, L12_2, L13_2 do
            L15_2 = L6_2[L14_2]
            L15_2 = L15_2.id
            L16_2 = L5_2[L10_2]
            L16_2 = L16_2.id_tweet
            if L15_2 == L16_2 then
              L15_2 = MySQL
              L15_2 = L15_2.Sync
              L15_2 = L15_2.fetchAll
              L16_2 = "SELECT * FROM twitter_account WHERE username = @username"
              L17_2 = {}
              L18_2 = L6_2[L14_2]
              L18_2 = L18_2.username
              L17_2["@username"] = L18_2
              L15_2 = L15_2(L16_2, L17_2)
              L15_2 = L15_2[1]
              L16_2 = table
              L16_2 = L16_2.insert
              L17_2 = L2_2
              L18_2 = {}
              L19_2 = L6_2[L14_2]
              L19_2 = L19_2.username
              L18_2.username = L19_2
              L19_2 = L5_2[L10_2]
              L19_2 = L19_2.created
              L18_2.created = L19_2
              L19_2 = L15_2.name
              L18_2.name = L19_2
              L19_2 = L15_2.avatar
              L18_2.avatar = L19_2
              L19_2 = L6_2[L14_2]
              L19_2 = L19_2.message
              L18_2.message = L19_2
              L19_2 = L6_2[L14_2]
              L19_2 = L19_2.hashtags
              L18_2.hashtags = L19_2
              L19_2 = L6_2[L14_2]
              L19_2 = L19_2.mentions
              L18_2.mentions = L19_2
              L19_2 = L6_2[L14_2]
              L19_2 = L19_2.image
              L18_2.image = L19_2
              L16_2(L17_2, L18_2)
            end
          end
        end
      end
    end
  end
  L5_2 = A1_2
  L6_2 = L2_2
  L5_2(L6_2)
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetSelfTweets"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  if L2_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM twitter_account WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L2_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = L4_2[1]
      if L5_2 then
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.fetchAll
        L6_2 = "SELECT * FROM twitter_tweets WHERE username = ? ORDER BY id DESC"
        L7_2 = {}
        L8_2 = L4_2[1]
        L8_2 = L8_2.username
        L7_2[1] = L8_2
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = 1
        L7_2 = #L5_2
        L8_2 = 1
        for L9_2 = L6_2, L7_2, L8_2 do
          L10_2 = table
          L10_2 = L10_2.insert
          L11_2 = L3_2
          L12_2 = {}
          L13_2 = L5_2[L9_2]
          L13_2 = L13_2.id
          L12_2.id = L13_2
          L13_2 = L5_2[L9_2]
          L13_2 = L13_2.username
          L12_2.username = L13_2
          L13_2 = L5_2[L9_2]
          L13_2 = L13_2.created
          L12_2.created = L13_2
          L13_2 = L4_2[1]
          L13_2 = L13_2.name
          L12_2.name = L13_2
          L13_2 = L4_2[1]
          L13_2 = L13_2.avatar
          L12_2.avatar = L13_2
          L13_2 = L5_2[L9_2]
          L13_2 = L13_2.message
          L12_2.message = L13_2
          L13_2 = L5_2[L9_2]
          L13_2 = L13_2.hashtags
          L12_2.hashtags = L13_2
          L13_2 = L5_2[L9_2]
          L13_2 = L13_2.mentions
          L12_2.mentions = L13_2
          L13_2 = L5_2[L9_2]
          L13_2 = L13_2.image
          L12_2.image = L13_2
          L10_2(L11_2, L12_2)
        end
      end
    end
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetTweets"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT * FROM twitter_tweets ORDER BY created DESC LIMIT 25"
  L4_2 = {}
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = 1
    L2_3 = #A0_3
    L3_3 = 1
    for L4_3 = L1_3, L2_3, L3_3 do
      L5_3 = MySQL
      L5_3 = L5_3.Sync
      L5_3 = L5_3.fetchAll
      L6_3 = "SELECT * FROM twitter_account WHERE username = @username LIMIT 1"
      L7_3 = {}
      L8_3 = A0_3[L4_3]
      L8_3 = L8_3.username
      L7_3.username = L8_3
      L5_3 = L5_3(L6_3, L7_3)
      if L5_3 then
        L6_3 = L5_3[1]
        if L6_3 then
          L6_3 = A0_3[L4_3]
          L7_3 = L5_3[1]
          L7_3 = L7_3.avatar
          L6_3.avatar = L7_3
          L6_3 = A0_3[L4_3]
          L7_3 = L5_3[1]
          L7_3 = L7_3.name
          L6_3.name = L7_3
          L6_3 = A0_3[L4_3]
          L6_3 = L6_3.likes
          if L6_3 then
            L6_3 = A0_3[L4_3]
            L7_3 = json
            L7_3 = L7_3.decode
            L8_3 = A0_3[L4_3]
            L8_3 = L8_3.likes
            L7_3 = L7_3(L8_3)
            L6_3.likes = L7_3
            L6_3 = A0_3[L4_3]
            L7_3 = A0_3[L4_3]
            L7_3 = L7_3.likes
            L7_3 = #L7_3
            L6_3.totalLikes = L7_3
            L6_3 = A0_3[L4_3]
            L7_3 = IsLiked
            L8_3 = A0_3[L4_3]
            L8_3 = L8_3.likes
            L9_3 = A0_2
            L7_3 = L7_3(L8_3, L9_3)
            L6_3.Iliked = L7_3
          end
        end
      end
    end
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2, L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:LikeTweet"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.fetchAll
  L5_2 = "select * from twitter_tweets where id = ? LIMIT 1"
  L6_2 = {}
  L7_2 = A2_2.id
  L6_2[1] = L7_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 then
      L1_3 = A0_3[1]
      if L1_3 then
        L1_3 = {}
        L2_3 = A0_3[1]
        L2_3 = L2_3.likes
        if L2_3 then
          L2_3 = json
          L2_3 = L2_3.decode
          L3_3 = A0_3[1]
          L3_3 = L3_3.likes
          L2_3 = L2_3(L3_3)
          L1_3 = L2_3
        end
        L2_3 = IsLiked
        L3_3 = L1_3
        L4_3 = A0_2
        L2_3 = L2_3(L3_3, L4_3)
        if L2_3 then
          L3_3 = table
          L3_3 = L3_3.remove
          L4_3 = L1_3
          L5_3 = L2_3
          L3_3(L4_3, L5_3)
        else
          L3_3 = table
          L3_3 = L3_3.insert
          L4_3 = L1_3
          L5_3 = L3_2.PlayerData
          L5_3 = L5_3.charinfo
          L5_3 = L5_3.phone
          L3_3(L4_3, L5_3)
        end
        L3_3 = MySQL
        L3_3 = L3_3.Sync
        L3_3 = L3_3.execute
        L4_3 = "update twitter_tweets set likes = ? where id = ?"
        L5_3 = {}
        L6_3 = json
        L6_3 = L6_3.encode
        L7_3 = L1_3
        L6_3 = L6_3(L7_3)
        L7_3 = A2_2.id
        L5_3[1] = L6_3
        L5_3[2] = L7_3
        L3_3(L4_3, L5_3)
        L3_3 = A1_2
        L4_3 = true
        L3_3(L4_3)
      end
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:LikeInsta"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.fetchAll
  L5_2 = "select * from instagram_posts where id = ?"
  L6_2 = {}
  L7_2 = A2_2.id
  L6_2[1] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2[1]
  if L5_2 then
    L5_2 = {}
    L6_2 = L4_2[1]
    L6_2 = L6_2.likes
    if L6_2 then
      L6_2 = L4_2[1]
      L6_2 = L6_2.likes
      if "" ~= L6_2 then
        L6_2 = json
        L6_2 = L6_2.decode
        L7_2 = L4_2[1]
        L7_2 = L7_2.likes
        L6_2 = L6_2(L7_2)
        L5_2 = L6_2
      end
    end
    L6_2 = IsLiked
    L7_2 = L5_2
    L8_2 = A0_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L7_2 = table
      L7_2 = L7_2.remove
      L8_2 = L5_2
      L9_2 = L6_2
      L7_2(L8_2, L9_2)
    else
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L5_2
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L7_2(L8_2, L9_2)
    end
    L7_2 = MySQL
    L7_2 = L7_2.Sync
    L7_2 = L7_2.execute
    L8_2 = "update instagram_posts set likes = ? where id = ?"
    L9_2 = {}
    L10_2 = json
    L10_2 = L10_2.encode
    L11_2 = L5_2
    L10_2 = L10_2(L11_2)
    L11_2 = A2_2.id
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L7_2(L8_2, L9_2)
    L7_2 = A1_2
    L8_2 = true
    L7_2(L8_2)
  end
end
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L2_2.PlayerData
    L9_2 = L9_2.charinfo
    L9_2 = L9_2.phone
    if L8_2 == L9_2 then
      return L7_2
    end
  end
  L3_2 = false
  return L3_2
end
IsLiked = L9_1
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:server:SaveTwitPP"
L9_1(L10_1)
L9_1 = AddEventHandler
L10_1 = "qs-smartphone:server:SaveTwitPP"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.execute
    L4_2 = "UPDATE twitter_account SET avatar = @avatar WHERE phone = @phone"
    L5_2 = {}
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.phone
    L5_2["@phone"] = L6_2
    L6_2 = CheckHtmlInput
    L7_2 = EscapeSqli
    L8_2 = A0_2
    L7_2, L8_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2)
    L5_2["@avatar"] = L6_2
    L3_2(L4_2, L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:PostNewTweet"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM twitter_account WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "INSERT INTO twitter_tweets (`username`, `message`, `hashtags`, `mentions`, `image`, `created`) VALUES(@username, @message, @hashtags, @mentions, @image, @created)"
      L7_2 = {}
      L8_2 = CheckHtmlInput
      L9_2 = EscapeSqli
      L10_2 = L4_2[1]
      L10_2 = L10_2.username
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2["@username"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = EscapeSqli
      L10_2 = A2_2.message
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2["@message"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = EscapeSqli
      L10_2 = A2_2.hashtags
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2["@hashtags"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = EscapeSqli
      L10_2 = A2_2.mentions
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
      L7_2["@mentions"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = A2_2.image
      L8_2 = L8_2(L9_2)
      L7_2["@image"] = L8_2
      L8_2 = os
      L8_2 = L8_2.date
      L9_2 = "%Y-%m-%d %H:%M:%S"
      L8_2 = L8_2(L9_2)
      L7_2["@created"] = L8_2
      L5_2(L6_2, L7_2)
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT * FROM twitter_hashtags WHERE name = @name"
      L7_2 = {}
      L8_2 = A2_2.hashtags
      L7_2["@name"] = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L5_2 = L5_2[1]
      if nil == L5_2 then
        L5_2 = A2_2.hashtags
        if L5_2 then
          L5_2 = A2_2.hashtags
          if "" ~= L5_2 then
            L5_2 = MySQL
            L5_2 = L5_2.Sync
            L5_2 = L5_2.execute
            L6_2 = "INSERT INTO twitter_hashtags (`name`, `created`) VALUES(@name, @created);"
            L7_2 = {}
            L8_2 = CheckHtmlInput
            L9_2 = EscapeSqli
            L10_2 = A2_2.hashtags
            L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
            L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
            L7_2["@name"] = L8_2
            L8_2 = os
            L8_2 = L8_2.date
            L9_2 = "%Y-%m-%d %H:%M:%S"
            L8_2 = L8_2(L9_2)
            L7_2["@created"] = L8_2
            L5_2(L6_2, L7_2)
          end
        end
      end
      L5_2 = A2_2.mentions
      if L5_2 then
        L5_2 = A2_2.mentions
        if "" ~= L5_2 then
          L5_2 = MySQL
          L5_2 = L5_2.Sync
          L5_2 = L5_2.fetchAll
          L6_2 = "SELECT * FROM twitter_tweets ORDER BY id DESC LIMIT 1"
          L7_2 = {}
          L5_2 = L5_2(L6_2, L7_2)
          L6_2 = MySQL
          L6_2 = L6_2.Sync
          L6_2 = L6_2.execute
          L7_2 = "INSERT INTO twitter_mentions (`id_tweet`, `username`, `mentioned`, `created`) VALUES(@id_tweet, @username, @mentioned, @created)"
          L8_2 = {}
          L9_2 = L5_2[1]
          L9_2 = L9_2.id
          L8_2["@id_tweet"] = L9_2
          L9_2 = CheckHtmlInput
          L10_2 = EscapeSqli
          L11_2 = L4_2[1]
          L11_2 = L11_2.username
          L10_2, L11_2, L12_2 = L10_2(L11_2)
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L8_2["@username"] = L9_2
          L9_2 = tostring
          L10_2 = A2_2.mentions
          L9_2 = L9_2(L10_2)
          L10_2 = L9_2
          L9_2 = L9_2.gsub
          L11_2 = "@"
          L12_2 = ""
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          L8_2["@mentioned"] = L9_2
          L9_2 = os
          L9_2 = L9_2.date
          L10_2 = "%Y-%m-%d %H:%M:%S"
          L9_2 = L9_2(L10_2)
          L8_2["@created"] = L9_2
          L6_2(L7_2, L8_2)
        end
      end
      L5_2 = A1_2
      L6_2 = true
      L5_2(L6_2)
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetProfileInstagram"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM instagram_account WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT * FROM instagram_account WHERE username = @username"
      L7_2 = {}
      L7_2["@username"] = A2_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT * FROM instagram_followers WHERE username = @username AND followed = @followed"
      L8_2 = {}
      L9_2 = L4_2[1]
      L9_2 = L9_2.username
      L8_2["@username"] = L9_2
      L9_2 = L5_2[1]
      L9_2 = L9_2.username
      L8_2["@followed"] = L9_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = false
      if L6_2 then
        L8_2 = L6_2[1]
        if L8_2 then
          L7_2 = true
        end
      end
      L8_2 = A1_2
      L9_2 = {}
      L10_2 = MySQL
      L10_2 = L10_2.Sync
      L10_2 = L10_2.fetchAll
      L11_2 = "SELECT COUNT(*) AS total_follows FROM instagram_followers WHERE followed = @username"
      L12_2 = {}
      L13_2 = L5_2[1]
      L13_2 = L13_2.username
      L12_2["@username"] = L13_2
      L10_2 = L10_2(L11_2, L12_2)
      L10_2 = L10_2[1]
      L10_2 = L10_2.total_follows
      L9_2.total_follows = L10_2
      L10_2 = MySQL
      L10_2 = L10_2.Sync
      L10_2 = L10_2.fetchAll
      L11_2 = "SELECT COUNT(*) AS total_followeds FROM instagram_followers WHERE username = @username"
      L12_2 = {}
      L13_2 = L5_2[1]
      L13_2 = L13_2.username
      L12_2["@username"] = L13_2
      L10_2 = L10_2(L11_2, L12_2)
      L10_2 = L10_2[1]
      L10_2 = L10_2.total_followeds
      L9_2.total_followeds = L10_2
      L10_2 = MySQL
      L10_2 = L10_2.Sync
      L10_2 = L10_2.fetchAll
      L11_2 = "SELECT COUNT(*) AS total_posts FROM instagram_posts WHERE username = @username LIMIT 60"
      L12_2 = {}
      L13_2 = L5_2[1]
      L13_2 = L13_2.username
      L12_2["@username"] = L13_2
      L10_2 = L10_2(L11_2, L12_2)
      L10_2 = L10_2[1]
      L10_2 = L10_2.total_posts
      L9_2.total_posts = L10_2
      L10_2 = MySQL
      L10_2 = L10_2.Sync
      L10_2 = L10_2.fetchAll
      L11_2 = "SELECT * FROM instagram_posts WHERE username = @username ORDER BY created DESC LIMIT 60"
      L12_2 = {}
      L13_2 = L5_2[1]
      L13_2 = L13_2.username
      L12_2["@username"] = L13_2
      L10_2 = L10_2(L11_2, L12_2)
      L9_2.posts = L10_2
      L10_2 = L5_2[1]
      L9_2.account = L10_2
      L9_2.followed = L7_2
      L8_2(L9_2)
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:AddPostInsta"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM instagram_account WHERE phone = @id"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@id"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "INSERT INTO instagram_posts (`username`, `image`, `description`, `location`, `filter`, `created`) VALUES(@username, @image, @description, @location, @filter, @created);"
      L7_2 = {}
      L8_2 = L4_2[1]
      L8_2 = L8_2.username
      L7_2["@username"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = A2_2.image
      L8_2 = L8_2(L9_2)
      L7_2["@image"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = EscapeSqli
      L10_2 = A2_2.description
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L7_2["@description"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = EscapeSqli
      L10_2 = A2_2.location
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L7_2["@location"] = L8_2
      L8_2 = A2_2.filter
      L7_2["@filter"] = L8_2
      L8_2 = os
      L8_2 = L8_2.date
      L9_2 = "%Y-%m-%d %H:%M:%S"
      L8_2 = L8_2(L9_2)
      L7_2["@created"] = L8_2
      L5_2(L6_2, L7_2)
      L5_2 = A1_2
      L6_2 = true
      L5_2(L6_2)
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT * FROM instagram_followers WHERE followed = @followed"
      L7_2 = {}
      L8_2 = L4_2[1]
      L8_2 = L8_2.username
      L7_2["@followed"] = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L6_2 = TriggerClientEvent
      L7_2 = "qs-smartphone:UpdateInstagramPosts"
      L8_2 = A0_2
      L6_2(L7_2, L8_2)
      if L5_2 then
        L6_2 = L5_2[1]
        if L6_2 then
          L6_2 = pairs
          L7_2 = L5_2
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
          for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
            L12_2 = MySQL
            L12_2 = L12_2.Sync
            L12_2 = L12_2.fetchAll
            L13_2 = "SELECT * FROM instagram_account WHERE username = @id LIMIT 1"
            L14_2 = {}
            L15_2 = L11_2.username
            L14_2["@id"] = L15_2
            L12_2 = L12_2(L13_2, L14_2)
            if L12_2 then
              L13_2 = L12_2[1]
              if L13_2 then
                L13_2 = GetPlayerFromPhone
                L14_2 = L12_2[1]
                L14_2 = L14_2.phone
                L13_2 = L13_2(L14_2)
                if L13_2 then
                  L14_2 = TriggerClientEvent
                  L15_2 = "qs-smartphone:UpdateInstagramPosts"
                  L16_2 = L13_2.PlayerData
                  L16_2 = L16_2.source
                  L14_2(L15_2, L16_2)
                end
              end
            end
          end
        end
      end
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetPostsInstagram"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = {}
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT * FROM instagram_account WHERE phone = @id"
    L7_2 = {}
    L8_2 = L3_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@id"] = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2[1]
    if L6_2 then
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT * FROM instagram_followers WHERE username = ?"
      L8_2 = {}
      L9_2 = L5_2[1]
      L9_2 = L9_2.username
      L8_2[1] = L9_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L6_2
      L9_2 = {}
      L10_2 = L5_2[1]
      L10_2 = L10_2.username
      L9_2.followed = L10_2
      L7_2(L8_2, L9_2)
      L7_2 = 1
      L8_2 = #L6_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = MySQL
        L11_2 = L11_2.Sync
        L11_2 = L11_2.fetchAll
        L12_2 = "SELECT * FROM instagram_posts WHERE username = ? ORDER BY created DESC"
        L13_2 = {}
        L14_2 = L6_2[L10_2]
        L14_2 = L14_2.followed
        L13_2[1] = L14_2
        L11_2 = L11_2(L12_2, L13_2)
        if L11_2 then
          L12_2 = L11_2[1]
          if L12_2 then
            L12_2 = 1
            L13_2 = #L11_2
            L14_2 = 1
            for L15_2 = L12_2, L13_2, L14_2 do
              L16_2 = L11_2[L15_2]
              L16_2 = L16_2.username
              L17_2 = L5_2[1]
              L17_2 = L17_2.username
              if L16_2 == L17_2 then
                L16_2 = L11_2[L15_2]
                L17_2 = L5_2[1]
                L17_2 = L17_2.avatar
                L16_2.avatar = L17_2
                L16_2 = table
                L16_2 = L16_2.insert
                L17_2 = L4_2
                L18_2 = L11_2[L15_2]
                L16_2(L17_2, L18_2)
              else
                L16_2 = MySQL
                L16_2 = L16_2.Sync
                L16_2 = L16_2.fetchAll
                L17_2 = "SELECT * FROM instagram_account WHERE username = ?"
                L18_2 = {}
                L19_2 = L11_2[L15_2]
                L19_2 = L19_2.username
                L18_2[1] = L19_2
                L16_2 = L16_2(L17_2, L18_2)
                if L16_2 then
                  L17_2 = L16_2[1]
                  if L17_2 then
                    L17_2 = L16_2[1]
                    L17_2 = L17_2.avatar
                    if L17_2 then
                      L17_2 = L11_2[L15_2]
                      L18_2 = L16_2[1]
                      L18_2 = L18_2.avatar
                      L17_2.avatar = L18_2
                      L17_2 = table
                      L17_2 = L17_2.insert
                      L18_2 = L4_2
                      L19_2 = L11_2[L15_2]
                      L17_2(L18_2, L19_2)
                    else
                      L17_2 = L11_2[L15_2]
                      L17_2.avatar = "default.png"
                      L17_2 = table
                      L17_2 = L17_2.insert
                      L18_2 = L4_2
                      L19_2 = L11_2[L15_2]
                      L17_2(L18_2, L19_2)
                    end
                end
                else
                  L17_2 = L11_2[L15_2]
                  L17_2.avatar = "default.png"
                  L17_2 = table
                  L17_2 = L17_2.insert
                  L18_2 = L4_2
                  L19_2 = L11_2[L15_2]
                  L17_2(L18_2, L19_2)
                end
              end
            end
          end
        end
      end
      L7_2 = table
      L7_2 = L7_2.sort
      L8_2 = L4_2
      function L9_2(A0_3, A1_3)
        local L2_3, L3_3
        L2_3 = A0_3.created
        L3_3 = A1_3.created
        L2_3 = L2_3 > L3_3
        return L2_3
      end
      L7_2(L8_2, L9_2)
      L7_2 = 0
      L8_2 = {}
      L9_2 = 1
      L10_2 = 20
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L4_2[L12_2]
        if L13_2 then
          L7_2 = L7_2 + 1
          L13_2 = L4_2[L12_2]
          L8_2[L12_2] = L13_2
          L13_2 = L8_2[L12_2]
          L13_2 = L13_2.likes
          if L13_2 then
            L13_2 = L8_2[L12_2]
            L13_2 = L13_2.likes
            if "" ~= L13_2 then
              L13_2 = L8_2[L12_2]
              L14_2 = json
              L14_2 = L14_2.decode
              L15_2 = L8_2[L12_2]
              L15_2 = L15_2.likes
              L14_2 = L14_2(L15_2)
              L13_2.likes = L14_2
              L13_2 = L8_2[L12_2]
              L14_2 = L8_2[L12_2]
              L14_2 = L14_2.likes
              L14_2 = #L14_2
              L13_2.totalLikes = L14_2
              L13_2 = L8_2[L12_2]
              L14_2 = IsLiked
              L15_2 = L8_2[L12_2]
              L15_2 = L15_2.likes
              L16_2 = A0_2
              L14_2 = L14_2(L15_2, L16_2)
              L13_2.Iliked = L14_2
            end
          end
        end
        if L7_2 >= 20 then
          break
        end
      end
      L9_2 = A1_2
      L10_2 = L8_2
      L9_2(L10_2)
    else
      L6_2 = A1_2
      L7_2 = false
      L6_2(L7_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:FollowUserInsta"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM instagram_account WHERE phone = @id"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@id"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT * FROM instagram_followers WHERE username = @username AND followed = @followed"
      L7_2 = {}
      L8_2 = L4_2[1]
      L8_2 = L8_2.username
      L7_2["@username"] = L8_2
      L8_2 = A2_2.username
      L7_2["@followed"] = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L5_2 = L5_2[1]
      if nil ~= L5_2 then
        L5_2 = A1_2
        L6_2 = false
        L5_2(L6_2)
      else
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "INSERT INTO instagram_followers (`username`, `followed`) VALUES (@username, @followed);"
        L7_2 = {}
        L8_2 = CheckHtmlInput
        L9_2 = EscapeSqli
        L10_2 = L4_2[1]
        L10_2 = L10_2.username
        L9_2, L10_2 = L9_2(L10_2)
        L8_2 = L8_2(L9_2, L10_2)
        L7_2["@username"] = L8_2
        L8_2 = A2_2.username
        L7_2["@followed"] = L8_2
        L5_2(L6_2, L7_2)
        L5_2 = A1_2
        L6_2 = true
        L5_2(L6_2)
      end
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetProfilesInstagram"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM instagram_account WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = L4_2[1]
      if L5_2 then
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.fetchAll
        L6_2 = "SELECT * FROM instagram_account WHERE username != @username ORDER BY id DESC LIMIT 30"
        L7_2 = {}
        L8_2 = L4_2[1]
        L8_2 = L8_2.username
        L7_2["@username"] = L8_2
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = A1_2
        L7_2 = L5_2
        L6_2(L7_2)
      end
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetProfilesInstagramLike"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A2_2.search
    if L4_2 then
      L4_2 = MySQL
      L4_2 = L4_2.Sync
      L4_2 = L4_2.fetchAll
      L5_2 = "SELECT * FROM instagram_account WHERE phone = @phone"
      L6_2 = {}
      L7_2 = L3_2.PlayerData
      L7_2 = L7_2.charinfo
      L7_2 = L7_2.phone
      L6_2["@phone"] = L7_2
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L5_2 = L4_2[1]
        if L5_2 then
          L5_2 = MySQL
          L5_2 = L5_2.Sync
          L5_2 = L5_2.fetchAll
          L6_2 = "SELECT * FROM instagram_account WHERE username != @username AND (name LIKE '%"
          L7_2 = A2_2.search
          L8_2 = "%' OR username LIKE '%"
          L9_2 = A2_2.search
          L10_2 = "%') ORDER BY id DESC LIMIT 30"
          L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
          L7_2 = {}
          L8_2 = L4_2[1]
          L8_2 = L8_2.username
          L7_2["@username"] = L8_2
          L5_2 = L5_2(L6_2, L7_2)
          L6_2 = A1_2
          L7_2 = L5_2
          L6_2(L7_2)
        end
      end
    else
      L4_2 = A1_2
      L5_2 = false
      L4_2(L5_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:UnfollowUserInsta"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM instagram_account WHERE phone = @id"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@id"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT * FROM instagram_followers WHERE username = @username AND followed = @followed"
      L7_2 = {}
      L8_2 = L4_2[1]
      L8_2 = L8_2.username
      L7_2["@username"] = L8_2
      L8_2 = A2_2.username
      L7_2["@followed"] = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L5_2 = L5_2[1]
      if nil ~= L5_2 then
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "DELETE FROM instagram_followers WHERE username = @username AND followed = @followed"
        L7_2 = {}
        L8_2 = L4_2[1]
        L8_2 = L8_2.username
        L7_2["@username"] = L8_2
        L8_2 = A2_2.username
        L7_2["@followed"] = L8_2
        L5_2(L6_2, L7_2)
        L5_2 = A1_2
        L6_2 = true
        L5_2(L6_2)
      else
        L5_2 = A1_2
        L6_2 = false
        L5_2(L6_2)
      end
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetMyStorieInstagram"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM instagram_account WHERE phone = @phone"
    L5_2 = {}
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.phone
    L5_2["@phone"] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2[1]
    if L4_2 then
      L4_2 = MySQL
      L4_2 = L4_2.Sync
      L4_2 = L4_2.fetchAll
      L5_2 = "SELECT * FROM insta_stories WHERE created BETWEEN @start AND @finish AND username = @username ORDER BY created DESC LIMIT 1"
      L6_2 = {}
      L7_2 = os
      L7_2 = L7_2.date
      L8_2 = "%Y-%m-%d 00:00:00"
      L7_2 = L7_2(L8_2)
      L6_2["@start"] = L7_2
      L7_2 = os
      L7_2 = L7_2.date
      L8_2 = "%Y-%m-%d 23:59:59"
      L7_2 = L7_2(L8_2)
      L6_2["@finish"] = L7_2
      L7_2 = L3_2[1]
      L7_2 = L7_2.username
      L6_2["@username"] = L7_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = A1_2
      L6_2 = L4_2[1]
      L5_2(L6_2)
    else
      L4_2 = A1_2
      L5_2 = false
      L4_2(L5_2)
    end
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:EditProfileInsta"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM instagram_account WHERE phone = @id"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@id"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = L4_2[1]
      L5_2 = L5_2.username
      L6_2 = A2_2.username
      if L5_2 ~= L6_2 then
        L5_2 = L4_2[1]
        L5_2 = L5_2.username
        L6_2 = MySQL
        L6_2 = L6_2.Sync
        L6_2 = L6_2.fetchAll
        L7_2 = "SELECT * FROM instagram_account WHERE username = @username"
        L8_2 = {}
        L9_2 = A2_2.username
        L8_2["@username"] = L9_2
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = L6_2[1]
        if L7_2 then
          L7_2 = A1_2
          L8_2 = false
          L7_2(L8_2)
        else
          L7_2 = MySQL
          L7_2 = L7_2.Sync
          L7_2 = L7_2.execute
          L8_2 = "UPDATE instagram_account SET name = @name, username = @username, avatar = @avatar, description = @description WHERE phone = @phone"
          L9_2 = {}
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = A2_2.name
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@name"] = L10_2
          L10_2 = L3_2.PlayerData
          L10_2 = L10_2.charinfo
          L10_2 = L10_2.phone
          L9_2["@phone"] = L10_2
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = A2_2.username
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@username"] = L10_2
          L10_2 = A2_2.avatar
          L9_2["@avatar"] = L10_2
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = A2_2.description
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@description"] = L10_2
          L10_2 = L3_2.PlayerData
          L10_2 = L10_2.charinfo
          L10_2 = L10_2.phone
          L9_2["@id"] = L10_2
          L7_2(L8_2, L9_2)
          L7_2 = MySQL
          L7_2 = L7_2.Sync
          L7_2 = L7_2.execute
          L8_2 = "UPDATE instagram_followers SET username = @usernameNew WHERE username = @usernameOld"
          L9_2 = {}
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = L5_2
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@usernameOld"] = L10_2
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = A2_2.username
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@usernameNew"] = L10_2
          L7_2(L8_2, L9_2)
          L7_2 = MySQL
          L7_2 = L7_2.Sync
          L7_2 = L7_2.execute
          L8_2 = "UPDATE instagram_followers SET followed = @followedNew WHERE followed = @followedOld"
          L9_2 = {}
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = L5_2
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@followedOld"] = L10_2
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = A2_2.username
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@followedNew"] = L10_2
          L7_2(L8_2, L9_2)
          L7_2 = MySQL
          L7_2 = L7_2.Sync
          L7_2 = L7_2.execute
          L8_2 = "UPDATE instagram_posts SET username = @usernameNew WHERE username = @usernameOld"
          L9_2 = {}
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = L5_2
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@usernameOld"] = L10_2
          L10_2 = CheckHtmlInput
          L11_2 = A2_2.username
          L10_2 = L10_2(L11_2)
          L9_2["@usernameNew"] = L10_2
          L7_2(L8_2, L9_2)
          L7_2 = MySQL
          L7_2 = L7_2.Sync
          L7_2 = L7_2.execute
          L8_2 = "UPDATE instagram_stories SET owner = @ownerNew WHERE owner = @ownerOld"
          L9_2 = {}
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = L5_2
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@ownerOld"] = L10_2
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = A2_2.username
          L11_2, L12_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2)
          L9_2["@ownerNew"] = L10_2
          L7_2(L8_2, L9_2)
          L7_2 = A1_2
          L8_2 = true
          L7_2(L8_2)
        end
      else
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "UPDATE instagram_account SET name = @name, avatar = @avatar, description = @description WHERE phone = @phone"
        L7_2 = {}
        L8_2 = CheckHtmlInput
        L9_2 = EscapeSqli
        L10_2 = A2_2.name
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
        L7_2["@name"] = L8_2
        L8_2 = CheckHtmlInput
        L9_2 = A2_2.avatar
        L8_2 = L8_2(L9_2)
        L7_2["@avatar"] = L8_2
        L8_2 = CheckHtmlInput
        L9_2 = EscapeSqli
        L10_2 = A2_2.description
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
        L7_2["@description"] = L8_2
        L8_2 = L3_2.PlayerData
        L8_2 = L8_2.charinfo
        L8_2 = L8_2.phone
        L7_2["@phone"] = L8_2
        L5_2(L6_2, L7_2)
        L5_2 = A1_2
        L6_2 = true
        L5_2(L6_2)
      end
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:AddStorieInsta"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM instagram_account WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "INSERT INTO insta_stories (`username`, `image`, `created`) VALUES(@username, @image, @created);"
      L7_2 = {}
      L8_2 = CheckHtmlInput
      L9_2 = EscapeSqli
      L10_2 = L4_2[1]
      L10_2 = L10_2.username
      L9_2, L10_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2)
      L7_2["@username"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = A2_2.image
      L8_2 = L8_2(L9_2)
      L7_2["@image"] = L8_2
      L8_2 = os
      L8_2 = L8_2.date
      L9_2 = "%Y-%m-%d %H:%M:%S"
      L8_2 = L8_2(L9_2)
      L7_2["@created"] = L8_2
      L5_2(L6_2, L7_2)
      L5_2 = A1_2
      L6_2 = true
      L5_2(L6_2)
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetStoriesInstagram"
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM instagram_account WHERE phone = @phone"
    L5_2 = {}
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.phone
    L5_2["@phone"] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2[1]
    if L4_2 then
      L4_2 = MySQL
      L4_2 = L4_2.Sync
      L4_2 = L4_2.fetchAll
      L5_2 = "SELECT S.username, S.image, S.description, S.location, S.filter, S.created FROM insta_stories AS S LEFT JOIN instagram_followers AS F ON F.followed = S.username WHERE S.created BETWEEN @start AND @finish AND F.username = @username ORDER BY S.created DESC"
      L6_2 = {}
      L7_2 = os
      L7_2 = L7_2.date
      L8_2 = "%Y-%m-%d 00:00:00"
      L7_2 = L7_2(L8_2)
      L6_2["@start"] = L7_2
      L7_2 = os
      L7_2 = L7_2.date
      L8_2 = "%Y-%m-%d 23:59:59"
      L7_2 = L7_2(L8_2)
      L6_2["@finish"] = L7_2
      L7_2 = CheckHtmlInput
      L8_2 = L3_2[1]
      L8_2 = L8_2.username
      L7_2 = L7_2(L8_2)
      L6_2["@username"] = L7_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = A1_2
      L6_2 = L4_2
      L5_2(L6_2)
    else
      L4_2 = A1_2
      L5_2 = false
      L4_2(L5_2)
    end
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetProfileInstagramUsername"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM instagram_account WHERE username = @username"
    L6_2 = {}
    L6_2["@username"] = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A1_2
    L6_2 = {}
    L7_2 = MySQL
    L7_2 = L7_2.Sync
    L7_2 = L7_2.fetchAll
    L8_2 = "SELECT COUNT(*) AS total_follows FROM instagram_followers WHERE followed = @username"
    L9_2 = {}
    L10_2 = L4_2[1]
    L10_2 = L10_2.username
    L9_2["@username"] = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2[1]
    L7_2 = L7_2.total_follows
    L6_2.total_follows = L7_2
    L7_2 = MySQL
    L7_2 = L7_2.Sync
    L7_2 = L7_2.fetchAll
    L8_2 = "SELECT COUNT(*) AS total_followeds FROM instagram_followers WHERE username = @username"
    L9_2 = {}
    L10_2 = L4_2[1]
    L10_2 = L10_2.username
    L9_2["@username"] = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2[1]
    L7_2 = L7_2.total_followeds
    L6_2.total_followeds = L7_2
    L7_2 = MySQL
    L7_2 = L7_2.Sync
    L7_2 = L7_2.fetchAll
    L8_2 = "SELECT COUNT(*) AS total_posts FROM instagram_posts WHERE username = @username"
    L9_2 = {}
    L10_2 = L4_2[1]
    L10_2 = L10_2.username
    L9_2["@username"] = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L7_2 = L7_2[1]
    L7_2 = L7_2.total_posts
    L6_2.total_posts = L7_2
    L7_2 = MySQL
    L7_2 = L7_2.Sync
    L7_2 = L7_2.fetchAll
    L8_2 = "SELECT * FROM instagram_posts WHERE username = @username ORDER BY created DESC LIMIT 30"
    L9_2 = {}
    L10_2 = L4_2[1]
    L10_2 = L10_2.username
    L9_2["@username"] = L10_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2.posts = L7_2
    L7_2 = L4_2[1]
    L6_2.account = L7_2
    L5_2(L6_2)
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetProfilePicture"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = {}
  L4_2 = GetPlayerFromIdFramework
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L7_2 = {}
    L7_2["@phone"] = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = L5_2[1]
      if L6_2 then
        L6_2 = L5_2[1]
        L6_2 = L6_2.avatar
        if L6_2 then
          L6_2 = A1_2
          L7_2 = L5_2[1]
          L7_2 = L7_2.avatar
          L6_2(L7_2)
      end
    end
    else
      L6_2 = A1_2
      L7_2 = nil
      L6_2(L7_2)
    end
  else
    L5_2 = A1_2
    L6_2 = nil
    L5_2(L6_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = QSPhone
L9_1 = L9_1.RegisterServerCallback
L10_1 = "qs-smartphone:GetUserName"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L4_2 = GetPlayerFromIdFramework
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT * FROM player_contacts WHERE identifier = @identifier AND number = @number"
    L7_2 = {}
    L8_2 = L4_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@identifier"] = L8_2
    L7_2["@number"] = A2_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = A1_2
      L7_2 = L5_2[1]
      L7_2 = L7_2.name
      L6_2(L7_2)
    else
      L6_2 = A1_2
      L7_2 = nil
      L6_2(L7_2)
    end
  else
    L5_2 = A1_2
    L6_2 = nil
    L5_2(L6_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:ClearUnread"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM phone_messages WHERE phone = @phone AND number = @number OR phone = @number AND number = @phone"
  L5_2 = {}
  L6_2 = L2_2.PlayerData
  L6_2 = L6_2.charinfo
  L6_2 = L6_2.phone
  L5_2["@phone"] = L6_2
  L6_2 = tostring
  L7_2 = A0_2.phone
  L6_2 = L6_2(L7_2)
  L5_2["@number"] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2[1]
  if L4_2 then
    L4_2 = json
    L4_2 = L4_2.decode
    L5_2 = L3_2[1]
    L5_2 = L5_2.messages
    L4_2 = L4_2(L5_2)
    L5_2 = tonumber
    L6_2 = A0_2.id
    L5_2 = L5_2(L6_2)
    L6_2 = L4_2[L5_2]
    L6_2 = L6_2.owner
    L7_2 = L2_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    if L6_2 ~= L7_2 then
      L6_2 = L4_2[L5_2]
      L6_2.read = 0
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.execute
      L7_2 = "UPDATE phone_messages SET messages = @messages WHERE id = @id"
      L8_2 = {}
      L9_2 = CheckHtmlInput
      L10_2 = json
      L10_2 = L10_2.encode
      L11_2 = L4_2
      L10_2, L11_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2)
      L8_2["@messages"] = L9_2
      L9_2 = L3_2[1]
      L9_2 = L9_2.id
      L8_2["@id"] = L9_2
      L6_2(L7_2, L8_2)
    end
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:CreateDarkchatGroup"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM darkchat_messages WHERE name = ?"
  L5_2 = {}
  L6_2 = A0_2
  L5_2[1] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2[1]
  if L4_2 then
    L4_2 = TriggerClientEvent
    L5_2 = "qs-smartphone:client:notify"
    L6_2 = L1_2
    L7_2 = {}
    L7_2.title = "darkchat"
    L8_2 = Lang
    L9_2 = "DARKCHAT_GROUP_ALREADY_EXIST"
    L8_2 = L8_2(L9_2)
    L7_2.text = L8_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.execute
    L5_2 = "INSERT INTO darkchat_messages (owner, name, messages) VALUES (?, ?, ?)"
    L6_2 = {}
    L7_2 = L2_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L8_2 = CheckHtmlInput
    L9_2 = EscapeSqli
    L10_2 = A0_2
    L9_2, L10_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2)
    L9_2 = json
    L9_2 = L9_2.encode
    L10_2 = {}
    L9_2, L10_2 = L9_2(L10_2)
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L6_2[3] = L9_2
    L6_2[4] = L10_2
    L4_2(L5_2, L6_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "qs-smartphone:newDarkchatMessage"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.message
  L4_2 = A0_2.id
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.fetchAll
  L6_2 = "SELECT * FROM darkchat_messages WHERE id = ?"
  L7_2 = {}
  L8_2 = L4_2
  L7_2[1] = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2[1]
  if L6_2 then
    L6_2 = {}
    L7_2 = L5_2[1]
    if L7_2 then
      L7_2 = json
      L7_2 = L7_2.decode
      L8_2 = L5_2[1]
      L8_2 = L8_2.messages
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = json
        L7_2 = L7_2.decode
        L8_2 = L5_2[1]
        L8_2 = L8_2.messages
        L7_2 = L7_2(L8_2)
        L6_2 = L7_2
      end
    end
    L7_2 = type
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "table" ~= L7_2 then
      L7_2 = {}
      L6_2 = L7_2
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L6_2
    L9_2 = {}
    L10_2 = EscapeSqli
    L11_2 = L3_2
    L10_2 = L10_2(L11_2)
    L9_2.message = L10_2
    L10_2 = L2_2.PlayerData
    L10_2 = L10_2.charinfo
    L10_2 = L10_2.phone
    L9_2.owner = L10_2
    L10_2 = os
    L10_2 = L10_2.date
    L11_2 = "%Y-%m-%d %H:%M:%S"
    L10_2 = L10_2(L11_2)
    L9_2.created = L10_2
    L7_2(L8_2, L9_2)
    L7_2 = MySQL
    L7_2 = L7_2.Sync
    L7_2 = L7_2.execute
    L8_2 = "UPDATE darkchat_messages SET messages = ? WHERE id = ?"
    L9_2 = {}
    L10_2 = CheckHtmlInput
    L11_2 = json
    L11_2 = L11_2.encode
    L12_2 = L6_2
    L11_2, L12_2 = L11_2(L12_2)
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = L4_2
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L7_2(L8_2, L9_2)
  end
end
L9_1(L10_1, L11_1)
L9_1 = {}
L10_1 = pairs
L11_1 = Config
L11_1 = L11_1.jobCommands
L10_1, L11_1, L12_1, L13_1 = L10_1(L11_1)
for L14_1, L15_1 in L10_1, L11_1, L12_1, L13_1 do
  L16_1 = RegisterCommand
  L17_1 = L15_1
  function L18_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
    function L2_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L2_3 = pairs
      L3_3 = L9_1
      L3_3 = L3_3[A0_3]
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        if L7_3 == A1_3 then
          return L6_3
        end
      end
      L2_3 = false
      return L2_3
    end
    L3_2 = A0_2
    L4_2 = GetPlayerFromIdFramework
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = GetJob
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.name
    L6_2 = L14_1
    if L5_2 == L6_2 then
      L5_2 = type
      L7_2 = L14_1
      L6_2 = L9_1
      L6_2 = L6_2[L7_2]
      L5_2 = L5_2(L6_2)
      if "table" ~= L5_2 then
        L6_2 = L14_1
        L5_2 = L9_1
        L7_2 = {}
        L5_2[L6_2] = L7_2
      end
      L5_2 = L2_2
      L6_2 = L14_1
      L7_2 = L4_2.PlayerData
      L7_2 = L7_2.charinfo
      L7_2 = L7_2.phone
      L5_2 = L5_2(L6_2, L7_2)
      if not L5_2 then
        L6_2 = table
        L6_2 = L6_2.insert
        L8_2 = L14_1
        L7_2 = L9_1
        L7_2 = L7_2[L8_2]
        L8_2 = L4_2.PlayerData
        L8_2 = L8_2.charinfo
        L8_2 = L8_2.phone
        L6_2(L7_2, L8_2)
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:sendMessage"
        L8_2 = L3_2
        L9_2 = Lang
        L10_2 = "PHONE_CALL_COMMAND_ON"
        L9_2 = L9_2(L10_2)
        L10_2 = "inform"
        L6_2(L7_2, L8_2, L9_2, L10_2)
      else
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:sendMessage"
        L8_2 = L3_2
        L9_2 = Lang
        L10_2 = "PHONE_CALL_COMMAND_OFF"
        L9_2 = L9_2(L10_2)
        L10_2 = "inform"
        L6_2(L7_2, L8_2, L9_2, L10_2)
        L6_2 = table
        L6_2 = L6_2.remove
        L8_2 = L14_1
        L7_2 = L9_1
        L7_2 = L7_2[L8_2]
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
      end
    else
      L5_2 = TriggerClientEvent
      L6_2 = "qs-smartphone:sendMessage"
      L7_2 = L3_2
      L8_2 = Lang
      L9_2 = "PHONE_CALL_COMMAND_ERROR"
      L8_2 = L8_2(L9_2)
      L9_2 = " "
      L10_2 = L14_1
      L8_2 = L8_2 .. L9_2 .. L10_2
      L9_2 = "error"
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
  L16_1(L17_1, L18_1)
end
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:getDarkChats"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT * FROM darkchat_messages ORDER BY name"
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2[1]
  if L3_2 then
    L3_2 = A1_2
    L4_2 = L2_2
    L3_2(L4_2)
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:getDarkchatMessages"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM darkchat_messages WHERE id = ?"
  L5_2 = {}
  L6_2 = A2_2
  L5_2[1] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2[1]
  if L4_2 then
    L4_2 = L3_2[1]
    L4_2 = L4_2.messages
    if L4_2 then
      L4_2 = A1_2
      L5_2 = json
      L5_2 = L5_2.decode
      L6_2 = L3_2[1]
      L6_2 = L6_2.messages
      L5_2, L6_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2)
    else
      L4_2 = A1_2
      L5_2 = false
      L4_2(L5_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:messageJobDeleteMessage"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM phone_messages WHERE number = @ambulance"
    L6_2 = {}
    L7_2 = A2_2.owner
    L6_2["@ambulance"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = json
      L5_2 = L5_2.decode
      L6_2 = L4_2[1]
      L6_2 = L6_2.messages
      L5_2 = L5_2(L6_2)
      L6_2 = tonumber
      L7_2 = A2_2.id
      L6_2 = L6_2(L7_2)
      L7_2 = 1
      L8_2 = #L5_2
      L9_2 = 1
      for L10_2 = L7_2, L8_2, L9_2 do
        L11_2 = table
        L11_2 = L11_2.remove
        L12_2 = L5_2
        L13_2 = L6_2
        L11_2(L12_2, L13_2)
        L11_2 = MySQL
        L11_2 = L11_2.Sync
        L11_2 = L11_2.execute
        L12_2 = "UPDATE phone_messages SET messages = ? WHERE id = ?"
        L13_2 = {}
        L14_2 = CheckHtmlInput
        L15_2 = json
        L15_2 = L15_2.encode
        L16_2 = L5_2
        L15_2, L16_2 = L15_2(L16_2)
        L14_2 = L14_2(L15_2, L16_2)
        L15_2 = L4_2[1]
        L15_2 = L15_2.id
        L13_2[1] = L14_2
        L13_2[2] = L15_2
        L11_2(L12_2, L13_2)
        L11_2 = A1_2
        L12_2 = true
        return L11_2(L12_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:DeleteMessages"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:DeleteMessages"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_chats WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L6_2["@number"] = A0_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      if A1_2 then
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "UPDATE whatsapp_chats SET messages = @messages WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
        L7_2 = {}
        L8_2 = L3_2.PlayerData
        L8_2 = L8_2.charinfo
        L8_2 = L8_2.phone
        L7_2["@phone"] = L8_2
        L7_2["@number"] = A0_2
        L8_2 = json
        L8_2 = L8_2.encode
        L9_2 = {}
        L8_2 = L8_2(L9_2)
        L7_2["@messages"] = L8_2
        L5_2(L6_2, L7_2)
      else
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "DELETE FROM whatsapp_chats WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
        L7_2 = {}
        L8_2 = L3_2.PlayerData
        L8_2 = L8_2.charinfo
        L8_2 = L8_2.phone
        L7_2["@phone"] = L8_2
        L7_2["@number"] = A0_2
        L5_2(L6_2, L7_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:SendMessage"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = GetPlayerFromPhone
    L5_2 = A2_2.phone
    L4_2 = L4_2(L5_2)
    L5_2 = A2_2.phone
    if L5_2 then
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT * FROM whatsapp_chats WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
      L8_2 = {}
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L8_2["@phone"] = L9_2
      L8_2["@number"] = L5_2
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L7_2 = L6_2[1]
        if L7_2 then
          L7_2 = json
          L7_2 = L7_2.decode
          L8_2 = L6_2[1]
          L8_2 = L8_2.messages
          L7_2 = L7_2(L8_2)
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L7_2
          L10_2 = {}
          L11_2 = L3_2.PlayerData
          L11_2 = L11_2.charinfo
          L11_2 = L11_2.phone
          L10_2.owner = L11_2
          L11_2 = A2_2.type
          L10_2.type = L11_2
          L11_2 = EscapeSqli
          L12_2 = A2_2.message
          L11_2 = L11_2(L12_2)
          L10_2.message = L11_2
          L11_2 = os
          L11_2 = L11_2.date
          L12_2 = "%Y-%m-%d %H:%M:%S"
          L11_2 = L11_2(L12_2)
          L10_2.created = L11_2
          L10_2.read = 0
          L8_2(L9_2, L10_2)
          L8_2 = MySQL
          L8_2 = L8_2.Sync
          L8_2 = L8_2.execute
          L9_2 = "UPDATE whatsapp_chats SET messages = @messages, created = @created WHERE id = @id"
          L10_2 = {}
          L11_2 = L6_2[1]
          L11_2 = L11_2.id
          L10_2["@id"] = L11_2
          L11_2 = CheckHtmlInput
          L12_2 = json
          L12_2 = L12_2.encode
          L13_2 = L7_2
          L12_2, L13_2 = L12_2(L13_2)
          L11_2 = L11_2(L12_2, L13_2)
          L10_2["@messages"] = L11_2
          L11_2 = os
          L11_2 = L11_2.date
          L12_2 = "%Y-%m-%d %H:%M:%S"
          L11_2 = L11_2(L12_2)
          L10_2["@created"] = L11_2
          L8_2(L9_2, L10_2)
          if L4_2 then
            L8_2 = TriggerClientEvent
            L9_2 = "qs-smartphone:refreshWhatsappChats"
            L10_2 = L4_2.PlayerData
            L10_2 = L10_2.source
            L11_2 = L3_2.PlayerData
            L11_2 = L11_2.charinfo
            L11_2 = L11_2.phone
            L8_2(L9_2, L10_2, L11_2)
          end
          L8_2 = A1_2
          L9_2 = true
          L8_2(L9_2)
      end
      else
        L7_2 = {}
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L7_2
        L10_2 = {}
        L11_2 = L3_2.PlayerData
        L11_2 = L11_2.charinfo
        L11_2 = L11_2.phone
        L10_2.owner = L11_2
        L11_2 = A2_2.type
        L10_2.type = L11_2
        L11_2 = EscapeSqli
        L12_2 = A2_2.message
        L11_2 = L11_2(L12_2)
        L10_2.message = L11_2
        L11_2 = os
        L11_2 = L11_2.date
        L12_2 = "%Y-%m-%d %H:%M:%S"
        L11_2 = L11_2(L12_2)
        L10_2.created = L11_2
        L10_2.read = 0
        L8_2(L9_2, L10_2)
        L8_2 = MySQL
        L8_2 = L8_2.Sync
        L8_2 = L8_2.execute
        L9_2 = "INSERT INTO whatsapp_chats (`phone`, `number`, `created`, `messages`) VALUES(@phone, @number, @created, @messages)"
        L10_2 = {}
        L11_2 = L3_2.PlayerData
        L11_2 = L11_2.charinfo
        L11_2 = L11_2.phone
        L10_2["@phone"] = L11_2
        L10_2["@number"] = L5_2
        L11_2 = os
        L11_2 = L11_2.date
        L12_2 = "%Y-%m-%d %H:%M:%S"
        L11_2 = L11_2(L12_2)
        L10_2["@created"] = L11_2
        L11_2 = CheckHtmlInput
        L12_2 = json
        L12_2 = L12_2.encode
        L13_2 = L7_2
        L12_2, L13_2 = L12_2(L13_2)
        L11_2 = L11_2(L12_2, L13_2)
        L10_2["@messages"] = L11_2
        L8_2(L9_2, L10_2)
        if L4_2 then
          L8_2 = TriggerClientEvent
          L9_2 = "qs-smartphone:refreshWhatsappChats"
          L10_2 = L4_2.PlayerData
          L10_2 = L10_2.source
          L11_2 = L3_2.PlayerData
          L11_2 = L11_2.charinfo
          L11_2 = L11_2.phone
          L8_2(L9_2, L10_2, L11_2)
        end
        L8_2 = A1_2
        L9_2 = true
        L8_2(L9_2)
      end
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetNotifies"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM phone_notifies WHERE phone = @phone"
    L5_2 = {}
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.phone
    L5_2["@phone"] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = 1
    L5_2 = #L3_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = MySQL
      L8_2 = L8_2.Sync
      L8_2 = L8_2.fetchAll
      L9_2 = "SELECT * FROM player_contacts WHERE identifier = @identifier AND number = @number"
      L10_2 = {}
      L11_2 = L2_2.identifier
      L10_2["@identifier"] = L11_2
      L11_2 = L3_2[L7_2]
      L11_2 = L11_2.msg_head
      L10_2["@number"] = L11_2
      L8_2 = L8_2(L9_2, L10_2)
      L9_2 = L8_2[1]
      if L9_2 then
        L9_2 = L3_2[L7_2]
        L10_2 = L8_2[1]
        L10_2 = L10_2.name
        L9_2.msg_head = L10_2
      end
    end
    if L3_2 then
      L4_2 = A1_2
      L5_2 = L3_2
      L4_2(L5_2)
    else
      L4_2 = A1_2
      L5_2 = nil
      L4_2(L5_2)
    end
  else
    L3_2 = A1_2
    L4_2 = nil
    L3_2(L4_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetTinderMessages"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = {}
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM tinder_messages WHERE phone = @phone OR number = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = L4_2[1]
      if L5_2 then
        L5_2 = 1
        L6_2 = #L4_2
        L7_2 = 1
        for L8_2 = L5_2, L6_2, L7_2 do
          L9_2 = L4_2[L8_2]
          L9_2 = L9_2.phone
          L10_2 = L3_2.PlayerData
          L10_2 = L10_2.charinfo
          L10_2 = L10_2.phone
          if L9_2 == L10_2 then
            L9_2 = json
            L9_2 = L9_2.decode
            L10_2 = L4_2[L8_2]
            L10_2 = L10_2.messages
            L9_2 = L9_2(L10_2)
            L10_2 = MySQL
            L10_2 = L10_2.Sync
            L10_2 = L10_2.fetchAll
            L11_2 = "SELECT * FROM tinder_accounts WHERE phone = @num"
            L12_2 = {}
            L13_2 = L4_2[L8_2]
            L13_2 = L13_2.number
            L12_2["@num"] = L13_2
            L10_2 = L10_2(L11_2, L12_2)
            L11_2 = table
            L11_2 = L11_2.insert
            L12_2 = L2_2
            L13_2 = {}
            L14_2 = L10_2[1]
            if L14_2 then
              L14_2 = L10_2[1]
              L14_2 = L14_2.pp
            end
            L13_2.avatar = L14_2
            L14_2 = next
            L15_2 = L9_2
            L14_2 = L14_2(L15_2)
            if L14_2 then
              L14_2 = #L9_2
              L14_2 = L9_2[L14_2]
              L14_2 = L14_2.created
              if L14_2 then
                goto lbl_72
              end
            end
            L14_2 = ""
            ::lbl_72::
            L13_2.created = L14_2
            L14_2 = next
            L15_2 = L9_2
            L14_2 = L14_2(L15_2)
            if L14_2 then
              L14_2 = #L9_2
              L14_2 = L9_2[L14_2]
              L14_2 = L14_2.message
              if L14_2 then
                goto lbl_84
              end
            end
            L14_2 = ""
            ::lbl_84::
            L13_2.message = L14_2
            L14_2 = L10_2[1]
            if L14_2 then
              L14_2 = L10_2[1]
              L14_2 = L14_2.name
              if L14_2 then
                goto lbl_93
              end
            end
            L14_2 = "Oops"
            ::lbl_93::
            L13_2.contact_name = L14_2
            L14_2 = L4_2[L8_2]
            L14_2 = L14_2.number
            L13_2.phone = L14_2
            L13_2.messages = L9_2
            L11_2(L12_2, L13_2)
          else
            L9_2 = L4_2[L8_2]
            L9_2 = L9_2.number
            L10_2 = L3_2.PlayerData
            L10_2 = L10_2.charinfo
            L10_2 = L10_2.phone
            if L9_2 == L10_2 then
              L9_2 = json
              L9_2 = L9_2.decode
              L10_2 = L4_2[L8_2]
              L10_2 = L10_2.messages
              L9_2 = L9_2(L10_2)
              L10_2 = MySQL
              L10_2 = L10_2.Sync
              L10_2 = L10_2.fetchAll
              L11_2 = "SELECT * FROM tinder_accounts WHERE phone = @num"
              L12_2 = {}
              L13_2 = L4_2[L8_2]
              L13_2 = L13_2.phone
              L12_2["@num"] = L13_2
              L10_2 = L10_2(L11_2, L12_2)
              L11_2 = table
              L11_2 = L11_2.insert
              L12_2 = L2_2
              L13_2 = {}
              L14_2 = L10_2[1]
              if L14_2 then
                L14_2 = L10_2[1]
                L14_2 = L14_2.pp
              end
              L13_2.avatar = L14_2
              L14_2 = next
              L15_2 = L9_2
              L14_2 = L14_2(L15_2)
              if L14_2 then
                L14_2 = #L9_2
                L14_2 = L9_2[L14_2]
                L14_2 = L14_2.created
                if L14_2 then
                  goto lbl_144
                end
              end
              L14_2 = ""
              ::lbl_144::
              L13_2.created = L14_2
              L14_2 = next
              L15_2 = L9_2
              L14_2 = L14_2(L15_2)
              if L14_2 then
                L14_2 = #L9_2
                L14_2 = L9_2[L14_2]
                L14_2 = L14_2.message
                if L14_2 then
                  goto lbl_156
                end
              end
              L14_2 = ""
              ::lbl_156::
              L13_2.message = L14_2
              L14_2 = L10_2[1]
              if L14_2 then
                L14_2 = L10_2[1]
                L14_2 = L14_2.name
                if L14_2 then
                  goto lbl_165
                end
              end
              L14_2 = "Oops"
              ::lbl_165::
              L13_2.contact_name = L14_2
              L14_2 = L4_2[L8_2]
              L14_2 = L14_2.phone
              L13_2.phone = L14_2
              L13_2.messages = L9_2
              L11_2(L12_2, L13_2)
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2
  L5_2 = L2_2
  L4_2(L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:LikeDislike"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM tinder_likes WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = {}
    L6_2 = L4_2[1]
    if L6_2 then
      L6_2 = json
      L6_2 = L6_2.decode
      L7_2 = L4_2[1]
      L7_2 = L7_2.likeds
      L6_2 = L6_2(L7_2)
      L5_2 = L6_2
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L5_2
      L8_2 = {}
      L9_2 = A2_2.phone
      L8_2.number = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.execute
      L7_2 = "UPDATE tinder_likes SET likeds = @likeds WHERE phone = @phone"
      L8_2 = {}
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L8_2["@phone"] = L9_2
      L9_2 = json
      L9_2 = L9_2.encode
      L10_2 = L5_2
      L9_2 = L9_2(L10_2)
      L8_2["@likeds"] = L9_2
      L6_2(L7_2, L8_2)
    else
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L5_2
      L8_2 = {}
      L9_2 = A2_2.phone
      L8_2.number = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.execute
      L7_2 = "INSERT INTO tinder_likes (phone, likeds) VALUES (@phone, @likeds)"
      L8_2 = {}
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L8_2["@phone"] = L9_2
      L9_2 = json
      L9_2 = L9_2.encode
      L10_2 = L5_2
      L9_2 = L9_2(L10_2)
      L8_2["@likeds"] = L9_2
      L6_2(L7_2, L8_2)
    end
    L6_2 = A2_2.type
    if "love" == L6_2 then
      L6_2 = MySQL
      L6_2 = L6_2.Async
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT * FROM `tinder_likes` WHERE `phone` = '"
      L8_2 = A2_2.phone
      L9_2 = "'"
      L7_2 = L7_2 .. L8_2 .. L9_2
      L8_2 = {}
      function L9_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
        L1_3 = A0_3[1]
        if L1_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3[1]
          L2_3 = L2_3.likeds
          L1_3 = L1_3(L2_3)
          L2_3 = pairs
          L3_3 = L1_3
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = L7_3.number
            L9_3 = L3_2.PlayerData
            L9_3 = L9_3.charinfo
            L9_3 = L9_3.phone
            if L8_3 == L9_3 then
              L8_3 = MySQL
              L8_3 = L8_3.Sync
              L8_3 = L8_3.fetchAll
              L9_3 = "SELECT * FROM tinder_messages WHERE phone = @phone OR number = @phone"
              L10_3 = {}
              L11_3 = A2_2.phone
              L10_3["@phone"] = L11_3
              L8_3 = L8_3(L9_3, L10_3)
              L9_3 = L8_3[1]
              if not L9_3 then
                L9_3 = MySQL
                L9_3 = L9_3.Sync
                L9_3 = L9_3.execute
                L10_3 = "INSERT INTO tinder_messages (phone, number, messages) VALUES (@phone, @number, @messages)"
                L11_3 = {}
                L12_3 = L3_2.PlayerData
                L12_3 = L12_3.charinfo
                L12_3 = L12_3.phone
                L11_3["@phone"] = L12_3
                L12_3 = A2_2.phone
                L11_3["@number"] = L12_3
                L11_3["@messages"] = "{}"
                L9_3(L10_3, L11_3)
              end
              break
            end
          end
        else
        end
      end
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L4_2 = A1_2
  L5_2 = true
  L4_2(L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetWhatsappChats"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = {}
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_chats WHERE phone = @phone OR number = @phone order by created desc"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT avatar FROM whatsapp_accounts WHERE phone = @phone"
    L7_2 = {}
    L8_2 = L3_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@phone"] = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L4_2[1]
    if L6_2 then
      L6_2 = 1
      L7_2 = #L4_2
      L8_2 = 1
      for L9_2 = L6_2, L7_2, L8_2 do
        L10_2 = L4_2[L9_2]
        L10_2 = L10_2.phone
        L11_2 = L3_2.PlayerData
        L11_2 = L11_2.charinfo
        L11_2 = L11_2.phone
        if L10_2 == L11_2 then
          L10_2 = json
          L10_2 = L10_2.decode
          L11_2 = L4_2[L9_2]
          L11_2 = L11_2.messages
          L10_2 = L10_2(L11_2)
          L11_2 = MySQL
          L11_2 = L11_2.Sync
          L11_2 = L11_2.fetchAll
          L12_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @num"
          L13_2 = {}
          L14_2 = L4_2[L9_2]
          L14_2 = L14_2.number
          L13_2["@num"] = L14_2
          L11_2 = L11_2(L12_2, L13_2)
          L12_2 = MySQL
          L12_2 = L12_2.Sync
          L12_2 = L12_2.fetchAll
          L13_2 = "SELECT name FROM player_contacts WHERE identifier = @identifier AND number = @num"
          L14_2 = {}
          L15_2 = L4_2[L9_2]
          L15_2 = L15_2.number
          L14_2["@num"] = L15_2
          L15_2 = L3_2.PlayerData
          L15_2 = L15_2.charinfo
          L15_2 = L15_2.phone
          L14_2["@identifier"] = L15_2
          L12_2 = L12_2(L13_2, L14_2)
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = L2_2
          L15_2 = {}
          L16_2 = L11_2[1]
          if L16_2 then
            L16_2 = L11_2[1]
            L16_2 = L16_2.avatar
          end
          L15_2.avatar = L16_2
          L16_2 = next
          L17_2 = L10_2
          L16_2 = L16_2(L17_2)
          if L16_2 then
            L16_2 = #L10_2
            L16_2 = L10_2[L16_2]
            L16_2 = L16_2.created
            if L16_2 then
              goto lbl_95
            end
          end
          L16_2 = ""
          ::lbl_95::
          L15_2.created = L16_2
          L16_2 = next
          L17_2 = L10_2
          L16_2 = L16_2(L17_2)
          if L16_2 then
            L16_2 = #L10_2
            L16_2 = L10_2[L16_2]
            L16_2 = L16_2.message
            if L16_2 then
              goto lbl_107
            end
          end
          L16_2 = ""
          ::lbl_107::
          L15_2.message = L16_2
          L16_2 = L12_2[1]
          if L16_2 then
            L16_2 = L12_2[1]
            L16_2 = L16_2.name
            if L16_2 then
              goto lbl_116
            end
          end
          L16_2 = nil
          ::lbl_116::
          L15_2.contact_name = L16_2
          L16_2 = L4_2[L9_2]
          L16_2 = L16_2.number
          L15_2.phone = L16_2
          L16_2 = L4_2[L9_2]
          L16_2 = L16_2.chat
          L15_2.read = L16_2
          L16_2 = L5_2[1]
          L16_2 = L16_2.avatar
          L15_2.myAvatar = L16_2
          L13_2(L14_2, L15_2)
        else
          L10_2 = L4_2[L9_2]
          L10_2 = L10_2.number
          L11_2 = L3_2.PlayerData
          L11_2 = L11_2.charinfo
          L11_2 = L11_2.phone
          if L10_2 == L11_2 then
            L10_2 = json
            L10_2 = L10_2.decode
            L11_2 = L4_2[L9_2]
            L11_2 = L11_2.messages
            L10_2 = L10_2(L11_2)
            L11_2 = MySQL
            L11_2 = L11_2.Sync
            L11_2 = L11_2.fetchAll
            L12_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @num"
            L13_2 = {}
            L14_2 = L4_2[L9_2]
            L14_2 = L14_2.phone
            L13_2["@num"] = L14_2
            L11_2 = L11_2(L12_2, L13_2)
            L12_2 = MySQL
            L12_2 = L12_2.Sync
            L12_2 = L12_2.fetchAll
            L13_2 = "SELECT name FROM player_contacts WHERE identifier = @identifier AND number = @num"
            L14_2 = {}
            L15_2 = L4_2[L9_2]
            L15_2 = L15_2.phone
            L14_2["@num"] = L15_2
            L15_2 = L3_2.PlayerData
            L15_2 = L15_2.charinfo
            L15_2 = L15_2.phone
            L14_2["@identifier"] = L15_2
            L12_2 = L12_2(L13_2, L14_2)
            L13_2 = table
            L13_2 = L13_2.insert
            L14_2 = L2_2
            L15_2 = {}
            L16_2 = L11_2[1]
            if L16_2 then
              L16_2 = L11_2[1]
              L16_2 = L16_2.avatar
            end
            L15_2.avatar = L16_2
            L16_2 = next
            L17_2 = L10_2
            L16_2 = L16_2(L17_2)
            if L16_2 then
              L16_2 = #L10_2
              L16_2 = L10_2[L16_2]
              L16_2 = L16_2.created
              if L16_2 then
                goto lbl_186
              end
            end
            L16_2 = ""
            ::lbl_186::
            L15_2.created = L16_2
            L16_2 = next
            L17_2 = L10_2
            L16_2 = L16_2(L17_2)
            if L16_2 then
              L16_2 = #L10_2
              L16_2 = L10_2[L16_2]
              L16_2 = L16_2.message
              if L16_2 then
                goto lbl_198
              end
            end
            L16_2 = ""
            ::lbl_198::
            L15_2.message = L16_2
            L16_2 = L12_2[1]
            if L16_2 then
              L16_2 = L12_2[1]
              L16_2 = L16_2.name
              if L16_2 then
                goto lbl_207
              end
            end
            L16_2 = nil
            ::lbl_207::
            L15_2.contact_name = L16_2
            L16_2 = L4_2[L9_2]
            L16_2 = L16_2.phone
            L15_2.phone = L16_2
            L16_2 = L4_2[L9_2]
            L16_2 = L16_2.chat
            L15_2.read = L16_2
            L16_2 = L5_2[1]
            L16_2 = L16_2.avatar
            L15_2.myAvatar = L16_2
            L13_2(L14_2, L15_2)
          end
        end
      end
    end
    L6_2 = A1_2
    L7_2 = L2_2
    L6_2(L7_2)
  else
    L4_2 = A1_2
    L5_2 = {}
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:CreateGroupWhatsApp"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = os
      L5_2 = L5_2.date
      L6_2 = "%m%Y%m%d%H%I%S"
      L5_2 = L5_2(L6_2)
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.execute
      L7_2 = "INSERT INTO whatsapp_groups (`phone`, `number`, `type`, `name`, `image`, `created`) VALUES(@phone, @number, @type, @name, @image, @created);"
      L8_2 = {}
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L8_2["@phone"] = L9_2
      L8_2["@number"] = L5_2
      L8_2["@type"] = "group"
      L9_2 = CheckHtmlInput
      L10_2 = EscapeSqli
      L11_2 = A2_2.name
      L10_2, L11_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2)
      L8_2["@name"] = L9_2
      L9_2 = CheckHtmlInput
      L10_2 = A2_2.image
      L9_2 = L9_2(L10_2)
      L8_2["@image"] = L9_2
      L9_2 = os
      L9_2 = L9_2.date
      L10_2 = "%Y-%m-%d %H:%M:%S"
      L9_2 = L9_2(L10_2)
      L8_2["@created"] = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.execute
      L7_2 = "INSERT INTO whatsapp_groups_users (`number_group`, `admin`, `phone`) VALUES(@number_group, @admin, @phone);"
      L8_2 = {}
      L8_2["@number_group"] = L5_2
      L8_2["@admin"] = 1
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L8_2["@phone"] = L9_2
      L6_2(L7_2, L8_2)
      L6_2 = A1_2
      L7_2 = true
      L6_2(L7_2)
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:SendMessageGroup"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2
  L4_2 = GetPlayerFromIdFramework
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L7_2 = {}
    L8_2 = L4_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@phone"] = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT * FROM whatsapp_groups WHERE number = @number"
      L8_2 = {}
      L9_2 = A2_2.number
      L8_2["@number"] = L9_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = MySQL
      L7_2 = L7_2.Sync
      L7_2 = L7_2.fetchAll
      L8_2 = "SELECT * FROM whatsapp_groups_users WHERE number_group = @number_group"
      L9_2 = {}
      L10_2 = L6_2[1]
      L10_2 = L10_2.number
      L9_2["@number_group"] = L10_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = TriggerClientEvent
        L9_2 = "qs-smartphone:whatsappgroupNotify"
        L10_2 = -1
        L11_2 = L7_2
        L12_2 = A2_2.number
        L8_2(L9_2, L10_2, L11_2, L12_2)
      end
      L8_2 = MySQL
      L8_2 = L8_2.Sync
      L8_2 = L8_2.execute
      L9_2 = "INSERT INTO whatsapp_groups_messages (`id_group`, `owner`, `type`, `message`, `created`, `read`) VALUES(@id_group, @owner, @type, @message, @created, @read);"
      L10_2 = {}
      L11_2 = L6_2[1]
      L11_2 = L11_2.id
      L10_2["@id_group"] = L11_2
      L11_2 = L4_2.PlayerData
      L11_2 = L11_2.charinfo
      L11_2 = L11_2.phone
      L10_2["@owner"] = L11_2
      L11_2 = CheckHtmlInput
      L12_2 = A2_2.type
      L11_2 = L11_2(L12_2)
      L10_2["@type"] = L11_2
      L11_2 = CheckHtmlInput
      L12_2 = EscapeSqli
      L13_2 = A2_2.message
      L12_2, L13_2 = L12_2(L13_2)
      L11_2 = L11_2(L12_2, L13_2)
      L10_2["@message"] = L11_2
      L11_2 = os
      L11_2 = L11_2.date
      L12_2 = "%Y-%m-%d %H:%M:%S"
      L11_2 = L11_2(L12_2)
      L10_2["@created"] = L11_2
      L10_2["@read"] = 0
      L8_2(L9_2, L10_2)
      L8_2 = A1_2
      L9_2 = true
      L8_2(L9_2)
    else
      L6_2 = A1_2
      L7_2 = false
      L6_2(L7_2)
    end
  else
    L5_2 = A1_2
    L6_2 = false
    L5_2(L6_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetWhatsappGroups"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  if L2_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * from whatsapp_groups_users WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L2_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = L4_2[1]
      if L5_2 then
        L5_2 = pairs
        L6_2 = L4_2
        L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
        for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
          L11_2 = MySQL
          L11_2 = L11_2.Sync
          L11_2 = L11_2.fetchAll
          L12_2 = "SELECT * FROM whatsapp_groups WHERE number = @number"
          L13_2 = {}
          L14_2 = L10_2.number_group
          L13_2["@number"] = L14_2
          L11_2 = L11_2(L12_2, L13_2)
          if L11_2 then
            L12_2 = L11_2[1]
            if L12_2 then
              L12_2 = MySQL
              L12_2 = L12_2.Sync
              L12_2 = L12_2.fetchAll
              L13_2 = "SELECT * FROM whatsapp_groups_messages WHERE id_group = @groupid"
              L14_2 = {}
              L15_2 = L11_2[1]
              L15_2 = L15_2.id
              L14_2["@groupid"] = L15_2
              L12_2 = L12_2(L13_2, L14_2)
              L13_2 = L11_2[1]
              L14_2 = L12_2[1]
              if L14_2 then
                L14_2 = #L12_2
                L14_2 = L12_2[L14_2]
                L14_2 = L14_2.message
              end
              L13_2.message = L14_2
              L13_2 = L11_2[1]
              L14_2 = L12_2[1]
              if L14_2 then
                L14_2 = #L12_2
                L14_2 = L12_2[L14_2]
                L14_2 = L14_2.read
              end
              L13_2.read = L14_2
              L13_2 = table
              L13_2 = L13_2.insert
              L14_2 = L3_2
              L15_2 = L11_2[1]
              L13_2(L14_2, L15_2)
            end
          end
        end
      end
    end
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetGroupImage"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_groups WHERE number = @number"
    L6_2 = {}
    L6_2["@number"] = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = A1_2
      L6_2 = L4_2[1]
      L6_2 = L6_2.image
      L5_2(L6_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:EditGroupWhatsApp"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "UPDATE whatsapp_groups SET name = @name, image = @image WHERE number = @number"
      L7_2 = {}
      L8_2 = CheckHtmlInput
      L9_2 = EscapeSqli
      L10_2 = A2_2.name
      L9_2, L10_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2)
      L7_2["@name"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = A2_2.image
      L8_2 = L8_2(L9_2)
      L7_2["@image"] = L8_2
      L8_2 = A2_2.number
      L7_2["@number"] = L8_2
      L5_2(L6_2, L7_2)
      L5_2 = A1_2
      L6_2 = true
      L5_2(L6_2)
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetWhatsappGroupMessages"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_groups WHERE number = @number"
    L6_2 = {}
    L7_2 = A2_2.number
    L6_2["@number"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT avatar FROM whatsapp_accounts WHERE phone = @phone"
    L7_2 = {}
    L8_2 = L3_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@phone"] = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.fetchAll
    L7_2 = "SELECT M.*, A.name FROM whatsapp_groups_messages AS M LEFT JOIN whatsapp_accounts AS A ON A.phone = M.owner WHERE id_group = @id_group ORDER BY id ASC"
    L8_2 = {}
    L9_2 = L4_2[1]
    L9_2 = L9_2.id
    L8_2["@id_group"] = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = L6_2[1]
    if L7_2 then
      L7_2 = A1_2
      L8_2 = L6_2
      L9_2 = L5_2[1]
      L9_2 = L9_2.avatar
      L7_2(L8_2, L9_2)
    else
      L7_2 = A1_2
      L8_2 = false
      L7_2(L8_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:EditProfileWhatsApp"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "UPDATE whatsapp_accounts SET name = @name, avatar = @avatar WHERE phone = @phone"
      L7_2 = {}
      L8_2 = CheckHtmlInput
      L9_2 = EscapeSqli
      L10_2 = A2_2.name
      L9_2, L10_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2)
      L7_2["@name"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = A2_2.avatar
      L8_2 = L8_2(L9_2)
      L7_2["@avatar"] = L8_2
      L8_2 = L3_2.PlayerData
      L8_2 = L8_2.charinfo
      L8_2 = L8_2.phone
      L7_2["@phone"] = L8_2
      L5_2(L6_2, L7_2)
      L5_2 = A1_2
      L6_2 = true
      L5_2(L6_2)
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetMyStorieWhatsApp"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L5_2 = {}
    L6_2 = L2_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.phone
    L5_2["@phone"] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2[1]
    if L4_2 then
      L4_2 = A1_2
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT * FROM whatsapp_stories WHERE created BETWEEN @start AND @finish AND phone = @phone ORDER BY created DESC LIMIT 1"
      L7_2 = {}
      L8_2 = os
      L8_2 = L8_2.date
      L9_2 = "%Y-%m-%d 00:00:00"
      L8_2 = L8_2(L9_2)
      L7_2["@start"] = L8_2
      L8_2 = os
      L8_2 = L8_2.date
      L9_2 = "%Y-%m-%d 23:59:59"
      L8_2 = L8_2(L9_2)
      L7_2["@finish"] = L8_2
      L8_2 = L2_2.PlayerData
      L8_2 = L8_2.charinfo
      L8_2 = L8_2.phone
      L7_2["@phone"] = L8_2
      L5_2 = L5_2(L6_2, L7_2)
      L5_2 = L5_2[1]
      L4_2(L5_2)
    else
      L4_2 = A1_2
      L5_2 = false
      L4_2(L5_2)
    end
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:AddStorieWhatsApp"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "INSERT INTO whatsapp_stories (`phone`, `image`, `created`) VALUES(@phone, @image, @created);"
      L7_2 = {}
      L8_2 = CheckHtmlInput
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L8_2 = L8_2(L9_2)
      L7_2["@phone"] = L8_2
      L8_2 = CheckHtmlInput
      L9_2 = A2_2.image
      L8_2 = L8_2(L9_2)
      L7_2["@image"] = L8_2
      L8_2 = os
      L8_2 = L8_2.date
      L9_2 = "%Y-%m-%d %H:%M:%S"
      L8_2 = L8_2(L9_2)
      L7_2["@created"] = L8_2
      L5_2(L6_2, L7_2)
      L5_2 = A1_2
      L6_2 = true
      L5_2(L6_2)
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetStoriesWhatsApp"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2[1]
    if L5_2 then
      L5_2 = A1_2
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT S.phone, S.image, S.description, S.location, S.filter, S.created, C.name AS contact_name FROM whatsapp_stories AS S LEFT JOIN player_contacts AS C ON C.number = S.phone WHERE S.created BETWEEN @start AND @finish AND C.identifier = @user_id AND S.phone != @phone ORDER BY S.created DESC"
      L8_2 = {}
      L9_2 = os
      L9_2 = L9_2.date
      L10_2 = "%Y-%m-%d 00:00:00"
      L9_2 = L9_2(L10_2)
      L8_2["@start"] = L9_2
      L9_2 = os
      L9_2 = L9_2.date
      L10_2 = "%Y-%m-%d 23:59:59"
      L9_2 = L9_2(L10_2)
      L8_2["@finish"] = L9_2
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L8_2["@user_id"] = L9_2
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L8_2["@phone"] = L9_2
      L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetWhatsappGroup"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A1_2
    L5_2 = {}
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.fetchAll
    L7_2 = "SELECT * FROM whatsapp_groups WHERE number = @number"
    L8_2 = {}
    L9_2 = A2_2.number
    L8_2["@number"] = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2[1]
    L5_2.data = L6_2
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.fetchAll
    L7_2 = "SELECT A.name, A.avatar, U.admin, U.phone FROM whatsapp_groups_users AS U LEFT JOIN whatsapp_accounts AS A ON A.phone = U.phone WHERE U.number_group = @number ORDER BY A.name ASC"
    L8_2 = {}
    L9_2 = A2_2.number
    L8_2["@number"] = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2.users = L6_2
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.fetchAll
    L7_2 = "select admin from whatsapp_groups_users where number_group = @group AND phone = @phone"
    L8_2 = {}
    L9_2 = A2_2.number
    L8_2["@group"] = L9_2
    L9_2 = L3_2.PlayerData
    L9_2 = L9_2.charinfo
    L9_2 = L9_2.phone
    L8_2["@phone"] = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L6_2 = L6_2[1]
    L6_2 = L6_2.admin
    L5_2.myAdmin = L6_2
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:AddMemberGroupWhatsapp"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_accounts WHERE phone = @phone"
    L6_2 = {}
    L7_2 = A2_2.phone
    L6_2["@phone"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = L4_2[1]
      if L5_2 then
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.fetchAll
        L6_2 = "SELECT * FROM whatsapp_groups_users WHERE number_group = @number AND phone = @phone"
        L7_2 = {}
        L8_2 = A2_2.number
        L7_2["@number"] = L8_2
        L8_2 = A2_2.phone
        L7_2["@phone"] = L8_2
        L5_2 = L5_2(L6_2, L7_2)
        L6_2 = L5_2[1]
        if nil == L6_2 then
          L6_2 = MySQL
          L6_2 = L6_2.Sync
          L6_2 = L6_2.execute
          L7_2 = "INSERT INTO whatsapp_groups_users (`number_group`, `admin`, `phone`) VALUES(@number, @admin, @phone);"
          L8_2 = {}
          L9_2 = A2_2.number
          L8_2["@number"] = L9_2
          L8_2["@admin"] = 0
          L9_2 = A2_2.phone
          L8_2["@phone"] = L9_2
          L6_2(L7_2, L8_2)
          L6_2 = A1_2
          L7_2 = true
          L6_2(L7_2)
        else
          L6_2 = A1_2
          L7_2 = false
          L6_2(L7_2)
        end
    end
    else
      L5_2 = A1_2
      L6_2 = false
      L5_2(L6_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetWhatsappChat"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_chats WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
    L6_2 = {}
    L7_2 = L3_2.PlayerData
    L7_2 = L7_2.charinfo
    L7_2 = L7_2.phone
    L6_2["@phone"] = L7_2
    L7_2 = A2_2.phone
    L6_2["@number"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT avatar FROM whatsapp_accounts WHERE phone = @phone"
    L7_2 = {}
    L8_2 = L3_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@phone"] = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L4_2[1]
    if L6_2 then
      L6_2 = A1_2
      L7_2 = json
      L7_2 = L7_2.decode
      L8_2 = L4_2[1]
      L8_2 = L8_2.messages
      L7_2 = L7_2(L8_2)
      L8_2 = L5_2[1]
      L8_2 = L8_2.avatar
      L6_2(L7_2, L8_2)
    else
      L6_2 = A1_2
      L7_2 = false
      L6_2(L7_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:server:GetPhoneData"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    if not A2_2 then
      A2_2 = L4_2.identifier
    end
    if nil ~= L4_2 then
      L5_2 = {}
      L6_2 = {}
      L5_2.Applications = L6_2
      L6_2 = {}
      L5_2.PlayerContacts = L6_2
      L6_2 = {}
      L5_2.MentionedTweets = L6_2
      L6_2 = {}
      L5_2.Chats = L6_2
      L6_2 = {}
      L5_2.Hashtags = L6_2
      L6_2 = {}
      L5_2.SelfTweets = L6_2
      L6_2 = {}
      L5_2.Invoices = L6_2
      L6_2 = {}
      L5_2.Garage = L6_2
      L6_2 = {}
      L5_2.Mails = L6_2
      L6_2 = {}
      L5_2.Adverts = L6_2
      L6_2 = {}
      L5_2.CryptoCurrency = L6_2
      L6_2 = {}
      L5_2.CryptoTransactions = L6_2
      L6_2 = {}
      L5_2.Tweets = L6_2
      L6_2 = L4_2.PlayerData
      L6_2 = L6_2.metadata
      L6_2 = L6_2.phone
      L6_2 = L6_2.InstalledApps
      L5_2.InstalledApps = L6_2
      L6_2 = L8_1
      L5_2.Youtube = L6_2
      L5_2.Ringtone = nil
      L6_2 = {}
      L5_2.ChatRooms = L6_2
      L6_2 = L6_1
      L5_2.Adverts = L6_2
      L6_2 = MySQL
      L6_2 = L6_2.Async
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT * FROM player_contacts WHERE `identifier` = '"
      L8_2 = L4_2.PlayerData
      L8_2 = L8_2.charinfo
      L8_2 = L8_2.phone
      L9_2 = "' ORDER BY `name` ASC"
      L7_2 = L7_2 .. L8_2 .. L9_2
      L8_2 = {}
      function L9_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
        L1_3 = {}
        L2_3 = A0_3[1]
        if nil ~= L2_3 then
          L2_3 = pairs
          L3_3 = A0_3
          L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
          for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
            L8_3 = GetOnlineStatus
            L9_3 = L7_3.number
            L8_3 = L8_3(L9_3)
            L7_3.status = L8_3
          end
        end
        L2_3 = pairs
        L3_3 = Config
        L3_3 = L3_3.Jobs
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = table
          L8_3 = L8_3.insert
          L9_3 = A0_3
          L10_3 = {}
          L11_3 = L7_3.job
          L10_3.identifier = L11_3
          L11_3 = L7_3.name
          L10_3.name = L11_3
          L11_3 = L7_3.job
          L10_3.number = L11_3
          L8_3(L9_3, L10_3)
        end
        L5_2.PlayerContacts = A0_3
        L2_3 = {}
        L5_2.Garage = L2_3
        L2_3 = MySQL
        L2_3 = L2_3.Async
        L2_3 = L2_3.fetchAll
        L3_3 = "SELECT * FROM `player_mails` WHERE `identifier` = \""
        L4_3 = A2_2
        L5_3 = "\" ORDER BY `date` ASC"
        L3_3 = L3_3 .. L4_3 .. L5_3
        L4_3 = {}
        function L5_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
          L1_4 = A0_4[1]
          if nil ~= L1_4 then
            L1_4 = pairs
            L2_4 = A0_4
            L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
            for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
              L7_4 = A0_4[L5_4]
              L7_4 = L7_4.button
              if nil ~= L7_4 then
                L7_4 = A0_4[L5_4]
                L8_4 = json
                L8_4 = L8_4.decode
                L9_4 = A0_4[L5_4]
                L9_4 = L9_4.button
                L8_4 = L8_4(L9_4)
                L7_4.button = L8_4
              end
            end
            L5_2.Mails = A0_4
          end
          L1_4 = MySQL
          L1_4 = L1_4.Sync
          L1_4 = L1_4.fetchAll
          L2_4 = "SELECT * FROM `player_gallery` WHERE `identifier` = \""
          L3_4 = A2_2
          L4_4 = "\" ORDER BY `created_at` DESC"
          L2_4 = L2_4 .. L3_4 .. L4_4
          L1_4 = L1_4(L2_4)
          L2_4 = L1_4[1]
          if nil ~= L2_4 then
            L5_2.Photos = L1_4
          end
          L3_4 = L4_2.identifier
          L2_4 = L3_1
          L2_4 = L2_4[L3_4]
          if nil ~= L2_4 then
            L3_4 = L4_2.identifier
            L2_4 = L3_1
            L2_4 = L2_4[L3_4]
            L5_2.Applications = L2_4
          end
          L3_4 = L4_2.identifier
          L2_4 = L4_1
          L2_4 = L2_4[L3_4]
          if nil ~= L2_4 then
            L3_4 = L4_2.identifier
            L2_4 = L4_1
            L2_4 = L2_4[L3_4]
            L5_2.MentionedTweets = L2_4
          end
          L2_4 = L5_1
          if nil ~= L2_4 then
            L2_4 = next
            L3_4 = L5_1
            L2_4 = L2_4(L3_4)
            if nil ~= L2_4 then
              L2_4 = L5_1
              L5_2.Hashtags = L2_4
            end
          end
          while true do
            L2_4 = GetPlayerFromIdFramework
            L3_4 = L3_2
            L2_4 = L2_4(L3_4)
            if nil ~= L2_4 then
              L2_4 = GetPlayerFromIdFramework
              L3_4 = L3_2
              L2_4 = L2_4(L3_4)
              L2_4 = L2_4.PlayerData
              if nil ~= L2_4 then
                L2_4 = GetPlayerFromIdFramework
                L3_4 = L3_2
                L2_4 = L2_4(L3_4)
                L2_4 = L2_4.PlayerData
                L2_4 = L2_4.charinfo
                if nil ~= L2_4 then
                  break
                end
              end
            end
            L2_4 = Wait
            L3_4 = 700
            L2_4(L3_4)
          end
          L2_4 = GetPlayerFromIdFramework
          L3_4 = L3_2
          L2_4 = L2_4(L3_4)
          L2_4 = L2_4.PlayerData
          L2_4 = L2_4.charinfo
          L5_2.charinfo = L2_4
          L2_4 = MySQL
          L2_4 = L2_4.Sync
          L2_4 = L2_4.fetchAll
          L3_4 = "SELECT id, room_code, room_name, room_owner_id, room_owner_name, room_members, is_masked, is_pinned, IF(room_pin = '' or room_pin IS NULL, false, true) AS protected FROM phone_chatrooms"
          L2_4 = L2_4(L3_4)
          L3_4 = L2_4[1]
          if L3_4 then
            L5_2.ChatRooms = L2_4
            ChatRooms = L2_4
          end
          L3_4 = {}
          L5_2.Invoices = L3_4
          L3_4 = A1_2
          L4_4 = L5_2
          L5_4 = Config
          L5_4 = L5_4.Webhook
          L3_4(L4_4, L5_4)
        end
        L2_3(L3_3, L4_3, L5_3)
      end
      L6_2(L7_2, L8_2, L9_2)
    end
  else
    L5_2 = A1_2
    L6_2 = false
    L5_2(L6_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:server:LoadAdverts"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM `yellowpages_posts`  ORDER BY `id` DESC LIMIT 30"
  L5_2 = {}
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = A0_3[1]
    if nil ~= L1_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = {}
        L8_3 = {}
        L9_3 = L6_3.mesaj
        L8_3.mesaj = L9_3
        L9_3 = L6_3.isim
        L8_3.isim = L9_3
        L9_3 = L6_3.telno
        L8_3.telno = L9_3
        L7_3 = L8_3
        L8_3 = L6_3.resim
        if L8_3 then
          L8_3 = L6_3.resim
          L7_3.resim = L8_3
        end
        L8_3 = table
        L8_3 = L8_3.insert
        L9_3 = L2_2
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      end
      L1_3 = A1_2
      L2_3 = L2_2
      L1_3(L2_3)
    else
      L1_3 = A1_2
      L2_3 = nil
      L1_3(L2_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:deleteTweet"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:deleteTweet"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM twitter_tweets WHERE id = @id"
  L3_2 = {}
  L3_2["@id"] = A0_2
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:kaydetResim"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:kaydetResim"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = GetPlayerFromIdFramework
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "INSERT INTO `player_gallery` (`identifier`, `resim`) VALUES ('"
  L4_2 = L1_2.identifier
  L5_2 = "', '"
  L6_2 = CheckHtmlInput
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = "' )"
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
  L4_2 = {}
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:quitGroup"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if A2_2 then
    L4_2 = A2_2.phone
    if L4_2 then
      L4_2 = tostring
      L5_2 = A2_2.phone
      L4_2 = L4_2(L5_2)
      A2_2.phone = L4_2
    end
    L4_2 = A2_2.number
    if L4_2 then
      L4_2 = tostring
      L5_2 = A2_2.number
      L4_2 = L4_2(L5_2)
      A2_2.number = L4_2
    end
    L4_2 = MySQL
    L4_2 = L4_2.Sync
    L4_2 = L4_2.fetchAll
    L5_2 = "SELECT * FROM whatsapp_groups_users WHERE phone = @phone AND number_group = @groupnumber"
    L6_2 = {}
    L7_2 = A2_2.phone
    if not L7_2 then
      L7_2 = L3_2.PlayerData
      L7_2 = L7_2.charinfo
      L7_2 = L7_2.phone
    end
    L6_2["@phone"] = L7_2
    L7_2 = A2_2.number
    L6_2["@groupnumber"] = L7_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      L5_2 = L4_2[1]
      if L5_2 then
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "DELETE FROM whatsapp_groups_users WHERE phone = @phone AND number_group = @groupnumber"
        L7_2 = {}
        L8_2 = A2_2.phone
        if not L8_2 then
          L8_2 = L3_2.PlayerData
          L8_2 = L8_2.charinfo
          L8_2 = L8_2.phone
        end
        L7_2["@phone"] = L8_2
        L8_2 = A2_2.number
        L7_2["@groupnumber"] = L8_2
        L5_2(L6_2, L7_2)
        L5_2 = A1_2
        L6_2 = true
        L5_2(L6_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:WPDeleteMessage"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = "SELECT * from whatsapp_chats where phone = @phone AND number = @number OR phone = @number AND number = @phone"
  L5_2 = {}
  L6_2 = L3_2.PlayerData
  L6_2 = L6_2.charinfo
  L6_2 = L6_2.phone
  L5_2["@phone"] = L6_2
  L6_2 = A2_2.phone
  L5_2["@number"] = L6_2
  L6_2 = A2_2.type
  if 2 == L6_2 then
    L4_2 = "SELECT * from whatsapp_groups_messages where id = ?"
    L6_2 = {}
    L7_2 = A2_2.chatid
    L6_2[1] = L7_2
    L5_2 = L6_2
  end
  L6_2 = MySQL
  L6_2 = L6_2.Sync
  L6_2 = L6_2.fetchAll
  L7_2 = L4_2
  L8_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = L6_2[1]
  if L7_2 then
    L7_2 = A2_2.type
    if 2 == L7_2 then
      L7_2 = MySQL
      L7_2 = L7_2.Sync
      L7_2 = L7_2.execute
      L8_2 = "DELETE FROM whatsapp_groups_messages where id = ?"
      L9_2 = {}
      L10_2 = A2_2.chatid
      L9_2[1] = L10_2
      L7_2(L8_2, L9_2)
      L7_2 = A1_2
      L8_2 = true
      L7_2(L8_2)
    else
      L7_2 = json
      L7_2 = L7_2.decode
      L8_2 = L6_2[1]
      L8_2 = L8_2.messages
      L7_2 = L7_2(L8_2)
      L8_2 = pairs
      L9_2 = L7_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = A2_2.messageid
        L14_2 = L14_2 + 1
        if L12_2 == L14_2 then
          L14_2 = table
          L14_2 = L14_2.remove
          L15_2 = L7_2
          L16_2 = L12_2
          L14_2(L15_2, L16_2)
          L14_2 = MySQL
          L14_2 = L14_2.Sync
          L14_2 = L14_2.execute
          L15_2 = "UPDATE whatsapp_chats SET messages = ? WHERE id = ?"
          L16_2 = {}
          L17_2 = CheckHtmlInput
          L18_2 = json
          L18_2 = L18_2.encode
          L19_2 = L7_2
          L18_2, L19_2 = L18_2(L19_2)
          L17_2 = L17_2(L18_2, L19_2)
          L18_2 = L6_2[1]
          L18_2 = L18_2.id
          L16_2[1] = L17_2
          L16_2[2] = L18_2
          L14_2(L15_2, L16_2)
          L14_2 = A1_2
          L15_2 = true
          L14_2(L15_2)
          break
        end
      end
    end
  else
    L7_2 = A1_2
    L8_2 = false
    L7_2(L8_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:AddAccountWhatsApp"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if A2_2 then
    L4_2 = A2_2.name
    if L4_2 then
      L4_2 = A2_2.phone
      if L4_2 then
        L4_2 = A2_2.password
        if L4_2 then
          L4_2 = MySQL
          L4_2 = L4_2.Sync
          L4_2 = L4_2.execute
          L5_2 = "INSERT INTO whatsapp_accounts (`id`, `name`, `phone`, `password`, `avatar`) VALUES(@user_id, @name, @phone, @password, @avatar)"
          L6_2 = {}
          L7_2 = L3_2.identifier
          L6_2["@user_id"] = L7_2
          L7_2 = CheckHtmlInput
          L8_2 = EscapeSqli
          L9_2 = A2_2.name
          L8_2, L9_2 = L8_2(L9_2)
          L7_2 = L7_2(L8_2, L9_2)
          L6_2["@name"] = L7_2
          L7_2 = A2_2.phone
          L6_2["@phone"] = L7_2
          L7_2 = EscapeSqli
          L8_2 = A2_2.password
          L7_2 = L7_2(L8_2)
          L6_2["@password"] = L7_2
          L6_2["@avatar"] = "default.png"
          L4_2(L5_2, L6_2)
          L4_2 = A1_2
          L5_2 = true
          L4_2(L5_2)
      end
    end
  end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:server:InstallApplication"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:InstallApplication"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PlayerData
  L3_2 = L3_2.metadata
  L3_2 = L3_2.phone
  L3_2 = L3_2.InstalledApps
  if not L3_2 then
    L3_2 = L2_2.PlayerData
    L3_2 = L3_2.metadata
    L3_2 = L3_2.phone
    L4_2 = {}
    L3_2.InstalledApps = L4_2
  end
  L3_2 = L2_2.PlayerData
  L3_2 = L3_2.metadata
  L3_2 = L3_2.phone
  L3_2 = L3_2.InstalledApps
  L3_2[A0_2] = A0_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = L2_2.SetMetaData
    L4_2 = "phone"
    L5_2 = L2_2.PlayerData
    L5_2 = L5_2.metadata
    L5_2 = L5_2.phone
    L3_2(L4_2, L5_2)
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = L2_2.Functions
      L3_2 = L3_2.SetMetaData
      L4_2 = "phone"
      L5_2 = L2_2.PlayerData
      L5_2 = L5_2.metadata
      L5_2 = L5_2.phone
      L3_2(L4_2, L5_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:server:RemoveInstallation"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:RemoveInstallation"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PlayerData
  L3_2 = L3_2.metadata
  L3_2 = L3_2.phone
  L3_2 = L3_2.InstalledApps
  L3_2[A0_2] = nil
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = L2_2.SetMetaData
    L4_2 = "phone"
    L5_2 = L2_2.PlayerData
    L5_2 = L5_2.metadata
    L5_2 = L5_2.phone
    L3_2(L4_2, L5_2)
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = L2_2.Functions
      L3_2 = L3_2.SetMetaData
      L4_2 = "phone"
      L5_2 = L2_2.PlayerData
      L5_2 = L5_2.metadata
      L5_2 = L5_2.phone
      L3_2(L4_2, L5_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:SilResim"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:SilResim"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = GetPlayerFromIdFramework
  L2_2 = source
  L1_2 = L1_2(L2_2)
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "DELETE FROM player_gallery WHERE identifier = @identifier AND id = @resim"
  L4_2 = {}
  L5_2 = L1_2.identifier
  L4_2["@identifier"] = L5_2
  L4_2["@resim"] = A0_2
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:ResimSilinsta"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:ResimSilinsta"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.execute
  L4_2 = "DELETE FROM instagram_posts WHERE id = @id AND image = @resim"
  L5_2 = {}
  L5_2["@id"] = A1_2
  L5_2["@resim"] = A0_2
  L3_2(L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:AddActivities"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:AddActivities"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = L0_1
    L3_2 = {}
    L2_2[A0_2] = L3_2
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:GetActivities"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L5_2 = L2_2.identifier
  L4_2 = L0_1
  L4_2 = L4_2[L5_2]
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:NotEkle"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:NotEkle"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = MySQL
    L4_2 = L4_2.Async
    L4_2 = L4_2.execute
    L5_2 = "INSERT INTO `player_notes` (`identifier`, `baslik`, `aciklama`) VALUES ('"
    L6_2 = L3_2.identifier
    L7_2 = "', '"
    L8_2 = CheckHtmlInput
    L9_2 = EscapeSqli
    L10_2 = A0_2
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
    L9_2 = "', '"
    L10_2 = CheckHtmlInput
    L11_2 = EscapeSqli
    L12_2 = A1_2
    L11_2, L12_2 = L11_2(L12_2)
    L10_2 = L10_2(L11_2, L12_2)
    L11_2 = "' )"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
    L6_2 = {}
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = TriggerClientEvent
      L1_3 = "qs-smartphone:updateNotes"
      L2_3 = L2_2
      L0_3(L1_3, L2_3)
    end
    L4_2(L5_2, L6_2, L7_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:NotGuncelle"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:NotGuncelle"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = source
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "UPDATE `player_notes` SET `baslik` = \""
  L7_2 = CheckHtmlInput
  L8_2 = EscapeSqli
  L9_2 = A1_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L8_2 = "\", `aciklama` = \""
  L9_2 = CheckHtmlInput
  L10_2 = EscapeSqli
  L11_2 = A2_2
  L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = "\" WHERE `id` = \""
  L11_2 = A0_2
  L12_2 = "\" AND `identifier` = \""
  L13_2 = L4_2.identifier
  L14_2 = "\""
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
  L7_2 = {}
  function L8_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerClientEvent
    L1_3 = "qs-smartphone:updateNotes"
    L2_3 = L3_2
    L0_3(L1_3, L2_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:biyoguncelle"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:biyoguncelle"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = GetPlayerFromIdFramework
    L2_2 = source
    L1_2 = L1_2(L2_2)
    L2_2 = MySQL
    L2_2 = L2_2.Async
    L2_2 = L2_2.execute
    L3_2 = "UPDATE `users` SET `biyografi` = \""
    L4_2 = CheckHtmlInput
    L5_2 = EscapeSqli
    L6_2 = A0_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    L5_2 = "\" WHERE  `identifier` = \""
    L6_2 = L1_2.identifier
    L7_2 = "\""
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L4_2 = {}
    L2_2(L3_2, L4_2)
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = GetPlayerFromIdFramework
      L2_2 = source
      L1_2 = L1_2(L2_2)
      L2_2 = MySQL
      L2_2 = L2_2.Async
      L2_2 = L2_2.execute
      L3_2 = "UPDATE "
      L4_2 = Config
      L4_2 = L4_2.QBCoreFrameworkPlayersTable
      L5_2 = " SET `biyografi` = \""
      L6_2 = CheckHtmlInput
      L7_2 = EscapeSqli
      L8_2 = A0_2
      L7_2, L8_2, L9_2 = L7_2(L8_2)
      L6_2 = L6_2(L7_2, L8_2, L9_2)
      L7_2 = "\" WHERE  `citizenid` = \""
      L8_2 = L1_2.identifier
      L9_2 = "\""
      L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
      L4_2 = {}
      L2_2(L3_2, L4_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:NotSil"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:NotSil"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "DELETE FROM `player_notes` WHERE `id` = \""
  L5_2 = A0_2
  L6_2 = "\" AND `identifier` = \""
  L7_2 = L2_2.identifier
  L8_2 = "\""
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = {}
  function L6_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerClientEvent
    L1_3 = "qs-smartphone:updateNotes"
    L2_3 = L1_2
    L0_3(L1_3, L2_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.Sync
    L1_2 = L1_2.fetchAll
    L2_2 = "SELECT charinfo, metadata FROM users WHERE identifier = @id"
    L3_2 = {}
    L3_2["@id"] = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = {}
    if L1_2 then
      L3_2 = json
      L3_2 = L3_2.decode
      L4_2 = L1_2[1]
      L4_2 = L4_2.charinfo
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.firstname
      L4_2 = " "
      L5_2 = json
      L5_2 = L5_2.decode
      L6_2 = L1_2[1]
      L6_2 = L6_2.charinfo
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.lastname
      L3_2 = L3_2 .. L4_2 .. L5_2
      if L3_2 then
        goto lbl_34
      end
    end
    L3_2 = "Not finded"
    ::lbl_34::
    L2_2.name = L3_2
    L3_2 = json
    L3_2 = L3_2.decode
    L4_2 = L1_2[1]
    L4_2 = L4_2.metadata
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.phone
    L3_2 = L3_2.profilepicture
    L2_2.profilepicture = L3_2
    return L2_2
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = MySQL
      L1_2 = L1_2.Sync
      L1_2 = L1_2.fetchAll
      L2_2 = "SELECT charinfo, metadata FROM "
      L3_2 = Config
      L3_2 = L3_2.QBCoreFrameworkPlayersTable
      L4_2 = " WHERE citizenid = @id"
      L2_2 = L2_2 .. L3_2 .. L4_2
      L3_2 = {}
      L3_2["@id"] = A0_2
      L1_2 = L1_2(L2_2, L3_2)
      L2_2 = {}
      if L1_2 then
        L3_2 = json
        L3_2 = L3_2.decode
        L4_2 = L1_2[1]
        L4_2 = L4_2.charinfo
        L3_2 = L3_2(L4_2)
        L3_2 = L3_2.firstname
        L4_2 = " "
        L5_2 = json
        L5_2 = L5_2.decode
        L6_2 = L1_2[1]
        L6_2 = L6_2.charinfo
        L5_2 = L5_2(L6_2)
        L5_2 = L5_2.lastname
        L3_2 = L3_2 .. L4_2 .. L5_2
        if L3_2 then
          goto lbl_82
        end
      end
      L3_2 = "Not finded"
      ::lbl_82::
      L2_2.name = L3_2
      L3_2 = json
      L3_2 = L3_2.decode
      L4_2 = L1_2[1]
      L4_2 = L4_2.metadata
      L3_2 = L3_2(L4_2)
      L3_2 = L3_2.phone
      L3_2 = L3_2.profilepicture
      L2_2.profilepicture = L3_2
      return L2_2
    end
  end
end
GetUserData = L10_1
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:RemoveMail"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:RemoveMail"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "DELETE FROM `player_mails` WHERE `mailid` = \""
  L5_2 = A0_2
  L6_2 = "\" AND `identifier` = \""
  L7_2 = L2_2.identifier
  L8_2 = "\""
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = {}
  L3_2(L4_2, L5_2)
  L3_2 = SetTimeout
  L4_2 = 100
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchAll
    L1_3 = "SELECT * FROM `player_mails` WHERE `identifier` = \""
    L2_3 = L2_2.identifier
    L3_3 = "\" ORDER BY `date` ASC"
    L1_3 = L1_3 .. L2_3 .. L3_3
    L2_3 = {}
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
      L1_4 = A0_4[1]
      if nil ~= L1_4 then
        L1_4 = pairs
        L2_4 = A0_4
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L7_4 = A0_4[L5_4]
          L7_4 = L7_4.button
          if nil ~= L7_4 then
            L7_4 = A0_4[L5_4]
            L8_4 = json
            L8_4 = L8_4.decode
            L9_4 = A0_4[L5_4]
            L9_4 = L9_4.button
            L8_4 = L8_4(L9_4)
            L7_4.button = L8_4
          end
        end
      end
      L1_4 = TriggerClientEvent
      L2_4 = "qs-smartphone:client:UpdateMails"
      L3_4 = L1_2
      L4_4 = A0_4
      L1_4(L2_4, L3_4, L4_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L3_2(L4_2, L5_2)
end
L10_1(L11_1, L12_1)
function L10_1()
  local L0_2, L1_2, L2_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 111111
  L2_2 = 999999
  return L0_2(L1_2, L2_2)
end
GenerateMailId = L10_1
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:UpdateAvailableStatus"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:UpdateAvailableStatus"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = notAvailable
  L4_2 = L2_2.PlayerData
  L4_2 = L4_2.charinfo
  L4_2 = L4_2.phone
  L3_2[L4_2] = A0_2
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:sendNewMail"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:sendNewMail"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.button
  if nil == L3_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.execute
    L4_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"
    L5_2 = L2_2.identifier
    L6_2 = "', '"
    L7_2 = CheckHtmlInput
    L8_2 = EscapeSqli
    L9_2 = A0_2.sender
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L8_2 = "', '"
    L9_2 = CheckHtmlInput
    L10_2 = EscapeSqli
    L11_2 = A0_2.subject
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = "', '"
    L11_2 = CheckHtmlInput
    L12_2 = EscapeSqli
    L13_2 = A0_2.message
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L12_2 = "', '"
    L13_2 = GenerateMailId
    L13_2 = L13_2()
    L14_2 = "', '0')"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
    L5_2 = {}
    L3_2(L4_2, L5_2)
  else
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.execute
    L4_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"
    L5_2 = L2_2.identifier
    L6_2 = "', '"
    L7_2 = CheckHtmlInput
    L8_2 = EscapeSqli
    L9_2 = A0_2.sender
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L8_2 = "', '"
    L9_2 = CheckHtmlInput
    L10_2 = EscapeSqli
    L11_2 = A0_2.subject
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    L10_2 = "', '"
    L11_2 = CheckHtmlInput
    L12_2 = EscapeSqli
    L13_2 = A0_2.message
    L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2)
    L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    L12_2 = "', '"
    L13_2 = GenerateMailId
    L13_2 = L13_2()
    L14_2 = "', '0', '"
    L15_2 = json
    L15_2 = L15_2.encode
    L16_2 = A0_2.button
    L15_2 = L15_2(L16_2)
    L16_2 = "')"
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L5_2 = {}
    L3_2(L4_2, L5_2)
  end
  L3_2 = TriggerClientEvent
  L4_2 = "qs-smartphone:client:NewMailNotify"
  L5_2 = L1_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = SetTimeout
  L4_2 = 200
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchAll
    L1_3 = "SELECT * FROM `player_mails` WHERE `identifier` = \""
    L2_3 = L2_2.identifier
    L3_3 = "\" ORDER BY `date` DESC"
    L1_3 = L1_3 .. L2_3 .. L3_3
    L2_3 = {}
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
      L1_4 = A0_4[1]
      if nil ~= L1_4 then
        L1_4 = pairs
        L2_4 = A0_4
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L7_4 = A0_4[L5_4]
          L7_4 = L7_4.button
          if nil ~= L7_4 then
            L7_4 = A0_4[L5_4]
            L8_4 = json
            L8_4 = L8_4.decode
            L9_4 = A0_4[L5_4]
            L9_4 = L9_4.button
            L8_4 = L8_4(L9_4)
            L7_4.button = L8_4
          end
        end
      end
      L1_4 = TriggerClientEvent
      L2_4 = "qs-smartphone:client:UpdateMails"
      L3_4 = L1_2
      L4_4 = A0_4
      L1_4(L2_4, L3_4, L4_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L3_2(L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:sendNewMailToOffline"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:sendNewMailToOffline"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = A0_2
  L3_2 = A1_2
  L4_2 = Config
  L4_2 = L4_2.Framework
  if "ESX" == L4_2 then
    L4_2 = ESX
    L4_2 = L4_2.GetPlayerFromIdentifier
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = L4_2.source
      L6_2 = L3_2.button
      if nil == L6_2 then
        L6_2 = MySQL
        L6_2 = L6_2.Async
        L6_2 = L6_2.execute
        L7_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"
        L8_2 = L2_2
        L9_2 = "', '"
        L10_2 = CheckHtmlInput
        L11_2 = L3_2.sender
        L10_2 = L10_2(L11_2)
        L11_2 = "', '"
        L12_2 = CheckHtmlInput
        L13_2 = L3_2.subject
        L12_2 = L12_2(L13_2)
        L13_2 = "', '"
        L14_2 = CheckHtmlInput
        L15_2 = L3_2.message
        L14_2 = L14_2(L15_2)
        L15_2 = "', '"
        L16_2 = GenerateMailId
        L16_2 = L16_2()
        L17_2 = "', '0')"
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2
        L8_2 = {}
        L6_2(L7_2, L8_2)
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:client:NewMailNotify"
        L8_2 = L5_2
        L9_2 = L3_2
        L6_2(L7_2, L8_2, L9_2)
      else
        L6_2 = MySQL
        L6_2 = L6_2.Async
        L6_2 = L6_2.execute
        L7_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"
        L8_2 = L2_2
        L9_2 = "', '"
        L10_2 = CheckHtmlInput
        L11_2 = EscapeSqli
        L12_2 = L3_2.sender
        L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L11_2(L12_2)
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L11_2 = "', '"
        L12_2 = CheckHtmlInput
        L13_2 = EscapeSqli
        L14_2 = L3_2.subject
        L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2(L14_2)
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L13_2 = "', '"
        L14_2 = CheckHtmlInput
        L15_2 = EscapeSqli
        L16_2 = L3_2.message
        L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
        L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L15_2 = "', '"
        L16_2 = GenerateMailId
        L16_2 = L16_2()
        L17_2 = "', '0', '"
        L18_2 = EscapeSqli
        L19_2 = json
        L19_2 = L19_2.encode
        L20_2 = L3_2.button
        L19_2, L20_2 = L19_2(L20_2)
        L18_2 = L18_2(L19_2, L20_2)
        L19_2 = "')"
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
        L8_2 = {}
        L6_2(L7_2, L8_2)
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:client:NewMailNotify"
        L8_2 = L5_2
        L9_2 = L3_2
        L6_2(L7_2, L8_2, L9_2)
      end
      L6_2 = SetTimeout
      L7_2 = 200
      function L8_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = MySQL
        L0_3 = L0_3.Async
        L0_3 = L0_3.fetchAll
        L1_3 = "SELECT * FROM `player_mails` WHERE `identifier` = \""
        L2_3 = L2_2
        L3_3 = "\" ORDER BY `date` DESC"
        L1_3 = L1_3 .. L2_3 .. L3_3
        L2_3 = {}
        function L3_3(A0_4)
          local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
          L1_4 = A0_4[1]
          if nil ~= L1_4 then
            L1_4 = pairs
            L2_4 = A0_4
            L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
            for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
              L7_4 = A0_4[L5_4]
              L7_4 = L7_4.button
              if nil ~= L7_4 then
                L7_4 = A0_4[L5_4]
                L8_4 = json
                L8_4 = L8_4.decode
                L9_4 = A0_4[L5_4]
                L9_4 = L9_4.button
                L8_4 = L8_4(L9_4)
                L7_4.button = L8_4
              end
            end
          end
          L1_4 = TriggerClientEvent
          L2_4 = "qs-smartphone:client:UpdateMails"
          L3_4 = L5_2
          L4_4 = A0_4
          L1_4(L2_4, L3_4, L4_4)
        end
        L0_3(L1_3, L2_3, L3_3)
      end
      L6_2(L7_2, L8_2)
    else
      L5_2 = L3_2.button
      if nil == L5_2 then
        L5_2 = MySQL
        L5_2 = L5_2.Async
        L5_2 = L5_2.execute
        L6_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"
        L7_2 = L2_2
        L8_2 = "', '"
        L9_2 = CheckHtmlInput
        L10_2 = EscapeSqli
        L11_2 = L3_2.sender
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2)
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L10_2 = "', '"
        L11_2 = CheckHtmlInput
        L12_2 = EscapeSqli
        L13_2 = L3_2.subject
        L12_2 = L12_2(L13_2)
        L13_2 = "', '"
        L14_2 = EscapeSqli
        L15_2 = L3_2.message
        L14_2 = L14_2(L15_2)
        L12_2 = L12_2 .. L13_2 .. L14_2
        L11_2 = L11_2(L12_2)
        L12_2 = "', '"
        L13_2 = GenerateMailId
        L13_2 = L13_2()
        L14_2 = "', '0')"
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
        L7_2 = {}
        L5_2(L6_2, L7_2)
      else
        L5_2 = MySQL
        L5_2 = L5_2.Async
        L5_2 = L5_2.execute
        L6_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"
        L7_2 = L2_2
        L8_2 = "', '"
        L9_2 = CheckHtmlInput
        L10_2 = EscapeSqli
        L11_2 = L3_2.sender
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2)
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L10_2 = "', '"
        L11_2 = CheckHtmlInput
        L12_2 = EscapeSqli
        L13_2 = L3_2.subject
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2(L13_2)
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L12_2 = "', '"
        L13_2 = CheckHtmlInput
        L14_2 = EscapeSqli
        L15_2 = L3_2.message
        L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2(L15_2)
        L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
        L14_2 = "', '"
        L15_2 = GenerateMailId
        L15_2 = L15_2()
        L16_2 = "', '0', '"
        L17_2 = EscapeSqli
        L18_2 = json
        L18_2 = L18_2.encode
        L19_2 = L3_2.button
        L18_2, L19_2, L20_2 = L18_2(L19_2)
        L17_2 = L17_2(L18_2, L19_2, L20_2)
        L18_2 = "')"
        L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
        L7_2 = {}
        L5_2(L6_2, L7_2)
      end
    end
  else
    L4_2 = Config
    L4_2 = L4_2.Framework
    if "QBCore" == L4_2 then
      L4_2 = QBCore
      L4_2 = L4_2.Functions
      L4_2 = L4_2.GetPlayerByCitizenId
      L5_2 = L2_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L5_2 = L4_2.PlayerData
        L5_2 = L5_2.source
        L6_2 = L3_2.button
        if nil == L6_2 then
          L6_2 = MySQL
          L6_2 = L6_2.Async
          L6_2 = L6_2.execute
          L7_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"
          L8_2 = L2_2
          L9_2 = "', '"
          L10_2 = CheckHtmlInput
          L11_2 = L3_2.sender
          L10_2 = L10_2(L11_2)
          L11_2 = "', '"
          L12_2 = CheckHtmlInput
          L13_2 = L3_2.subject
          L12_2 = L12_2(L13_2)
          L13_2 = "', '"
          L14_2 = CheckHtmlInput
          L15_2 = L3_2.message
          L14_2 = L14_2(L15_2)
          L15_2 = "', '"
          L16_2 = GenerateMailId
          L16_2 = L16_2()
          L17_2 = "', '0')"
          L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2
          L8_2 = {}
          L6_2(L7_2, L8_2)
          L6_2 = TriggerClientEvent
          L7_2 = "qs-smartphone:client:NewMailNotify"
          L8_2 = L5_2
          L9_2 = L3_2
          L6_2(L7_2, L8_2, L9_2)
        else
          L6_2 = MySQL
          L6_2 = L6_2.Async
          L6_2 = L6_2.execute
          L7_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"
          L8_2 = L2_2
          L9_2 = "', '"
          L10_2 = CheckHtmlInput
          L11_2 = EscapeSqli
          L12_2 = L3_2.sender
          L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L11_2(L12_2)
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L11_2 = "', '"
          L12_2 = CheckHtmlInput
          L13_2 = EscapeSqli
          L14_2 = L3_2.subject
          L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L13_2(L14_2)
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L13_2 = "', '"
          L14_2 = CheckHtmlInput
          L15_2 = EscapeSqli
          L16_2 = L3_2.message
          L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L15_2(L16_2)
          L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L15_2 = "', '"
          L16_2 = GenerateMailId
          L16_2 = L16_2()
          L17_2 = "', '0', '"
          L18_2 = EscapeSqli
          L19_2 = json
          L19_2 = L19_2.encode
          L20_2 = L3_2.button
          L19_2, L20_2 = L19_2(L20_2)
          L18_2 = L18_2(L19_2, L20_2)
          L19_2 = "')"
          L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
          L8_2 = {}
          L6_2(L7_2, L8_2)
          L6_2 = TriggerClientEvent
          L7_2 = "qs-smartphone:client:NewMailNotify"
          L8_2 = L5_2
          L9_2 = L3_2
          L6_2(L7_2, L8_2, L9_2)
        end
        L6_2 = SetTimeout
        L7_2 = 200
        function L8_2()
          local L0_3, L1_3, L2_3, L3_3
          L0_3 = MySQL
          L0_3 = L0_3.Async
          L0_3 = L0_3.fetchAll
          L1_3 = "SELECT * FROM `player_mails` WHERE `identifier` = \""
          L2_3 = L2_2
          L3_3 = "\" ORDER BY `date` DESC"
          L1_3 = L1_3 .. L2_3 .. L3_3
          L2_3 = {}
          function L3_3(A0_4)
            local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
            L1_4 = A0_4[1]
            if nil ~= L1_4 then
              L1_4 = pairs
              L2_4 = A0_4
              L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
              for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
                L7_4 = A0_4[L5_4]
                L7_4 = L7_4.button
                if nil ~= L7_4 then
                  L7_4 = A0_4[L5_4]
                  L8_4 = json
                  L8_4 = L8_4.decode
                  L9_4 = A0_4[L5_4]
                  L9_4 = L9_4.button
                  L8_4 = L8_4(L9_4)
                  L7_4.button = L8_4
                end
              end
            end
            L1_4 = TriggerClientEvent
            L2_4 = "qs-smartphone:client:UpdateMails"
            L3_4 = L5_2
            L4_4 = A0_4
            L1_4(L2_4, L3_4, L4_4)
          end
          L0_3(L1_3, L2_3, L3_3)
        end
        L6_2(L7_2, L8_2)
      else
        L5_2 = L3_2.button
        if nil == L5_2 then
          L5_2 = MySQL
          L5_2 = L5_2.Async
          L5_2 = L5_2.execute
          L6_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"
          L7_2 = L2_2
          L8_2 = "', '"
          L9_2 = CheckHtmlInput
          L10_2 = EscapeSqli
          L11_2 = L3_2.sender
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2)
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L10_2 = "', '"
          L11_2 = CheckHtmlInput
          L12_2 = EscapeSqli
          L13_2 = L3_2.subject
          L12_2 = L12_2(L13_2)
          L13_2 = "', '"
          L14_2 = EscapeSqli
          L15_2 = L3_2.message
          L14_2 = L14_2(L15_2)
          L12_2 = L12_2 .. L13_2 .. L14_2
          L11_2 = L11_2(L12_2)
          L12_2 = "', '"
          L13_2 = GenerateMailId
          L13_2 = L13_2()
          L14_2 = "', '0')"
          L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
          L7_2 = {}
          L5_2(L6_2, L7_2)
        else
          L5_2 = MySQL
          L5_2 = L5_2.Async
          L5_2 = L5_2.execute
          L6_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"
          L7_2 = L2_2
          L8_2 = "', '"
          L9_2 = CheckHtmlInput
          L10_2 = EscapeSqli
          L11_2 = L3_2.sender
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2)
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L10_2 = "', '"
          L11_2 = CheckHtmlInput
          L12_2 = EscapeSqli
          L13_2 = L3_2.subject
          L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L12_2(L13_2)
          L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L12_2 = "', '"
          L13_2 = CheckHtmlInput
          L14_2 = EscapeSqli
          L15_2 = L3_2.message
          L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L14_2(L15_2)
          L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
          L14_2 = "', '"
          L15_2 = GenerateMailId
          L15_2 = L15_2()
          L16_2 = "', '0', '"
          L17_2 = EscapeSqli
          L18_2 = json
          L18_2 = L18_2.encode
          L19_2 = L3_2.button
          L18_2, L19_2, L20_2 = L18_2(L19_2)
          L17_2 = L17_2(L18_2, L19_2, L20_2)
          L18_2 = "')"
          L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2
          L7_2 = {}
          L5_2(L6_2, L7_2)
        end
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:sendNewEventMail"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:sendNewEventMail"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = A1_2.button
  if nil == L2_2 then
    L2_2 = MySQL
    L2_2 = L2_2.Async
    L2_2 = L2_2.execute
    L3_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`) VALUES ('"
    L4_2 = A0_2
    L5_2 = "', '"
    L6_2 = CheckHtmlInput
    L7_2 = EscapeSqli
    L8_2 = A1_2.sender
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L7_2 = "', '"
    L8_2 = CheckHtmlInput
    L9_2 = EscapeSqli
    L10_2 = A1_2.subject
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = "', '"
    L10_2 = CheckHtmlInput
    L11_2 = EscapeSqli
    L12_2 = A1_2.message
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2 = "', '"
    L12_2 = GenerateMailId
    L12_2 = L12_2()
    L13_2 = "', '0')"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
    L4_2 = {}
    L2_2(L3_2, L4_2)
  else
    L2_2 = MySQL
    L2_2 = L2_2.Async
    L2_2 = L2_2.execute
    L3_2 = "INSERT INTO `player_mails` (`identifier`, `sender`, `subject`, `message`, `mailid`, `read`, `button`) VALUES ('"
    L4_2 = A0_2
    L5_2 = "', '"
    L6_2 = CheckHtmlInput
    L7_2 = EscapeSqli
    L8_2 = A1_2.sender
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L7_2(L8_2)
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L7_2 = "', '"
    L8_2 = CheckHtmlInput
    L9_2 = EscapeSqli
    L10_2 = A1_2.subject
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = "', '"
    L10_2 = CheckHtmlInput
    L11_2 = EscapeSqli
    L12_2 = A1_2.message
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2)
    L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2 = "', '"
    L12_2 = CheckHtmlInput
    L13_2 = GenerateMailId
    L13_2, L14_2, L15_2, L16_2, L17_2 = L13_2()
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L13_2 = "', '0', '"
    L14_2 = CheckHtmlInput
    L15_2 = EscapeSqli
    L16_2 = json
    L16_2 = L16_2.encode
    L17_2 = A1_2.button
    L16_2, L17_2 = L16_2(L17_2)
    L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L15_2 = "')"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
    L4_2 = {}
    L2_2(L3_2, L4_2)
  end
  L2_2 = SetTimeout
  L3_2 = 200
  function L4_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchAll
    L1_3 = "SELECT * FROM `player_mails` WHERE `identifier` = \""
    L2_3 = Player
    L2_3 = L2_3.identifier
    L3_3 = "\" ORDER BY `date` DESC"
    L1_3 = L1_3 .. L2_3 .. L3_3
    L2_3 = {}
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
      L1_4 = A0_4[1]
      if nil ~= L1_4 then
        L1_4 = pairs
        L2_4 = A0_4
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L7_4 = A0_4[L5_4]
          L7_4 = L7_4.button
          if nil ~= L7_4 then
            L7_4 = A0_4[L5_4]
            L8_4 = json
            L8_4 = L8_4.decode
            L9_4 = A0_4[L5_4]
            L9_4 = L9_4.button
            L8_4 = L8_4(L9_4)
            L7_4.button = L8_4
          end
        end
      end
      L1_4 = TriggerClientEvent
      L2_4 = "qs-smartphone:client:UpdateMails"
      L3_4 = source
      L4_4 = A0_4
      L1_4(L2_4, L3_4, L4_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:ClearButtonData"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:ClearButtonData"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "UPDATE `player_mails` SET `button` = \"\" WHERE `mailid` = \""
  L5_2 = A0_2
  L6_2 = "\" AND `identifier` = \""
  L7_2 = L2_2.identifier
  L8_2 = "\""
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = {}
  L3_2(L4_2, L5_2)
  L3_2 = SetTimeout
  L4_2 = 200
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Async
    L0_3 = L0_3.fetchAll
    L1_3 = "SELECT * FROM `player_mails` WHERE `identifier` = \""
    L2_3 = L2_2.identifier
    L3_3 = "\" ORDER BY `date` DESC"
    L1_3 = L1_3 .. L2_3 .. L3_3
    L2_3 = {}
    function L3_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4
      L1_4 = A0_4[1]
      if nil ~= L1_4 then
        L1_4 = pairs
        L2_4 = A0_4
        L1_4, L2_4, L3_4, L4_4 = L1_4(L2_4)
        for L5_4, L6_4 in L1_4, L2_4, L3_4, L4_4 do
          L7_4 = A0_4[L5_4]
          L7_4 = L7_4.button
          if nil ~= L7_4 then
            L7_4 = A0_4[L5_4]
            L8_4 = json
            L8_4 = L8_4.decode
            L9_4 = A0_4[L5_4]
            L9_4 = L9_4.button
            L8_4 = L8_4(L9_4)
            L7_4.button = L8_4
          end
        end
      end
      L1_4 = TriggerClientEvent
      L2_4 = "qs-smartphone:client:UpdateMails"
      L3_4 = L1_2
      L4_4 = A0_4
      L1_4(L2_4, L3_4, L4_4)
    end
    L0_3(L1_3, L2_3, L3_3)
  end
  L3_2(L4_2, L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:MentionedPlayer"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:MentionedPlayer"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = pairs
  L4_2 = GetPlayers
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L4_2()
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = GetPlayerFromIdFramework
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    L10_2 = L9_2.PlayerData
    L10_2 = L10_2.charinfo
    if nil ~= L9_2 then
      L11_2 = L10_2.firstname
      if L11_2 == A0_2 then
        L11_2 = L10_2.lastname
        if L11_2 == A1_2 then
          L11_2 = L1_1.SetPhoneAlerts
          L12_2 = L9_2.identifier
          L13_2 = "twitter"
          L11_2(L12_2, L13_2)
          L11_2 = L1_1.AddMentionedTweet
          L12_2 = L9_2.identifier
          L13_2 = A2_2
          L11_2(L12_2, L13_2)
          L11_2 = TriggerClientEvent
          L12_2 = "qs-smartphone:client:GetMentioned"
          L13_2 = L9_2.source
          L14_2 = A2_2
          L16_2 = L9_2.identifier
          L15_2 = L3_1
          L15_2 = L15_2[L16_2]
          L15_2 = L15_2.twitter
          L11_2(L12_2, L13_2, L14_2, L15_2)
      end
      else
        L11_2 = MySQL
        L11_2 = L11_2.Async
        L11_2 = L11_2.fetchAll
        L12_2 = "SELECT * FROM `users` WHERE `firstname`='"
        L13_2 = A0_2
        L14_2 = "' AND `lastname`='"
        L15_2 = A1_2
        L16_2 = "'"
        L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
        L13_2 = {}
        function L14_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3
          L1_3 = A0_3[1]
          if nil ~= L1_3 then
            L1_3 = A0_3[1]
            L1_3 = L1_3.identifier
            L2_3 = L1_1.SetPhoneAlerts
            L3_3 = L1_3
            L4_3 = "twitter"
            L2_3(L3_3, L4_3)
            L2_3 = L1_1.AddMentionedTweet
            L3_3 = L1_3
            L4_3 = A2_2
            L2_3(L3_3, L4_3)
          end
        end
        L11_2(L12_2, L13_2, L14_2)
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:CallContact"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:CallContact"
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = source
  L5_2 = GetPlayerFromIdFramework
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetPlayerFromPhone
  L7_2 = A0_2.number
  L6_2 = L6_2(L7_2)
  if nil ~= L6_2 then
    L7_2 = TriggerClientEvent
    L8_2 = "qs-smartphone:client:GetCalled"
    L9_2 = L6_2.PlayerData
    L9_2 = L9_2.source
    L10_2 = L5_2.PlayerData
    L10_2 = L10_2.charinfo
    L10_2 = L10_2.phone
    L11_2 = A1_2
    L12_2 = A2_2
    L13_2 = A3_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:server:GetCallStatus"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A1_2
  L4_2 = notAvailable
  L5_2 = A2_2.number
  L4_2 = L4_2[L5_2]
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:getAvailableJob"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L4_2 = A1_2
  L6_2 = A2_2.number
  L5_2 = L9_1
  L5_2 = L5_2[L6_2]
  L4_2(L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:envtelefonlar"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.getInventoryItem
  L4_2 = L4_2()
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:UpdateHashtags"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:UpdateHashtags"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L5_1
  L2_2 = L2_2[A0_2]
  if nil ~= L2_2 then
    L2_2 = next
    L3_2 = L5_1
    L3_2 = L3_2[A0_2]
    L2_2 = L2_2(L3_2)
    if nil ~= L2_2 then
      L2_2 = table
      L2_2 = L2_2.insert
      L3_2 = L5_1
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.messages
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = L5_1
    L3_2 = {}
    L3_2.hashtag = A0_2
    L4_2 = {}
    L3_2.messages = L4_2
    L2_2[A0_2] = L3_2
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L5_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.messages
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = TriggerClientEvent
  L3_2 = "qs-smartphone:client:UpdateHashtags"
  L4_2 = -1
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L10_1(L11_1, L12_1)
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L4_1
  L2_2 = L2_2[A0_2]
  if nil == L2_2 then
    L2_2 = L4_1
    L3_2 = {}
    L2_2[A0_2] = L3_2
  end
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = L4_1
  L3_2 = L3_2[A0_2]
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1.AddMentionedTweet = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if nil ~= A0_2 and nil ~= A1_2 then
    L3_2 = L3_1
    L3_2 = L3_2[A0_2]
    if nil == L3_2 then
      L3_2 = L3_1
      L4_2 = {}
      L3_2[A0_2] = L4_2
      L3_2 = L3_1
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2[A1_2]
      if nil == L3_2 then
        if nil == A2_2 then
          L3_2 = L3_1
          L3_2 = L3_2[A0_2]
          L3_2[A1_2] = 1
        else
          L3_2 = L3_1
          L3_2 = L3_2[A0_2]
          L3_2[A1_2] = A2_2
        end
      end
    else
      L3_2 = L3_1
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2[A1_2]
      if nil == L3_2 then
        if nil == A2_2 then
          L3_2 = L3_1
          L3_2 = L3_2[A0_2]
          L3_2[A1_2] = 1
        else
          L3_2 = L3_1
          L3_2 = L3_2[A0_2]
          L3_2[A1_2] = 0
        end
      elseif nil == A2_2 then
        L3_2 = L3_1
        L3_2 = L3_2[A0_2]
        L4_2 = L3_1
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2[A1_2]
        L4_2 = L4_2 + 1
        L3_2[A1_2] = L4_2
      else
        L3_2 = L3_1
        L3_2 = L3_2[A0_2]
        L4_2 = L3_1
        L4_2 = L4_2[A0_2]
        L4_2 = L4_2[A1_2]
        L4_2 = L4_2 + 0
        L3_2[A1_2] = L4_2
      end
    end
  end
end
L1_1.SetPhoneAlerts = L10_1
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:server:GetContactPictures"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = pairs
    L4_2 = A2_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = MySQL
      L9_2 = L9_2.Sync
      L9_2 = L9_2.fetchAll
      L10_2 = "SELECT * FROM `users` WHERE `charinfo` LIKE '%"
      L11_2 = L8_2.number
      L12_2 = "%'"
      L10_2 = L10_2 .. L11_2 .. L12_2
      L11_2 = {}
      L9_2 = L9_2(L10_2, L11_2)
      L10_2 = L9_2[1]
      if nil ~= L10_2 then
        L10_2 = json
        L10_2 = L10_2.decode
        L11_2 = L9_2[1]
        L11_2 = L11_2.metadata
        L10_2 = L10_2(L11_2)
        L10_2 = L10_2.phone
        L10_2 = L10_2.profilepicture
        if L10_2 then
          L10_2 = json
          L10_2 = L10_2.decode
          L11_2 = L9_2[1]
          L11_2 = L11_2.metadata
          L10_2 = L10_2(L11_2)
          L10_2 = L10_2.phone
          L10_2 = L10_2.profilepicture
          if L10_2 then
            goto lbl_41
          end
        end
        L10_2 = "default"
        ::lbl_41::
        L8_2.picture = L10_2
      end
    end
    L3_2 = A1_2
    L4_2 = A2_2
    L3_2(L4_2)
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = pairs
      L4_2 = A2_2
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = MySQL
        L9_2 = L9_2.Sync
        L9_2 = L9_2.fetchAll
        L10_2 = "SELECT * FROM "
        L11_2 = Config
        L11_2 = L11_2.QBCoreFrameworkPlayersTable
        L12_2 = " WHERE `charinfo` LIKE '%"
        L13_2 = L8_2.number
        L14_2 = "%'"
        L10_2 = L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
        L11_2 = {}
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = L9_2[1]
        if nil ~= L10_2 then
          L10_2 = json
          L10_2 = L10_2.decode
          L11_2 = L9_2[1]
          L11_2 = L11_2.metadata
          L10_2 = L10_2(L11_2)
          L10_2 = L10_2.phone
          L10_2 = L10_2.profilepicture
          if L10_2 then
            L10_2 = json
            L10_2 = L10_2.decode
            L11_2 = L9_2[1]
            L11_2 = L11_2.metadata
            L10_2 = L10_2(L11_2)
            L10_2 = L10_2.phone
            L10_2 = L10_2.profilepicture
            if L10_2 then
              goto lbl_92
            end
          end
          L10_2 = "default"
          ::lbl_92::
          L8_2.picture = L10_2
        end
      end
      L3_2 = A1_2
      L4_2 = A2_2
      L3_2(L4_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:server:GetContactPicture"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM `users` WHERE `charinfo` LIKE '%"
    L5_2 = A2_2.number
    L6_2 = "%'"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L5_2 = {}
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2[1]
    if L4_2 then
      L4_2 = json
      L4_2 = L4_2.decode
      L5_2 = L3_2[1]
      L5_2 = L5_2.metadata
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.phone
      L4_2 = L4_2.profilepicture
      if L4_2 then
        L4_2 = json
        L4_2 = L4_2.decode
        L5_2 = L3_2[1]
        L5_2 = L5_2.metadata
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.phone
        L4_2 = L4_2.profilepicture
        if L4_2 then
          goto lbl_37
        end
      end
      L4_2 = "default"
      ::lbl_37::
      A2_2.picture = L4_2
    end
    L4_2 = A1_2
    L5_2 = A2_2
    L4_2(L5_2)
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Sync
      L3_2 = L3_2.fetchAll
      L4_2 = "SELECT * FROM "
      L5_2 = Config
      L5_2 = L5_2.QBCoreFrameworkPlayersTable
      L6_2 = " WHERE `charinfo` LIKE '%"
      L7_2 = A2_2.number
      L8_2 = "%'"
      L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
      L5_2 = {}
      L3_2 = L3_2(L4_2, L5_2)
      L4_2 = L3_2[1]
      if L4_2 then
        L4_2 = json
        L4_2 = L4_2.decode
        L5_2 = L3_2[1]
        L5_2 = L5_2.metadata
        L4_2 = L4_2(L5_2)
        L4_2 = L4_2.phone
        L4_2 = L4_2.profilepicture
        if L4_2 then
          L4_2 = json
          L4_2 = L4_2.decode
          L5_2 = L3_2[1]
          L5_2 = L5_2.metadata
          L4_2 = L4_2(L5_2)
          L4_2 = L4_2.phone
          L4_2 = L4_2.profilepicture
          if L4_2 then
            goto lbl_81
          end
        end
        L4_2 = "default"
        ::lbl_81::
        A2_2.picture = L4_2
      end
      L4_2 = A1_2
      L5_2 = A2_2
      L4_2(L5_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:server:GetRingtone"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = GetPlayerFromIdFramework
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = "iphonex"
    L5_2 = MySQL
    L5_2 = L5_2.Async
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT metadata FROM `users` WHERE identifier = @identifier LIMIT 1"
    L7_2 = {}
    L8_2 = L3_2.identifier
    L7_2["@identifier"] = L8_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_3[1]
      if nil ~= L1_3 then
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = A0_3[1]
        L2_3 = L2_3.metadata
        L1_3 = L1_3(L2_3)
        L2_3 = L1_3.phone
        L2_3 = L2_3.ringtone
        if nil ~= L2_3 then
          L2_3 = L1_3.phone
          L2_3 = L2_3.ringtone
          L4_2 = L2_3
        end
        L2_3 = A1_2
        L3_3 = L4_2
        L2_3(L3_3)
      end
    end
    L5_2(L6_2, L7_2, L8_2)
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = GetPlayerFromIdFramework
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = "iphonex"
      L5_2 = MySQL
      L5_2 = L5_2.Async
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT metadata FROM "
      L7_2 = Config
      L7_2 = L7_2.QBCoreFrameworkPlayersTable
      L8_2 = " WHERE identifier = @identifier LIMIT 1"
      L6_2 = L6_2 .. L7_2 .. L8_2
      L7_2 = {}
      L8_2 = L3_2.identifier
      L7_2["@identifier"] = L8_2
      function L8_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = A0_3[1]
        if nil ~= L1_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3[1]
          L2_3 = L2_3.metadata
          L1_3 = L1_3(L2_3)
          L2_3 = L1_3.phone
          L2_3 = L2_3.ringtone
          if nil ~= L2_3 then
            L2_3 = L1_3.phone
            L2_3 = L2_3.ringtone
            L4_2 = L2_3
          end
          L2_3 = A1_2
          L3_3 = L4_2
          L2_3(L3_3)
        end
      end
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:server:GetPicture"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = GetPlayerFromPhone
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    L4_2 = nil
    L5_2 = MySQL
    L5_2 = L5_2.Async
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT * FROM `users` WHERE `charinfo` LIKE '%"
    L7_2 = A2_2
    L8_2 = "%' LIMIT 1"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L7_2 = {}
    function L8_2(A0_3)
      local L1_3, L2_3
      L1_3 = A0_3[1]
      if nil ~= L1_3 then
        L1_3 = json
        L1_3 = L1_3.decode
        L2_3 = A0_3[1]
        L2_3 = L2_3.metadata
        L1_3 = L1_3(L2_3)
        L1_3 = L1_3.phone
        L1_3 = L1_3.profilepicture
        if L1_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3[1]
          L2_3 = L2_3.metadata
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.phone
          L1_3 = L1_3.profilepicture
          if L1_3 then
            goto lbl_23
          end
        end
        L1_3 = "default"
        ::lbl_23::
        L4_2 = L1_3
        L1_3 = A1_2
        L2_3 = L4_2
        L1_3(L2_3)
      else
        L1_3 = A1_2
        L2_3 = nil
        L1_3(L2_3)
      end
    end
    L5_2(L6_2, L7_2, L8_2)
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = GetPlayerFromPhone
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      L4_2 = nil
      L5_2 = MySQL
      L5_2 = L5_2.Async
      L5_2 = L5_2.fetchAll
      L6_2 = "SELECT * FROM "
      L7_2 = Config
      L7_2 = L7_2.QBCoreFrameworkPlayersTable
      L8_2 = " WHERE `charinfo` LIKE '%"
      L9_2 = A2_2
      L10_2 = "%' LIMIT 1"
      L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
      L7_2 = {}
      function L8_2(A0_3)
        local L1_3, L2_3
        L1_3 = A0_3[1]
        if nil ~= L1_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3[1]
          L2_3 = L2_3.metadata
          L1_3 = L1_3(L2_3)
          L1_3 = L1_3.phone
          L1_3 = L1_3.profilepicture
          if L1_3 then
            L1_3 = json
            L1_3 = L1_3.decode
            L2_3 = A0_3[1]
            L2_3 = L2_3.metadata
            L1_3 = L1_3(L2_3)
            L1_3 = L1_3.phone
            L1_3 = L1_3.profilepicture
            if L1_3 then
              goto lbl_23
            end
          end
          L1_3 = "default"
          ::lbl_23::
          L4_2 = L1_3
          L1_3 = A1_2
          L2_3 = L4_2
          L1_3(L2_3)
        else
          L1_3 = A1_2
          L2_3 = nil
          L1_3(L2_3)
        end
      end
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:server:GetTime"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2
  L3_2 = tonumber
  L4_2 = os
  L4_2 = L4_2.date
  L5_2 = "%w"
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = tonumber
  L5_2 = os
  L5_2 = L5_2.date
  L6_2 = "%H"
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = tonumber
  L6_2 = os
  L6_2 = L6_2.date
  L7_2 = "%M"
  L6_2, L7_2 = L6_2(L7_2)
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:UpdateAlarms"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:UpdateAlarms"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PlayerData
  L3_2 = L3_2.metadata
  L3_2 = L3_2.phone
  L3_2.Alarms = A0_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = L2_2.SetMetaData
    L4_2 = "phone"
    L5_2 = L2_2.PlayerData
    L5_2 = L5_2.metadata
    L5_2 = L5_2.phone
    L3_2(L4_2, L5_2)
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = L2_2.Functions
      L3_2 = L3_2.SetMetaData
      L4_2 = "phone"
      L5_2 = L2_2.PlayerData
      L5_2 = L5_2.metadata
      L5_2 = L5_2.phone
      L3_2(L4_2, L5_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:server:SavePhoto"
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L4_2 = A0_2
  L5_2 = GetPlayerFromIdFramework
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = A3_2
  L6_2 = L6_2(L7_2)
  L7_2 = MySQL
  L7_2 = L7_2.Sync
  L7_2 = L7_2.fetchAll
  L8_2 = "INSERT INTO `player_gallery` (`identifier`, `resim`, `data`) VALUES ('"
  L9_2 = L5_2.identifier
  L10_2 = "', '"
  L11_2 = CheckHtmlInput
  L12_2 = A2_2
  L11_2 = L11_2(L12_2)
  L12_2 = "', '"
  L13_2 = CheckHtmlInput
  L14_2 = EscapeSqli2
  L15_2 = L6_2
  L14_2, L15_2 = L14_2(L15_2)
  L13_2 = L13_2(L14_2, L15_2)
  L14_2 = "')"
  L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
  L9_2 = {}
  L7_2(L8_2, L9_2)
  L7_2 = A1_2
  L8_2 = true
  L7_2(L8_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:DeletePhoto"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:DeletePhoto"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.execute
  L4_2 = "DELETE FROM `player_gallery` WHERE identifier='"
  L5_2 = L2_2.identifier
  L6_2 = "' AND id = "
  L7_2 = A0_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L3_2(L4_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:SetPhoneAlerts"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:SetPhoneAlerts"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.identifier
  L4_2 = L1_1.SetPhoneAlerts
  L5_2 = L3_2
  L6_2 = A0_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:UpdateTweets"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:UpdateTweets"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = GetPlayers
  L2_2 = L2_2()
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = GetPlayerFromIdFramework
    L8_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2)
    L8_2 = checkAppIsDownloaded
    L9_2 = L7_2.identifier
    L10_2 = "twitter"
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L8_2 = TriggerClientEvent
      L9_2 = "qs-smartphone:UpdateTweets"
      L10_2 = L7_2.PlayerData
      L10_2 = L10_2.source
      L11_2 = A0_2
      L12_2 = A1_2
      L8_2(L9_2, L10_2, L11_2, L12_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = QSPhone
L10_1 = L10_1.RegisterServerCallback
L11_1 = "qs-smartphone:checkItem"
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = L3_2.getInventoryItem
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      L4_2 = L4_2.count
      L5_2 = A1_2
      L6_2 = L4_2
      L5_2(L6_2)
    end
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = GetPlayerFromIdFramework
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = L3_2.Functions
        L4_2 = L4_2.GetItemByName
        L5_2 = A2_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L5_2 = A1_2
          L6_2 = L4_2.amount
          L5_2(L6_2)
        else
          L5_2 = A1_2
          L6_2 = false
          L5_2(L6_2)
        end
      end
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:EditContact"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:EditContact"
function L12_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.execute
  L6_2 = "UPDATE `player_contacts` SET `name` = '"
  L7_2 = CheckHtmlInput
  L8_2 = EscapeSqli
  L9_2 = A0_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = "', `number` = '"
  L9_2 = A1_2
  L10_2 = "',`pp` = '"
  L11_2 = A4_2
  L12_2 = "', `note` = '"
  L13_2 = CheckHtmlInput
  L14_2 = EscapeSqli
  L15_2 = A2_2
  L14_2, L15_2, L16_2 = L14_2(L15_2)
  L13_2 = L13_2(L14_2, L15_2, L16_2)
  L14_2 = "' WHERE id = '"
  L15_2 = A3_2
  L16_2 = "'"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
  L7_2 = {}
  L5_2(L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "qs-smartphone:SaveWidget"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:SaveWidget"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Config
  L2_2 = L2_2.Framework
  if "ESX" == L2_2 then
    L2_2 = source
    L3_2 = GetPlayerFromIdFramework
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = {}
    L4_2.widget_gorunum = A0_2
    L4_2.widget_tip = A1_2
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.execute
    L6_2 = "UPDATE `users` SET widget = @widget WHERE `identifier` = @identifier"
    L7_2 = {}
    L8_2 = L3_2.identifier
    L7_2["@identifier"] = L8_2
    L8_2 = EscapeSqli
    L9_2 = json
    L9_2 = L9_2.encode
    L10_2 = L4_2
    L9_2, L10_2 = L9_2(L10_2)
    L8_2 = L8_2(L9_2, L10_2)
    L7_2["@widget"] = L8_2
    L5_2(L6_2, L7_2)
  else
    L2_2 = Config
    L2_2 = L2_2.Framework
    if "QBCore" == L2_2 then
      L2_2 = source
      L3_2 = GetPlayerFromIdFramework
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = {}
      L4_2.widget_gorunum = A0_2
      L4_2.widget_tip = A1_2
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "UPDATE "
      L7_2 = Config
      L7_2 = L7_2.QBCoreFrameworkPlayersTable
      L8_2 = " SET widget = @widget WHERE `citizenid` = @identifier"
      L6_2 = L6_2 .. L7_2 .. L8_2
      L7_2 = {}
      L8_2 = L3_2.identifier
      L7_2["@identifier"] = L8_2
      L8_2 = EscapeSqli
      L9_2 = json
      L9_2 = L9_2.encode
      L10_2 = L4_2
      L9_2, L10_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2)
      L7_2["@widget"] = L8_2
      L5_2(L6_2, L7_2)
    end
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:RemoveContact"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:RemoveContact"
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM `player_contacts` WHERE id = @id"
  L3_2 = {}
  L3_2["@id"] = A0_2
  L1_2(L2_2, L3_2)
end
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "'"
  L4_2 = "&prime;"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
addslashes = L10_1
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:AddNewContact"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:AddNewContact"
function L12_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L4_2 = source
  L5_2 = GetPlayerFromIdFramework
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = addslashes
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  A0_2 = L6_2
  L6_2 = MySQL
  L6_2 = L6_2.Async
  L6_2 = L6_2.execute
  L7_2 = "INSERT INTO `player_contacts` (`identifier`, `name`, `number`, `note`, `pp`) VALUES ('"
  L8_2 = L5_2.PlayerData
  L8_2 = L8_2.charinfo
  L8_2 = L8_2.phone
  L9_2 = "', '"
  L10_2 = CheckHtmlInput
  L11_2 = EscapeSqli
  L12_2 = tostring
  L13_2 = A0_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2)
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L11_2 = "', '"
  L12_2 = tostring
  L13_2 = A1_2
  L12_2 = L12_2(L13_2)
  L13_2 = "', '"
  L14_2 = CheckHtmlInput
  L15_2 = EscapeSqli
  L16_2 = tostring
  L17_2 = A2_2
  L16_2, L17_2, L18_2 = L16_2(L17_2)
  L15_2, L16_2, L17_2, L18_2 = L15_2(L16_2, L17_2, L18_2)
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
  L15_2 = "', '"
  L16_2 = CheckHtmlInput
  L17_2 = tostring
  L18_2 = A3_2
  L17_2, L18_2 = L17_2(L18_2)
  L16_2 = L16_2(L17_2, L18_2)
  L17_2 = "')"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2
  L8_2 = {}
  L6_2(L7_2, L8_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:AddRecentCall"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:AddRecentCall"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = os
  L4_2 = L4_2.date
  L5_2 = "%H"
  L4_2 = L4_2(L5_2)
  L5_2 = os
  L5_2 = L5_2.date
  L6_2 = "%M"
  L5_2 = L5_2(L6_2)
  L6_2 = L4_2
  L7_2 = ":"
  L8_2 = L5_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L7_2 = TriggerClientEvent
  L8_2 = "qs-smartphone:client:AddRecentCall"
  L9_2 = L2_2
  L10_2 = A1_2
  L11_2 = L6_2
  L12_2 = A0_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L7_2 = GetPlayerFromPhone
  L8_2 = A1_2.number
  L7_2 = L7_2(L8_2)
  if nil ~= L7_2 then
    L8_2 = TriggerClientEvent
    L9_2 = "qs-smartphone:client:AddRecentCall"
    L10_2 = L7_2.PlayerData
    L10_2 = L10_2.source
    L11_2 = {}
    L12_2 = L3_2.PlayerData
    L12_2 = L12_2.charinfo
    L12_2 = L12_2.firstname
    L13_2 = " "
    L14_2 = L3_2.PlayerData
    L14_2 = L14_2.charinfo
    L14_2 = L14_2.lastname
    L12_2 = L12_2 .. L13_2 .. L14_2
    L11_2.name = L12_2
    L12_2 = L3_2.PlayerData
    L12_2 = L12_2.charinfo
    L12_2 = L12_2.phone
    L11_2.number = L12_2
    L12_2 = anonymous
    L11_2.anonymous = L12_2
    L12_2 = L6_2
    L13_2 = "outgoing"
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
end
L10_1(L11_1, L12_1)
L10_1 = RegisterServerEvent
L11_1 = "qs-smartphone:server:SaveMetaData"
L10_1(L11_1)
L10_1 = AddEventHandler
L11_1 = "qs-smartphone:server:SaveMetaData"
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.PlayerData
  L4_2 = L4_2.metadata
  L5_2 = type
  L6_2 = L4_2.phone
  L5_2 = L5_2(L6_2)
  if "table" == L5_2 then
    L5_2 = L4_2.phone
    L5_2[A0_2] = A1_2
  else
    L5_2 = {}
    L4_2.phone = L5_2
    L5_2 = L4_2.phone
    L5_2[A0_2] = A1_2
  end
  L5_2 = Config
  L5_2 = L5_2.Framework
  if "ESX" == L5_2 then
    L5_2 = L3_2.SetMetaData
    L6_2 = "phone"
    L7_2 = L4_2.phone
    L5_2(L6_2, L7_2)
  else
    L5_2 = Config
    L5_2 = L5_2.Framework
    if "QBCore" == L5_2 then
      L5_2 = L3_2.Functions
      L5_2 = L5_2.SetMetaData
      L6_2 = "phone"
      L7_2 = L4_2.phone
      L5_2(L6_2, L7_2)
    end
  end
end
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  L1_2["\""] = "\\\""
  L1_2["'"] = "\\'"
  L3_2 = A0_2
  L2_2 = A0_2.gsub
  L4_2 = "['\"]"
  L5_2 = L1_2
  return L2_2(L3_2, L4_2, L5_2)
end
escape_sqli = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = A0_2.gmatch
  L3_2 = A0_2
  L4_2 = "%S+"
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2, L4_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L1_2[L7_2] = L6_2
  end
  return L1_2
end
L11_1 = QSPhone
L11_1 = L11_1.RegisterServerCallback
L12_1 = "qs-smartphone:server:FetchResult"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = escape_sqli
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    L4_2 = {}
    L5_2 = {}
    L6_2 = "SELECT * FROM `users` WHERE `identifier` = \""
    L7_2 = L3_2
    L8_2 = "\""
    L6_2 = L6_2 .. L7_2 .. L8_2
    L7_2 = L10_1
    L8_2 = L3_2
    L7_2 = L7_2(L8_2)
    L8_2 = #L7_2
    if L8_2 > 1 then
      L8_2 = L6_2
      L9_2 = " OR `charinfo` LIKE \"%"
      L10_2 = L7_2[1]
      L11_2 = "%\""
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
      L6_2 = L8_2
      L8_2 = 2
      L9_2 = #L7_2
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = L6_2
        L13_2 = " AND `charinfo` LIKE  \"%"
        L14_2 = L7_2[L11_2]
        L15_2 = "%\""
        L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
        L6_2 = L12_2
      end
    else
      L8_2 = L6_2
      L9_2 = " OR `charinfo` LIKE \"%"
      L10_2 = L3_2
      L11_2 = "%\""
      L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
      L6_2 = L8_2
    end
    L8_2 = MySQL
    L8_2 = L8_2.Sync
    L8_2 = L8_2.fetchAll
    L9_2 = L6_2
    L8_2 = L8_2(L9_2)
    L9_2 = L8_2[1]
    if nil ~= L9_2 then
      L9_2 = pairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L15_2 = json
        L15_2 = L15_2.decode
        L16_2 = L14_2.charinfo
        L15_2 = L15_2(L16_2)
        L16_2 = json
        L16_2 = L16_2.decode
        L17_2 = L14_2.metadata
        L16_2 = L16_2(L17_2)
        L17_2 = {}
        L18_2 = L14_2.identifier
        L18_2 = L5_2[L18_2]
        if nil ~= L18_2 then
          L18_2 = next
          L19_2 = L14_2.identifier
          L19_2 = L5_2[L19_2]
          L18_2 = L18_2(L19_2)
          if nil ~= L18_2 then
            L18_2 = L14_2.identifier
            L17_2 = L5_2[L18_2]
          end
        end
        L18_2 = #L4_2
        L18_2 = L18_2 + 1
        L19_2 = {}
        L20_2 = L14_2.identifier
        L19_2.citizenid = L20_2
        L20_2 = L15_2.firstname
        L19_2.firstname = L20_2
        L20_2 = L15_2.lastname
        L19_2.lastname = L20_2
        L20_2 = L14_2.dateofbirth
        L19_2.birthdate = L20_2
        L20_2 = L15_2.phone
        L19_2.phone = L20_2
        L20_2 = L15_2.nationality
        L19_2.nationality = L20_2
        L20_2 = L15_2.gender
        L19_2.gender = L20_2
        L19_2.warrant = false
        L19_2.driverlicense = "A++"
        L19_2.appartmentdata = L17_2
        L4_2[L18_2] = L19_2
      end
      L9_2 = A1_2
      L10_2 = L4_2
      L9_2(L10_2)
    else
      L9_2 = A1_2
      L10_2 = nil
      L9_2(L10_2)
    end
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = escape_sqli
      L4_2 = A2_2
      L3_2 = L3_2(L4_2)
      L4_2 = {}
      L5_2 = {}
      L6_2 = "SELECT * FROM "
      L7_2 = Config
      L7_2 = L7_2.QBCoreFrameworkPlayersTable
      L8_2 = " WHERE `citizenid` = \""
      L9_2 = L3_2
      L10_2 = "\""
      L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
      L7_2 = L10_1
      L8_2 = L3_2
      L7_2 = L7_2(L8_2)
      L8_2 = #L7_2
      if L8_2 > 1 then
        L8_2 = L6_2
        L9_2 = " OR `charinfo` LIKE \"%"
        L10_2 = L7_2[1]
        L11_2 = "%\""
        L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
        L6_2 = L8_2
        L8_2 = 2
        L9_2 = #L7_2
        L10_2 = 1
        for L11_2 = L8_2, L9_2, L10_2 do
          L12_2 = L6_2
          L13_2 = " AND `charinfo` LIKE  \"%"
          L14_2 = L7_2[L11_2]
          L15_2 = "%\""
          L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
          L6_2 = L12_2
        end
      else
        L8_2 = L6_2
        L9_2 = " OR `charinfo` LIKE \"%"
        L10_2 = L3_2
        L11_2 = "%\""
        L8_2 = L8_2 .. L9_2 .. L10_2 .. L11_2
        L6_2 = L8_2
      end
      L8_2 = MySQL
      L8_2 = L8_2.Sync
      L8_2 = L8_2.fetchAll
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = L8_2[1]
      if nil ~= L9_2 then
        L9_2 = pairs
        L10_2 = L8_2
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          L15_2 = json
          L15_2 = L15_2.decode
          L16_2 = L14_2.charinfo
          L15_2 = L15_2(L16_2)
          L16_2 = json
          L16_2 = L16_2.decode
          L17_2 = L14_2.metadata
          L16_2 = L16_2(L17_2)
          L17_2 = {}
          L18_2 = L14_2.identifier
          L18_2 = L5_2[L18_2]
          if nil ~= L18_2 then
            L18_2 = next
            L19_2 = L14_2.identifier
            L19_2 = L5_2[L19_2]
            L18_2 = L18_2(L19_2)
            if nil ~= L18_2 then
              L18_2 = L14_2.identifier
              L17_2 = L5_2[L18_2]
            end
          end
          L18_2 = #L4_2
          L18_2 = L18_2 + 1
          L19_2 = {}
          L20_2 = L14_2.identifier
          L19_2.citizenid = L20_2
          L20_2 = L15_2.firstname
          L19_2.firstname = L20_2
          L20_2 = L15_2.lastname
          L19_2.lastname = L20_2
          L20_2 = L15_2.birthdate
          L19_2.birthdate = L20_2
          L20_2 = L15_2.phone
          L19_2.phone = L20_2
          L20_2 = L15_2.nationality
          L19_2.nationality = L20_2
          L20_2 = L15_2.gender
          L19_2.gender = L20_2
          L19_2.warrant = false
          L19_2.driverlicense = "A++"
          L19_2.appartmentdata = L17_2
          L4_2[L18_2] = L19_2
        end
        L9_2 = A1_2
        L10_2 = L4_2
        L9_2(L10_2)
      else
        L9_2 = A1_2
        L10_2 = nil
        L9_2(L10_2)
      end
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = QSPhone
L11_1 = L11_1.RegisterServerCallback
L12_1 = "qs-smartphone:server:GetVehicleSearchResults"
function L13_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = escape_sqli
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = "%"
  L6_2 = L3_2
  L7_2 = "%"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = nil
  L7_2 = Config
  L7_2 = L7_2.Framework
  if "ESX" == L7_2 then
    L7_2 = MySQL
    L7_2 = L7_2.Sync
    L7_2 = L7_2.fetchAll
    L8_2 = "SELECT * FROM owned_vehicles WHERE plate LIKE ? OR owner = ?"
    L9_2 = {}
    L10_2 = L5_2
    L11_2 = L3_2
    L9_2[1] = L10_2
    L9_2[2] = L11_2
    L7_2 = L7_2(L8_2, L9_2)
    L6_2 = L7_2
  else
    L7_2 = Config
    L7_2 = L7_2.Framework
    if "QBCore" == L7_2 then
      L7_2 = MySQL
      L7_2 = L7_2.Sync
      L7_2 = L7_2.fetchAll
      L8_2 = "SELECT * FROM "
      L9_2 = Config
      L9_2 = L9_2.QBCoreFrameworkVehiclesTable
      L10_2 = " WHERE plate LIKE ? OR citizenid = ?"
      L8_2 = L8_2 .. L9_2 .. L10_2
      L9_2 = {}
      L10_2 = L5_2
      L11_2 = L3_2
      L9_2[1] = L10_2
      L9_2[2] = L11_2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2 = L7_2
    end
  end
  if L6_2 then
    L7_2 = L6_2[1]
    if nil ~= L7_2 then
      L7_2 = pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = nil
        L14_2 = Config
        L14_2 = L14_2.Framework
        if "ESX" == L14_2 then
          L14_2 = MySQL
          L14_2 = L14_2.Sync
          L14_2 = L14_2.fetchAll
          L15_2 = "SELECT * FROM users WHERE identifier = ?"
          L16_2 = {}
          L17_2 = L6_2[L11_2]
          L17_2 = L17_2.owner
          L16_2[1] = L17_2
          L14_2 = L14_2(L15_2, L16_2)
          L13_2 = L14_2
        else
          L14_2 = Config
          L14_2 = L14_2.Framework
          if "QBCore" == L14_2 then
            L14_2 = MySQL
            L14_2 = L14_2.Sync
            L14_2 = L14_2.fetchAll
            L15_2 = "SELECT * FROM "
            L16_2 = Config
            L16_2 = L16_2.QBCoreFrameworkPlayersTable
            L17_2 = " WHERE citizenid = ?"
            L15_2 = L15_2 .. L16_2 .. L17_2
            L16_2 = {}
            L17_2 = L6_2[L11_2]
            L17_2 = L17_2.citizenid
            L16_2[1] = L17_2
            L14_2 = L14_2(L15_2, L16_2)
            L13_2 = L14_2
          end
        end
        if L13_2 then
          L14_2 = L13_2[1]
          if nil ~= L14_2 then
            L14_2 = json
            L14_2 = L14_2.decode
            L15_2 = L13_2[1]
            L15_2 = L15_2.charinfo
            L14_2 = L14_2(L15_2)
            L15_2 = nil
            L16_2 = Config
            L16_2 = L16_2.Framework
            if "ESX" == L16_2 then
              L16_2 = L6_2[L11_2]
              L16_2 = L16_2.model
              L15_2 = L16_2 or L15_2
              if not L16_2 then
                L15_2 = ""
              end
            else
              L16_2 = Config
              L16_2 = L16_2.Framework
              if "QBCore" == L16_2 then
                L16_2 = L6_2[L11_2]
                L16_2 = L16_2.vehicle
                L15_2 = L16_2 or L15_2
                if not L16_2 then
                  L15_2 = ""
                end
              end
            end
            if nil ~= L15_2 then
              if L14_2 then
                L16_2 = #L4_2
                L16_2 = L16_2 + 1
                L17_2 = {}
                L18_2 = L6_2[L11_2]
                L18_2 = L18_2.plate
                L17_2.plate = L18_2
                L17_2.status = true
                L18_2 = L14_2.firstname
                L19_2 = " "
                L20_2 = L14_2.lastname
                L18_2 = L18_2 .. L19_2 .. L20_2
                L17_2.owner = L18_2
                L18_2 = L6_2[L11_2]
                L18_2 = L18_2.identifier
                L17_2.citizenid = L18_2
                L18_2 = L15_2.name
                L17_2.label = L18_2
                L4_2[L16_2] = L17_2
              else
                L16_2 = #L4_2
                L16_2 = L16_2 + 1
                L17_2 = {}
                L18_2 = L6_2[L11_2]
                L18_2 = L18_2.plate
                L17_2.plate = L18_2
                L17_2.status = true
                L17_2.owner = ""
                L18_2 = L6_2[L11_2]
                L18_2 = L18_2.identifier
                L17_2.citizenid = L18_2
                L18_2 = L15_2.name
                L17_2.label = L18_2
                L4_2[L16_2] = L17_2
              end
            elseif L14_2 then
              L16_2 = #L4_2
              L16_2 = L16_2 + 1
              L17_2 = {}
              L18_2 = L6_2[L11_2]
              L18_2 = L18_2.plate
              L17_2.plate = L18_2
              L17_2.status = true
              L18_2 = L14_2.firstname
              L19_2 = " "
              L20_2 = L14_2.lastname
              L18_2 = L18_2 .. L19_2 .. L20_2
              L17_2.owner = L18_2
              L18_2 = L6_2[L11_2]
              L18_2 = L18_2.identifier
              L17_2.citizenid = L18_2
              L17_2.label = "Name not found.."
              L4_2[L16_2] = L17_2
            else
              L16_2 = #L4_2
              L16_2 = L16_2 + 1
              L17_2 = {}
              L18_2 = L6_2[L11_2]
              L18_2 = L18_2.plate
              L17_2.plate = L18_2
              L17_2.status = true
              L17_2.owner = ""
              L18_2 = L6_2[L11_2]
              L18_2 = L18_2.identifier
              L17_2.citizenid = L18_2
              L17_2.label = "Name not found.."
              L4_2[L16_2] = L17_2
            end
          end
        end
      end
  end
  else
    L7_2 = GeneratedPlates
    L7_2 = L7_2[L3_2]
    if nil ~= L7_2 then
      L7_2 = #L4_2
      L7_2 = L7_2 + 1
      L8_2 = {}
      L9_2 = GeneratedPlates
      L9_2 = L9_2[L3_2]
      L9_2 = L9_2.plate
      L8_2.plate = L9_2
      L9_2 = GeneratedPlates
      L9_2 = L9_2[L3_2]
      L9_2 = L9_2.status
      L8_2.status = L9_2
      L9_2 = GeneratedPlates
      L9_2 = L9_2[L3_2]
      L9_2 = L9_2.owner
      L8_2.owner = L9_2
      L9_2 = GeneratedPlates
      L9_2 = L9_2[L3_2]
      L9_2 = L9_2.citizenid
      L8_2.citizenid = L9_2
      L8_2.label = "Brand unknown.."
      L4_2[L7_2] = L8_2
    else
      L7_2 = GenerateOwnerName
      L7_2 = L7_2()
      L8_2 = GeneratedPlates
      L9_2 = {}
      L9_2.plate = L3_2
      L9_2.status = true
      L10_2 = L7_2.name
      L9_2.owner = L10_2
      L10_2 = L7_2.citizenid
      L9_2.citizenid = L10_2
      L8_2[L3_2] = L9_2
      L8_2 = #L4_2
      L8_2 = L8_2 + 1
      L9_2 = {}
      L9_2.plate = L3_2
      L9_2.status = true
      L10_2 = L7_2.name
      L9_2.owner = L10_2
      L10_2 = L7_2.citizenid
      L9_2.citizenid = L10_2
      L9_2.label = "Brand unknown.."
      L4_2[L8_2] = L9_2
    end
  end
  L7_2 = A1_2
  L8_2 = L4_2
  L7_2(L8_2)
end
L11_1(L12_1, L13_1)
L11_1 = {}
L12_1 = "diables_x_quasar_phone_black.ydr"
L13_1 = "diables_x_quasar_phone_blue.ydr"
L14_1 = "diables_x_quasar_phone_gold.ydr"
L15_1 = "diables_x_quasar_phone_green.ydr"
L16_1 = "diables_x_quasar_phone_greenlight.ydr"
L17_1 = "diables_x_quasar_phone_grey.ydr"
L18_1 = "diables_x_quasar_phone_pink.ydr"
L19_1 = "diables_x_quasar_phone_purple.ydr"
L20_1 = "diables_x_quasar_phone_red.ydr"
L21_1 = "diables_x_quasar_phone_white.ydr"
L11_1[1] = L12_1
L11_1[2] = L13_1
L11_1[3] = L14_1
L11_1[4] = L15_1
L11_1[5] = L16_1
L11_1[6] = L17_1
L11_1[7] = L18_1
L11_1[8] = L19_1
L11_1[9] = L20_1
L11_1[10] = L21_1
function L12_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = os
  L1_2 = L1_2.rename
  L2_2 = A0_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = true
    if L1_2 then
      goto lbl_19
    end
  end
  L1_2 = false
  ::lbl_19::
  return L1_2
end
Exists = L12_1
L12_1 = Citizen
L12_1 = L12_1.CreateThread
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = GetResourcePath
  L1_2 = GetCurrentResourceName
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L1_2()
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L1_2 = pairs
  L2_2 = L11_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = Exists
    L8_2 = L0_2
    L9_2 = "/stream/"
    L10_2 = L6_2
    L8_2 = L8_2 .. L9_2 .. L10_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = os
      L7_2 = L7_2.exit
      L7_2()
      break
    end
  end
end
L12_1(L13_1)
L12_1 = RegisterNetEvent
L13_1 = "qs-smartphone:server:exit"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "qs-smartphone:server:exit"
function L14_1()
  local L0_2, L1_2
  L0_2 = os
  L0_2 = L0_2.exit
  L0_2()
end
L12_1(L13_1, L14_1)
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:server:GetGaleri"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM `player_gallery` WHERE `identifier` = '"
  L5_2 = L2_2.identifier
  L6_2 = "'"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = {}
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "qs-smartphone:AddStory"
L12_1(L13_1)
L12_1 = AddEventHandler
L13_1 = "qs-smartphone:AddStory"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM instagram_account WHERE phone = @phone"
  L5_2 = {}
  L6_2 = L2_2.PlayerData
  L6_2 = L6_2.charinfo
  L6_2 = L6_2.phone
  L5_2["@phone"] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L4_2 = L3_2[1]
    if L4_2 then
      L4_2 = MySQL
      L4_2 = L4_2.Sync
      L4_2 = L4_2.fetchAll
      L5_2 = "SELECT * FROM instagram_stories WHERE owner = @owner"
      L6_2 = {}
      L7_2 = L3_2[1]
      L7_2 = L7_2.username
      L6_2["@owner"] = L7_2
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L5_2 = L4_2[1]
        if L5_2 then
          L5_2 = L4_2[1]
          L6_2 = json
          L6_2 = L6_2.decode
          L7_2 = L4_2[1]
          L7_2 = L7_2.data
          L6_2 = L6_2(L7_2)
          L5_2.data = L6_2
          L5_2 = L4_2[1]
          L5_2 = L5_2.data
          L6_2 = tostring
          L7_2 = TableLen
          L8_2 = L4_2[1]
          L8_2 = L8_2.data
          L7_2 = L7_2(L8_2)
          L7_2 = L7_2 + 1
          L6_2 = L6_2(L7_2)
          L5_2[L6_2] = A0_2
          L5_2 = MySQL
          L5_2 = L5_2.Sync
          L5_2 = L5_2.execute
          L6_2 = "UPDATE instagram_stories SET data = @data WHERE owner = @owner"
          L7_2 = {}
          L8_2 = CheckHtmlInput
          L9_2 = EscapeSqli
          L10_2 = json
          L10_2 = L10_2.encode
          L11_2 = L4_2[1]
          L11_2 = L11_2.data
          L10_2, L11_2, L12_2 = L10_2(L11_2)
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2, L11_2, L12_2)
          L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
          L7_2["@data"] = L8_2
          L8_2 = EscapeSqli
          L9_2 = L3_2[1]
          L9_2 = L9_2.username
          L8_2 = L8_2(L9_2)
          L7_2["@owner"] = L8_2
          L5_2(L6_2, L7_2)
      end
      else
        L5_2 = {}
        L5_2["1"] = A0_2
        L6_2 = MySQL
        L6_2 = L6_2.Sync
        L6_2 = L6_2.execute
        L7_2 = "INSERT INTO instagram_stories (owner, data) VALUES (@owner, @data)"
        L8_2 = {}
        L9_2 = EscapeSqli
        L10_2 = L3_2[1]
        L10_2 = L10_2.username
        L9_2 = L9_2(L10_2)
        L8_2["@owner"] = L9_2
        L9_2 = CheckHtmlInput
        L10_2 = EscapeSqli
        L11_2 = json
        L11_2 = L11_2.encode
        L12_2 = L5_2
        L11_2, L12_2 = L11_2(L12_2)
        L10_2, L11_2, L12_2 = L10_2(L11_2, L12_2)
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L8_2["@data"] = L9_2
        L6_2(L7_2, L8_2)
      end
      L5_2 = TriggerClientEvent
      L6_2 = "qs-smartphone:client:RefreshActivity"
      L7_2 = -1
      L8_2 = L0_1
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L12_1(L13_1, L14_1)
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2 in L2_2, L3_2, L4_2, L5_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
TableLen = L12_1
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:GetInstagramStories"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM instagram_stories"
  L3_2 = L3_2(L4_2)
  L4_2 = nil
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.fetchAll
  L6_2 = "SELECT * FROM instagram_account WHERE phone = @phone"
  L7_2 = {}
  L8_2 = L2_2.PlayerData
  L8_2 = L8_2.charinfo
  L8_2 = L8_2.phone
  L7_2["@phone"] = L8_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L6_2 = L5_2[1]
    if L6_2 then
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT * FROM instagram_followers WHERE username = @username"
      L8_2 = {}
      L9_2 = L5_2[1]
      L9_2 = L9_2.username
      L8_2["@username"] = L9_2
      L6_2 = L6_2(L7_2, L8_2)
      L7_2 = {}
      L8_2 = 1
      L9_2 = #L3_2
      L10_2 = 1
      for L11_2 = L8_2, L9_2, L10_2 do
        L12_2 = L3_2[L11_2]
        L12_2 = L12_2.owner
        L13_2 = L5_2[1]
        L13_2 = L13_2.username
        if L12_2 == L13_2 then
          L4_2 = L3_2[L11_2]
        end
        L12_2 = 1
        L13_2 = #L6_2
        L14_2 = 1
        for L15_2 = L12_2, L13_2, L14_2 do
          L16_2 = L6_2[L15_2]
          L16_2 = L16_2.username
          L17_2 = L5_2[1]
          L17_2 = L17_2.username
          if L16_2 == L17_2 then
            L16_2 = L6_2[L15_2]
            L16_2 = L16_2.followed
            L17_2 = L3_2[L11_2]
            L17_2 = L17_2.owner
            if L16_2 == L17_2 then
              L16_2 = MySQL
              L16_2 = L16_2.Sync
              L16_2 = L16_2.fetchAll
              L17_2 = "SELECT * FROM instagram_account WHERE username = @username2"
              L18_2 = {}
              L19_2 = L3_2[L11_2]
              L19_2 = L19_2.owner
              L18_2["@username2"] = L19_2
              L16_2 = L16_2(L17_2, L18_2)
              L17_2 = table
              L17_2 = L17_2.insert
              L18_2 = L7_2
              L19_2 = {}
              L20_2 = L3_2[L11_2]
              L20_2 = L20_2.owner
              L19_2.owner = L20_2
              L20_2 = L16_2[1]
              L20_2 = L20_2.avatar
              L19_2.profilepicture = L20_2
              L20_2 = L16_2[1]
              L20_2 = L20_2.username
              L19_2.username = L20_2
              L20_2 = json
              L20_2 = L20_2.decode
              L21_2 = L3_2[L11_2]
              L21_2 = L21_2.data
              L20_2 = L20_2(L21_2)
              L19_2.stories = L20_2
              L17_2(L18_2, L19_2)
            end
          end
        end
      end
      L8_2 = A1_2
      L9_2 = {}
      L10_2 = L7_2[1]
      L10_2 = L7_2 or L10_2
      if not L10_2 or not L7_2 then
        L10_2 = nil
      end
      L9_2.Stories = L10_2
      L10_2 = {}
      L11_2 = L5_2[1]
      L11_2 = L11_2.username
      L10_2.owner = L11_2
      L11_2 = L5_2[1]
      L11_2 = L11_2.avatar
      L10_2.profilepicture = L11_2
      L11_2 = L5_2[1]
      L11_2 = L11_2.username
      L10_2.username = L11_2
      if L4_2 then
        L11_2 = json
        L11_2 = L11_2.decode
        L12_2 = L4_2.data
        L11_2 = L11_2(L12_2)
        if L11_2 then
          goto lbl_128
        end
      end
      L11_2 = nil
      ::lbl_128::
      L10_2.stories = L11_2
      L9_2.mydata = L10_2
      L8_2(L9_2)
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = CreateThread
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = Wait
  L1_2 = 8000
  L0_2(L1_2)
  L0_2 = Config
  L0_2 = L0_2.DeleteStoriesAndNotifies
  if L0_2 then
    L0_2 = MySQL
    L0_2 = L0_2.Sync
    L0_2 = L0_2.execute
    L1_2 = "DELETE FROM instagram_stories"
    L0_2(L1_2)
    L0_2 = MySQL
    L0_2 = L0_2.Sync
    L0_2 = L0_2.execute
    L1_2 = "DELETE FROM phone_notifies"
    L0_2(L1_2)
  end
  L0_2 = Config
  L0_2 = L0_2.Jobs
  if L0_2 then
    L0_2 = pairs
    L1_2 = Config
    L1_2 = L1_2.Jobs
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.execute
      L7_2 = "DELETE FROM phone_messages WHERE number = @job OR phone = @job"
      L8_2 = {}
      L9_2 = L5_2.job
      L8_2["@job"] = L9_2
      L6_2(L7_2, L8_2)
    end
  end
end
L12_1(L13_1)
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:server:GetNotes"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * FROM `player_notes` WHERE `identifier` = '"
  L6_2 = L2_2.identifier
  L7_2 = "'"
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = {}
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = A0_3[1]
    if nil ~= L1_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = {}
        L8_3 = {}
        L9_3 = L6_3.baslik
        L8_3.baslik = L9_3
        L9_3 = L6_3.aciklama
        L8_3.aciklama = L9_3
        L9_3 = L6_3.id
        L8_3.id = L9_3
        L7_3 = L8_3
        L8_3 = table
        L8_3 = L8_3.insert
        L9_3 = L3_2
        L10_3 = L7_3
        L8_3(L9_3, L10_3)
      end
      L1_3 = A1_2
      L2_3 = L3_2
      L1_3(L2_3)
    else
      L1_3 = A1_2
      L2_3 = nil
      L1_3(L2_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "qs-smartphone:cancelRequest"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = source
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.removeAccountMoney
    L4_2 = Config
    L4_2 = L4_2.UberDriverAccount
    L5_2 = Config
    L5_2 = L5_2.UberMinimumMoney
    L3_2(L4_2, L5_2)
    if A0_2 then
      L3_2 = Lang
      L4_2 = "UBERDRIVER_CANCEL_REQUEST_1"
      L3_2 = L3_2(L4_2)
      if L3_2 then
        goto lbl_26
      end
    end
    L3_2 = Lang
    L4_2 = "UBERDRIVER_CANCEL_REQUEST_2"
    L3_2 = L3_2(L4_2)
    ::lbl_26::
    L4_2 = pairs
    L5_2 = L7_1
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      if A0_2 then
        L10_2 = L9_2.src
        if L10_2 == L1_2 then
          goto lbl_39
        end
      end
      L10_2 = L9_2.customer
      L10_2 = L10_2.src
      ::lbl_39::
      if L10_2 == L1_2 then
        L10_2 = ESX
        L10_2 = L10_2.GetPlayerFromId
        if A0_2 then
          L11_2 = L9_2.customer
          L11_2 = L11_2.src
          if L11_2 then
            goto lbl_48
          end
        end
        L11_2 = L9_2.src
        ::lbl_48::
        L10_2 = L10_2(L11_2)
        L11_2 = TriggerClientEvent
        L12_2 = "qs-smartphone:client:notify"
        L13_2 = source
        L14_2 = {}
        L15_2 = Lang
        L16_2 = "UBERDRIVER_TITLE"
        L15_2 = L15_2(L16_2)
        L14_2.title = L15_2
        L14_2.text = L3_2
        L14_2.icon = "./img/apps/uberDriver.png"
        L11_2(L12_2, L13_2, L14_2)
        L11_2 = L10_2.addAccountMoney
        L12_2 = Config
        L12_2 = L12_2.UberDriverAccount
        L13_2 = Config
        L13_2 = L13_2.UberMinimumMoney
        L11_2(L12_2, L13_2)
        L11_2 = TriggerClientEvent
        L12_2 = "qs-smartphone:refreshUberDriverApp"
        L13_2 = L9_2.customer
        L13_2 = L13_2.src
        L11_2(L12_2, L13_2)
        L11_2 = TriggerClientEvent
        L12_2 = "qs-smartphone:refreshUberDriverApp"
        L13_2 = L9_2.src
        L11_2(L12_2, L13_2)
        L11_2 = L7_1
        L11_2 = L11_2[L8_2]
        L11_2.customer = nil
        return
      end
    end
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = source
      L2_2 = GetPlayerFromIdFramework
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2.Functions
      L3_2 = L3_2.RemoveMoney
      L4_2 = Config
      L4_2 = L4_2.UberDriverAccount
      L5_2 = Config
      L5_2 = L5_2.UberMinimumMoney
      L3_2(L4_2, L5_2)
      if A0_2 then
        L3_2 = Lang
        L4_2 = "UBERDRIVER_CANCEL_REQUEST_1"
        L3_2 = L3_2(L4_2)
        if L3_2 then
          goto lbl_109
        end
      end
      L3_2 = Lang
      L4_2 = "UBERDRIVER_CANCEL_REQUEST_2"
      L3_2 = L3_2(L4_2)
      ::lbl_109::
      L4_2 = pairs
      L5_2 = L7_1
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        if A0_2 then
          L10_2 = L9_2.src
          if L10_2 == L1_2 then
            goto lbl_122
          end
        end
        L10_2 = L9_2.customer
        L10_2 = L10_2.src
        ::lbl_122::
        if L10_2 == L1_2 then
          L10_2 = GetPlayerFromIdFramework
          if A0_2 then
            L11_2 = L9_2.customer
            L11_2 = L11_2.src
            if L11_2 then
              goto lbl_130
            end
          end
          L11_2 = L9_2.src
          ::lbl_130::
          L10_2 = L10_2(L11_2)
          L11_2 = TriggerClientEvent
          L12_2 = "qs-smartphone:client:notify"
          L13_2 = source
          L14_2 = {}
          L15_2 = Lang
          L16_2 = "UBERDRIVER_TITLE"
          L15_2 = L15_2(L16_2)
          L14_2.title = L15_2
          L14_2.text = L3_2
          L14_2.icon = "./img/apps/uberDriver.png"
          L11_2(L12_2, L13_2, L14_2)
          L11_2 = L10_2.Functions
          L11_2 = L11_2.AddMoney
          L12_2 = Config
          L12_2 = L12_2.UberDriverAccount
          L13_2 = Config
          L13_2 = L13_2.UberMinimumMoney
          L11_2(L12_2, L13_2)
          L11_2 = TriggerClientEvent
          L12_2 = "qs-smartphone:refreshUberDriverApp"
          L13_2 = L9_2.customer
          L13_2 = L13_2.src
          L11_2(L12_2, L13_2)
          L11_2 = TriggerClientEvent
          L12_2 = "qs-smartphone:refreshUberDriverApp"
          L13_2 = L9_2.src
          L11_2(L12_2, L13_2)
          L11_2 = L7_1
          L11_2 = L11_2[L8_2]
          L11_2.customer = nil
          return
        end
      end
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:getUberDriverData"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = L7_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.src
    if L8_2 == A0_2 then
      L8_2 = L7_2.customer
      if L8_2 then
        L8_2 = A1_2
        L9_2 = "isDriver"
        return L8_2(L9_2)
    end
    else
      L8_2 = L7_2.customer
      if L8_2 then
        L8_2 = L7_2.customer
        L8_2 = L8_2.src
        if L8_2 == A0_2 then
          L8_2 = A1_2
          L9_2 = "isRequester"
          return L8_2(L9_2)
        end
      end
    end
  end
  L2_2 = A1_2
  L3_2 = false
  L2_2(L3_2)
end
L12_1(L13_1, L14_1)
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:getUberDistance"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = "calculating"
  L3_2 = pairs
  L4_2 = L7_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.customer
    if L9_2 then
      L9_2 = L8_2.customer
      L9_2 = L9_2.src
      if L9_2 == A0_2 then
        L9_2 = A1_2
        L10_2 = L7_1
        L10_2 = L10_2[L7_2]
        L10_2 = L10_2.distance
        L9_2(L10_2)
        return
      end
    end
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:getUberCarData"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = L7_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.customer
    if L8_2 then
      L8_2 = L7_2.customer
      L8_2 = L8_2.src
      if L8_2 == A0_2 then
        L8_2 = A1_2
        L9_2 = L7_1
        L9_2 = L9_2[L6_2]
        return L8_2(L9_2)
      end
    end
  end
  L2_2 = A1_2
  L3_2 = {}
  L2_2(L3_2)
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "qs-smartphone:SetDriverData"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2 or nil
  if not A1_2 then
    L2_2 = source
  end
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.PlayerData
  L4_2 = L4_2.charinfo
  L4_2 = L4_2.phone
  if not L4_2 then
    L5_2 = print
    L6_2 = L2_2
    L7_2 = "qs-smartphone: Phone not defined in Uber"
    return L5_2(L6_2, L7_2)
  end
  if A0_2 then
    A0_2.src = L2_2
    L5_2 = L3_2.PlayerData
    L5_2 = L5_2.charinfo
    L5_2 = L5_2.firstname
    A0_2.firstname = L5_2
    L5_2 = L3_2.PlayerData
    L5_2 = L5_2.charinfo
    L5_2 = L5_2.lastname
    A0_2.lastname = L5_2
  else
    L5_2 = L7_1
    L5_2 = L5_2[L4_2]
    if L5_2 then
      L5_2 = L7_1
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.customer
      if L5_2 then
        L5_2 = TriggerClientEvent
        L6_2 = "qs-smartphone:LeavedDriver"
        L7_2 = L7_1
        L7_2 = L7_2[L4_2]
        L7_2 = L7_2.customer
        L7_2 = L7_2.src
        L5_2(L6_2, L7_2)
      end
    end
  end
  L5_2 = L7_1
  L5_2[L4_2] = A0_2
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "qs-smartphone:RequestUberDriver"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = source
  L2_2 = pairs
  L3_2 = L7_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.src
    L9_2 = A0_2.src
    if L8_2 == L9_2 then
      L8_2 = L7_1
      L8_2 = L8_2[L6_2]
      L9_2 = A0_2.customer
      L8_2.customer = L9_2
      L8_2 = TriggerClientEvent
      L9_2 = "qs-smartphone:TakeUberDriverRequest"
      L10_2 = L7_2.src
      L11_2 = L7_1
      L11_2 = L11_2[L6_2]
      L8_2(L9_2, L10_2, L11_2)
      return
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:CanRequestUberDriver"
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.getAccount
    L5_2 = Config
    L5_2 = L5_2.UberDriverAccount
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.money
    L5_2 = Config
    L5_2 = L5_2.UberMinimumMoney
    if L4_2 < L5_2 then
      L4_2 = TriggerClientEvent
      L5_2 = "qs-smartphone:client:notify"
      L6_2 = A0_2
      L7_2 = {}
      L8_2 = Lang
      L9_2 = "UBERDRIVER_TITLE"
      L8_2 = L8_2(L9_2)
      L7_2.title = L8_2
      L8_2 = Lang
      L9_2 = "UBERDRIVER_NO_MONEY"
      L8_2 = L8_2(L9_2)
      L7_2.text = L8_2
      L7_2.icon = "./img/apps/uberDriver.png"
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = A1_2
      L5_2 = false
      return L4_2(L5_2)
    end
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = GetPlayerFromIdFramework
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.PlayerData
      L4_2 = L4_2.money
      L5_2 = Config
      L5_2 = L5_2.UberDriverAccount
      L4_2 = L4_2[L5_2]
      L5_2 = Config
      L5_2 = L5_2.UberMinimumMoney
      if L4_2 < L5_2 then
        L4_2 = TriggerClientEvent
        L5_2 = "qs-smartphone:client:notify"
        L6_2 = A0_2
        L7_2 = {}
        L8_2 = Lang
        L9_2 = "UBERDRIVER_TITLE"
        L8_2 = L8_2(L9_2)
        L7_2.title = L8_2
        L8_2 = Lang
        L9_2 = "UBERDRIVER_NO_MONEY"
        L8_2 = L8_2(L9_2)
        L7_2.text = L8_2
        L7_2.icon = "./img/apps/uberDriver.png"
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = A1_2
        L5_2 = false
        return L4_2(L5_2)
      end
    end
  end
  L3_2 = pairs
  L4_2 = L7_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.src
    if L9_2 == A0_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "qs-smartphone:client:notify"
      L11_2 = A0_2
      L12_2 = {}
      L13_2 = Lang
      L14_2 = "UBERDRIVER_TITLE"
      L13_2 = L13_2(L14_2)
      L12_2.title = L13_2
      L13_2 = Lang
      L14_2 = "UBERDRIVER_ALREADY_UBER"
      L13_2 = L13_2(L14_2)
      L12_2.text = L13_2
      L12_2.icon = "./img/apps/uberDriver.png"
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = A1_2
      L10_2 = false
      return L9_2(L10_2)
    end
  end
  L3_2 = A1_2
  L4_2 = true
  return L3_2(L4_2)
end
L12_1(L13_1, L14_1)
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:canBeUberDriver"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = Config
  L2_2 = L2_2.Framework
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.getAccount
    L4_2 = Config
    L4_2 = L4_2.UberDriverAccount
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.money
    L4_2 = Config
    L4_2 = L4_2.UberMinimumMoney
    if L3_2 < L4_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "qs-smartphone:client:notify"
      L5_2 = A0_2
      L6_2 = {}
      L7_2 = Lang
      L8_2 = "UBERDRIVER_TITLE"
      L7_2 = L7_2(L8_2)
      L6_2.title = L7_2
      L7_2 = Lang
      L8_2 = "UBERDRIVER_NO_MONEY"
      L7_2 = L7_2(L8_2)
      L6_2.text = L7_2
      L6_2.icon = "./img/apps/uberDriver.png"
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = A1_2
      L4_2 = false
      return L3_2(L4_2)
    end
    L3_2 = A1_2
    L4_2 = true
    return L3_2(L4_2)
  else
    L2_2 = Config
    L2_2 = L2_2.Framework
    if "QBCore" == L2_2 then
      L2_2 = GetPlayerFromIdFramework
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2.PlayerData
      L3_2 = L3_2.money
      L4_2 = Config
      L4_2 = L4_2.UberDriverAccount
      L3_2 = L3_2[L4_2]
      L4_2 = Config
      L4_2 = L4_2.UberMinimumMoney
      if L3_2 < L4_2 then
        L3_2 = TriggerClientEvent
        L4_2 = "qs-smartphone:client:notify"
        L5_2 = A0_2
        L6_2 = {}
        L7_2 = Lang
        L8_2 = "UBERDRIVER_TITLE"
        L7_2 = L7_2(L8_2)
        L6_2.title = L7_2
        L7_2 = Lang
        L8_2 = "UBERDRIVER_NO_MONEY"
        L7_2 = L7_2(L8_2)
        L6_2.text = L7_2
        L6_2.icon = "./img/apps/uberDriver.png"
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = A1_2
        L4_2 = false
        return L3_2(L4_2)
      end
      L3_2 = A1_2
      L4_2 = true
      return L3_2(L4_2)
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:uberCustomerGetPhone"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = L7_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.src
    if L8_2 == A0_2 then
      L8_2 = A1_2
      L9_2 = L7_2.customer
      L9_2 = L9_2.phoneNumber
      return L8_2(L9_2)
    end
  end
  L2_2 = A1_2
  L3_2 = false
  return L2_2(L3_2)
end
L12_1(L13_1, L14_1)
L12_1 = QSPhone
L12_1 = L12_1.RegisterServerCallback
L13_1 = "qs-smartphone:UberDriverGetPhone"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = pairs
  L3_2 = L7_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.customer
    L8_2 = L8_2.src
    if L8_2 == A0_2 then
      L8_2 = A1_2
      L9_2 = L6_2
      return L8_2(L9_2)
    end
  end
  L2_2 = A1_2
  L3_2 = false
  return L2_2(L3_2)
end
L12_1(L13_1, L14_1)
L12_1 = CreateThread
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  while true do
    L0_2 = pairs
    L1_2 = L7_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = L5_2.customer
      if L6_2 then
        L6_2 = GetPlayerPed
        L7_2 = L5_2.src
        L6_2 = L6_2(L7_2)
        L7_2 = GetPlayerPed
        L8_2 = L5_2.customer
        L8_2 = L8_2.src
        L7_2 = L7_2(L8_2)
        L8_2 = L7_1
        L8_2 = L8_2[L4_2]
        L9_2 = GetEntityCoords
        L10_2 = L6_2
        L9_2 = L9_2(L10_2)
        L10_2 = GetEntityCoords
        L11_2 = L7_2
        L10_2 = L10_2(L11_2)
        L9_2 = L9_2 - L10_2
        L9_2 = #L9_2
        L9_2 = L9_2 / 10.0
        L8_2.distance = L9_2
      end
    end
    L0_2 = Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
end
L12_1(L13_1)
L12_1 = RegisterNetEvent
L13_1 = "qs-smartphone:UpdateRiderData"
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.PlayerData
  L2_2 = L2_2.charinfo
  L2_2 = L2_2.phone
  L3_2 = L7_1
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L3_2 = print
    L4_2 = "qs-smartphone: Not finded rider data in Uber"
    return L3_2(L4_2)
  end
  L3_2 = L7_1
  L3_2 = L3_2[L2_2]
  L3_2.customerData = A0_2
end
L12_1(L13_1, L14_1)
L12_1 = RegisterNetEvent
L13_1 = "qs-smartphone:UpdateCustomKey"
function L14_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = pairs
  L4_2 = L7_1
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.customer
    if L9_2 then
      L9_2 = L8_2.customer
      L9_2 = L9_2.src
      if L9_2 == L2_2 then
        L9_2 = L7_1
        L9_2 = L9_2[L7_2]
        L9_2[A0_2] = A1_2
        return
      end
    end
  end
end
L12_1(L13_1, L14_1)
L12_1 = Config
L12_1 = L12_1.Framework
if "ESX" == L12_1 then
  L12_1 = RegisterNetEvent
  L13_1 = "qs-smartphone:FinishUberDriver"
  function L14_1()
    local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
    L0_2 = source
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = pairs
    L3_2 = L7_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.customer
      if L8_2 then
        L8_2 = L7_2.customer
        L8_2 = L8_2.src
        if L8_2 == L0_2 then
          L8_2 = L7_2.price
          L9_2 = L7_2.km
          L8_2 = L8_2 * L9_2
          L9_2 = Config
          L9_2 = L9_2.UberMaximumPerKilometer
          L8_2 = L8_2 / L9_2
          L9_2 = Config
          L9_2 = L9_2.UberMaximumMoney
          if L8_2 >= L9_2 then
            L9_2 = Config
            L8_2 = L9_2.UberMaximumMoney
          end
          L9_2 = L1_2.removeAccountMoney
          L10_2 = Config
          L10_2 = L10_2.UberDriverAccount
          L11_2 = L8_2
          L9_2(L10_2, L11_2)
          L9_2 = ESX
          L9_2 = L9_2.GetPlayerFromId
          L10_2 = L7_2.src
          L9_2 = L9_2(L10_2)
          L10_2 = L9_2.addAccountMoney
          L11_2 = Config
          L11_2 = L11_2.UberDriverAccount
          L12_2 = L8_2
          L10_2(L11_2, L12_2)
          L10_2 = TriggerClientEvent
          L11_2 = "qs-smartphone:sendMessage"
          L12_2 = L7_2.src
          L13_2 = Lang
          L14_2 = "UBERDRIVER_DRIVER_PAY"
          L13_2 = L13_2(L14_2)
          L14_2 = math
          L14_2 = L14_2.floor
          L15_2 = L8_2
          L14_2 = L14_2(L15_2)
          L13_2 = L13_2 .. L14_2
          L14_2 = "success"
          L10_2(L11_2, L12_2, L13_2, L14_2)
          L10_2 = TriggerClientEvent
          L11_2 = "qs-smartphone:sendMessage"
          L12_2 = L0_2
          L13_2 = Lang
          L14_2 = "UBERDRIVER_CUSTOMER_PAY"
          L13_2 = L13_2(L14_2)
          L14_2 = math
          L14_2 = L14_2.floor
          L15_2 = L8_2
          L14_2 = L14_2(L15_2)
          L13_2 = L13_2 .. L14_2
          L14_2 = "inform"
          L10_2(L11_2, L12_2, L13_2, L14_2)
          L10_2 = L7_1
          L10_2 = L10_2[L6_2]
          L10_2.km = 0
          L10_2 = L7_1
          L10_2 = L10_2[L6_2]
          L10_2.customer = nil
          return
        end
      end
    end
  end
  L12_1(L13_1, L14_1)
else
  L12_1 = Config
  L12_1 = L12_1.Framework
  if "QBCore" == L12_1 then
    L12_1 = RegisterNetEvent
    L13_1 = "qs-smartphone:FinishUberDriver"
    function L14_1()
      local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
      L0_2 = source
      L1_2 = GetPlayerFromIdFramework
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = pairs
      L3_2 = L7_1
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L7_2.customer
        if L8_2 then
          L8_2 = L7_2.customer
          L8_2 = L8_2.src
          if L8_2 == L0_2 then
            L8_2 = L7_2.price
            L9_2 = L7_2.km
            L8_2 = L8_2 * L9_2
            L9_2 = Config
            L9_2 = L9_2.UberMaximumPerKilometer
            L8_2 = L8_2 / L9_2
            L9_2 = Config
            L9_2 = L9_2.UberMaximumMoney
            if L8_2 >= L9_2 then
              L9_2 = Config
              L8_2 = L9_2.UberMaximumMoney
            end
            L9_2 = L7_2.price
            L10_2 = L7_2.km
            L9_2 = L9_2 * L10_2
            L9_2 = L9_2 / 100
            L10_2 = L1_2.Functions
            L10_2 = L10_2.RemoveMoney
            L11_2 = Config
            L11_2 = L11_2.UberDriverAccount
            L12_2 = L9_2
            L10_2(L11_2, L12_2)
            L10_2 = GetPlayerFromIdFramework
            L11_2 = L0_2
            L10_2 = L10_2(L11_2)
            L11_2 = L7_2.src
            L10_2 = L10_2(L11_2)
            L11_2 = L10_2.Functions
            L11_2 = L11_2.AddMoney
            L12_2 = Config
            L12_2 = L12_2.UberDriverAccount
            L13_2 = L9_2
            L11_2(L12_2, L13_2)
            L11_2 = TriggerClientEvent
            L12_2 = "qs-smartphone:sendMessage"
            L13_2 = L7_2.src
            L14_2 = Lang
            L15_2 = "UBERDRIVER_DRIVER_PAY"
            L14_2 = L14_2(L15_2)
            L15_2 = math
            L15_2 = L15_2.floor
            L16_2 = L9_2
            L15_2 = L15_2(L16_2)
            L14_2 = L14_2 .. L15_2
            L15_2 = "success"
            L11_2(L12_2, L13_2, L14_2, L15_2)
            L11_2 = TriggerClientEvent
            L12_2 = "qs-smartphone:sendMessage"
            L13_2 = L0_2
            L14_2 = Lang
            L15_2 = "UBERDRIVER_CUSTOMER_PAY"
            L14_2 = L14_2(L15_2)
            L15_2 = math
            L15_2 = L15_2.floor
            L16_2 = L9_2
            L15_2 = L15_2(L16_2)
            L14_2 = L14_2 .. L15_2
            L15_2 = "inform"
            L11_2(L12_2, L13_2, L14_2, L15_2)
            L11_2 = L7_1
            L11_2 = L11_2[L6_2]
            L11_2.km = 0
            L11_2 = L7_1
            L11_2 = L11_2[L6_2]
            L11_2.customer = nil
            return
          end
        end
      end
    end
    L12_1(L13_1, L14_1)
  end
end
L12_1 = CreateThread
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  while true do
    L0_2 = pairs
    L1_2 = L7_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = L5_2.km
      if not L6_2 then
        L5_2.km = 0
      end
      L6_2 = CreateThread
      function L7_2()
        local L0_3, L1_3, L2_3, L3_3, L4_3
        L0_3 = L5_2.enteredVehicle
        if L0_3 then
          L0_3 = NetworkGetEntityFromNetworkId
          L1_3 = L5_2.enteredVehicle
          L0_3 = L0_3(L1_3)
          L1_3 = GetEntityCoords
          L2_3 = L0_3
          L1_3 = L1_3(L2_3)
          L2_3 = Wait
          L3_3 = 500
          L2_3(L3_3)
          L2_3 = GetEntityCoords
          L3_3 = L0_3
          L2_3 = L2_3(L3_3)
          L3_3 = L2_3 - L1_3
          L3_3 = #L3_3
          L4_3 = L5_2.km
          L4_3 = L4_3 + L3_3
          L5_2.km = L4_3
        end
      end
      L6_2(L7_2)
    end
    L0_2 = Wait
    L1_2 = 300
    L0_2(L1_2)
  end
end
L12_1(L13_1)
L12_1 = exports
L13_1 = "getPhoneNames"
function L14_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Phones
  return L0_2
end
L12_1(L13_1, L14_1)
L12_1 = exports
L13_1 = "getESXIdentifier"
function L14_1(A0_2)
  local L1_2, L2_2
  L1_2 = ESX
  L1_2 = L1_2.GetPlayerFromId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.identifier
  return L1_2
end
L12_1(L13_1, L14_1)
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L7_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.customer
    if not L8_2 then
      if A0_2 then
        L8_2 = L7_2.vehicleClass
        if L8_2 == A0_2 then
          L8_2 = table
          L8_2 = L8_2.insert
          L9_2 = L1_2
          L10_2 = L7_2
          L8_2(L9_2, L10_2)
        end
      elseif not A0_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L7_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  return L1_2
end
L13_1 = QSPhone
L13_1 = L13_1.RegisterServerCallback
L14_1 = "qs-smartphone:GetDriversData"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L12_1
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:server:DeleteNotifies"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "qs-smartphone:server:DeleteNotifies"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.match
  L2_2 = A0_2
  L3_2 = "%d+"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = tonumber
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L1_2 = L2_2
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.execute
  L3_2 = "DELETE FROM phone_notifies WHERE `id` = @id"
  L4_2 = {}
  L4_2["@id"] = L1_2
  L2_2(L3_2, L4_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = "qs-smartphone:server:AddNotifies"
L13_1(L14_1)
L13_1 = AddEventHandler
L14_1 = "qs-smartphone:server:AddNotifies"
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = false
  L3_2 = GetPlayerFromIdFramework
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.fetchAll
  L5_2 = "SELECT * FROM phone_notifies WHERE phone = @phone"
  L6_2 = {}
  L7_2 = A0_2.phone
  L6_2["@phone"] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = L4_2[1]
  if L5_2 then
    L5_2 = 1
    L6_2 = #L4_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L4_2[L8_2]
      L9_2 = L9_2.msg_head
      L10_2 = A0_2.head
      if L9_2 == L10_2 then
        L9_2 = L4_2[L8_2]
        L9_2 = L9_2.app_name
        L10_2 = A0_2.app
        if L9_2 == L10_2 then
          L9_2 = MySQL
          L9_2 = L9_2.Sync
          L9_2 = L9_2.execute
          L10_2 = "UPDATE phone_notifies SET msg_content = @msg, msg_time = @time WHERE id = @id"
          L11_2 = {}
          L12_2 = EscapeSqli
          L13_2 = A0_2.msg
          L12_2 = L12_2(L13_2)
          L11_2["@msg"] = L12_2
          L12_2 = A0_2.time
          L11_2["@time"] = L12_2
          L12_2 = L4_2[L8_2]
          L12_2 = L12_2.id
          L11_2["@id"] = L12_2
          L9_2(L10_2, L11_2)
          L2_2 = true
          break
        end
      end
    end
  end
  if not L2_2 then
    if A0_2 then
      L5_2 = A0_2.app
      if "WHATSAPP" == L5_2 then
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "INSERT INTO phone_notifies (phone, msg_content, msg_head, app_name, msg_time) VALUES (@phone, @msg, @msghead, @app, @time)"
        L7_2 = {}
        L8_2 = A0_2.phone
        L7_2["@phone"] = L8_2
        L8_2 = EscapeSqli
        L9_2 = A0_2.msg
        L8_2 = L8_2(L9_2)
        L7_2["@msg"] = L8_2
        L8_2 = EscapeSqli
        L9_2 = A0_2.head
        L8_2 = L8_2(L9_2)
        L7_2["@msghead"] = L8_2
        L8_2 = EscapeSqli
        L9_2 = A0_2.app
        L8_2 = L8_2(L9_2)
        L7_2["@app"] = L8_2
        L8_2 = A0_2.time
        L7_2["@time"] = L8_2
        L5_2(L6_2, L7_2)
    end
    else
      if A0_2 then
        L5_2 = A0_2.app
        if "TINDER" == L5_2 then
          L5_2 = MySQL
          L5_2 = L5_2.Sync
          L5_2 = L5_2.execute
          L6_2 = "INSERT INTO phone_notifies (phone, msg_content, msg_head, app_name, msg_time) VALUES (@phone, @msg, @msghead, @app, @time)"
          L7_2 = {}
          L8_2 = A0_2.phone
          L7_2["@phone"] = L8_2
          L8_2 = EscapeSqli
          L9_2 = A0_2.msg
          L8_2 = L8_2(L9_2)
          L7_2["@msg"] = L8_2
          L8_2 = EscapeSqli
          L9_2 = A0_2.head
          L8_2 = L8_2(L9_2)
          L7_2["@msghead"] = L8_2
          L8_2 = EscapeSqli
          L9_2 = A0_2.app
          L8_2 = L8_2(L9_2)
          L7_2["@app"] = L8_2
          L8_2 = A0_2.time
          L7_2["@time"] = L8_2
          L5_2(L6_2, L7_2)
      end
      else
        L5_2 = MySQL
        L5_2 = L5_2.Sync
        L5_2 = L5_2.execute
        L6_2 = "INSERT INTO phone_notifies (phone, msg_content, msg_head, app_name, msg_time) VALUES (@phone, @msg, @msghead, @app, @time)"
        L7_2 = {}
        L8_2 = A0_2.phone
        L7_2["@phone"] = L8_2
        L8_2 = EscapeSqli
        L9_2 = A0_2.msg
        L8_2 = L8_2(L9_2)
        L7_2["@msg"] = L8_2
        L8_2 = EscapeSqli
        L9_2 = A0_2.head
        L8_2 = L8_2(L9_2)
        L7_2["@msghead"] = L8_2
        L8_2 = EscapeSqli
        L9_2 = A0_2.app
        L8_2 = L8_2(L9_2)
        L7_2["@app"] = L8_2
        L8_2 = A0_2.time
        L7_2["@time"] = L8_2
        L5_2(L6_2, L7_2)
      end
    end
  end
  L5_2 = TriggerClientEvent
  L6_2 = "qs-smartphone:client:UpdateNotifies"
  L7_2 = -1
  L8_2 = A0_2.phone
  L5_2(L6_2, L7_2, L8_2)
end
L13_1(L14_1, L15_1)
L13_1 = QSPhone
L13_1 = L13_1.RegisterServerCallback
L14_1 = "qs-smartphone:server:GetCharacterData"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A0_2 or nil
  if not A0_2 then
    L3_2 = A2_2
  end
  L4_2 = GetPlayerFromIdFramework
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT * FROM phone_notifies WHERE phone = @phone"
    L7_2 = {}
    L8_2 = L4_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@phone"] = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = 1
    L7_2 = #L5_2
    L8_2 = 1
    for L9_2 = L6_2, L7_2, L8_2 do
      L10_2 = MySQL
      L10_2 = L10_2.Sync
      L10_2 = L10_2.fetchAll
      L11_2 = "SELECT * FROM player_contacts WHERE identifier = @identifier AND number = @number"
      L12_2 = {}
      L13_2 = L4_2.PlayerData
      L13_2 = L13_2.charinfo
      L13_2 = L13_2.phone
      L12_2["@identifier"] = L13_2
      L13_2 = L5_2[L9_2]
      L13_2 = L13_2.msg_head
      L12_2["@number"] = L13_2
      L10_2 = L10_2(L11_2, L12_2)
      L11_2 = L10_2[1]
      if L11_2 then
        L11_2 = L5_2[L9_2]
        L12_2 = L10_2[1]
        L12_2 = L12_2.name
        L11_2.msg_head = L12_2
      end
    end
    L6_2 = L4_2.PlayerData
    L6_2 = L6_2.metadata
    L6_2 = L6_2.phone
    L6_2 = L6_2.Pincode
    L7_2 = Config
    L7_2 = L7_2.Framework
    if "ESX" == L7_2 then
      L7_2 = A1_2
      L8_2 = L4_2.PlayerData
      L8_2 = L8_2.charinfo
      L9_2 = ESX
      L9_2 = L9_2.GetPlayerFromId
      L10_2 = L3_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.getAccount
      L10_2 = "bank"
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.money
      L10_2 = L5_2 or L10_2
      if not L5_2 then
        L10_2 = {}
      end
      L11_2 = L6_2
      L7_2(L8_2, L9_2, L10_2, L11_2)
    else
      L7_2 = Config
      L7_2 = L7_2.Framework
      if "QBCore" == L7_2 then
        L7_2 = A1_2
        L8_2 = L4_2.PlayerData
        L8_2 = L8_2.charinfo
        L9_2 = L4_2.PlayerData
        L9_2 = L9_2.money
        L9_2 = L9_2.cash
        L10_2 = L5_2 or L10_2
        if not L5_2 then
          L10_2 = {}
        end
        L11_2 = L6_2
        L7_2(L8_2, L9_2, L10_2, L11_2)
      end
    end
  else
    L5_2 = print
    L6_2 = "qs-smartphone: player = nil, check qs-base (if you are using es_extended) started correctly and rejoin in the server."
    L5_2(L6_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = QSPhone
L13_1 = L13_1.RegisterServerCallback
L14_1 = "qs-smartphone-server:GetActiveJob"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = GetPlayers
  L3_2 = L3_2()
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = GetPlayerFromIdFramework
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = GetJob
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    L12_2 = L12_2.name
    if L12_2 == A2_2 then
      L12_2 = {}
      L13_2 = L11_2.PlayerData
      L13_2 = L13_2.charinfo
      L13_2 = L13_2.firstname
      L12_2.firstname = L13_2
      L13_2 = L11_2.PlayerData
      L13_2 = L13_2.charinfo
      L13_2 = L13_2.lastname
      L12_2.lastname = L13_2
      L13_2 = L11_2.PlayerData
      L13_2 = L13_2.charinfo
      L13_2 = L13_2.phone
      L12_2.phonenumber = L13_2
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L4_2
      L15_2 = L12_2
      L13_2(L14_2, L15_2)
    end
  end
  L5_2 = #L4_2
  if L5_2 >= 1 then
    L5_2 = A1_2
    L6_2 = L4_2
    L5_2(L6_2)
  else
    L5_2 = A1_2
    L6_2 = ""
    L5_2(L6_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = QSPhone
L13_1 = L13_1.RegisterServerCallback
L14_1 = "qs-smartphone:AddAccountTinder"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.execute
  L5_2 = [[
INSERT INTO tinder_accounts 
        (`phone`, `pp`, `name`, `gender`, `targetGender`, `hobbies`, `age`, `description`, `password`) 
        VALUES 
        (@phone, @pp, @name, @gender, @targetGender, @hobbies, @age, @dsc, @psw)
        ]]
  L6_2 = {}
  L7_2 = L3_2.PlayerData
  L7_2 = L7_2.charinfo
  L7_2 = L7_2.phone
  L6_2["@phone"] = L7_2
  L7_2 = CheckHtmlInput
  L8_2 = A2_2.img
  L7_2 = L7_2(L8_2)
  L6_2["@pp"] = L7_2
  L7_2 = CheckHtmlInput
  L8_2 = EscapeSqli
  L9_2 = A2_2.username
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L6_2["@name"] = L7_2
  L7_2 = EscapeSqli
  L8_2 = A2_2.myGender
  L7_2 = L7_2(L8_2)
  L6_2["@gender"] = L7_2
  L7_2 = EscapeSqli
  L8_2 = A2_2.interested
  L7_2 = L7_2(L8_2)
  L6_2["@targetGender"] = L7_2
  L6_2["@hobbies"] = ""
  L7_2 = A2_2.dob
  L6_2["@age"] = L7_2
  L6_2["@dsc"] = ""
  L7_2 = EscapeSqli
  L8_2 = A2_2.password
  L7_2 = L7_2(L8_2)
  L6_2["@psw"] = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = true
  L4_2(L5_2)
end
L13_1(L14_1, L15_1)
L13_1 = QSPhone
L13_1 = L13_1.RegisterServerCallback
L14_1 = "qs-smartphone:GetUsersTinder"
function L15_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = GetPlayerFromIdFramework
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = nil
  L6_2 = MySQL
  L6_2 = L6_2.Sync
  L6_2 = L6_2.fetchAll
  L7_2 = "SELECT * FROM tinder_accounts WHERE phone = @phone LIMIT 1"
  L8_2 = {}
  L9_2 = L4_2.PlayerData
  L9_2 = L9_2.charinfo
  L9_2 = L9_2.phone
  L8_2["@phone"] = L9_2
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 then
    L7_2 = L6_2[1]
    if L7_2 then
      L7_2 = L6_2[1]
      L7_2 = L7_2.targetGender
      if "man" ~= L7_2 then
        L7_2 = L6_2[1]
        L7_2 = L7_2.targetGender
        if "woman" ~= L7_2 then
          goto lbl_46
        end
      end
      L7_2 = MySQL
      L7_2 = L7_2.Sync
      L7_2 = L7_2.fetchAll
      L8_2 = "SELECT * FROM tinder_accounts WHERE (gender = @gender OR gender = @gender2)"
      L9_2 = {}
      L10_2 = L6_2[1]
      L10_2 = L10_2.targetGender
      L9_2["@gender"] = L10_2
      L9_2["@gender2"] = "other"
      L7_2 = L7_2(L8_2, L9_2)
      L5_2 = L7_2
      goto lbl_54
      ::lbl_46::
      L7_2 = MySQL
      L7_2 = L7_2.Sync
      L7_2 = L7_2.fetchAll
      L8_2 = "SELECT * FROM tinder_accounts"
      L9_2 = {}
      L7_2 = L7_2(L8_2, L9_2)
      L5_2 = L7_2
      ::lbl_54::
      L7_2 = MySQL
      L7_2 = L7_2.Sync
      L7_2 = L7_2.fetchAll
      L8_2 = "SELECT * FROM tinder_likes WHERE phone = @phone LIMIT 1"
      L9_2 = {}
      L10_2 = L4_2.PlayerData
      L10_2 = L10_2.charinfo
      L10_2 = L10_2.phone
      L9_2["@phone"] = L10_2
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = L6_2[1]
      if L8_2 then
        L8_2 = L6_2[1]
        L8_2 = L8_2.phone
        L9_2 = L4_2.PlayerData
        L9_2 = L9_2.charinfo
        L9_2 = L9_2.phone
        if L8_2 == L9_2 then
          L3_2 = L6_2[1]
        end
      end
      if L5_2 then
        L8_2 = L5_2[1]
        if L8_2 then
          L8_2 = 1
          L9_2 = #L5_2
          L10_2 = 1
          for L11_2 = L8_2, L9_2, L10_2 do
            L12_2 = L5_2[L11_2]
            L12_2 = L12_2.phone
            L13_2 = L4_2.PlayerData
            L13_2 = L13_2.charinfo
            L13_2 = L13_2.phone
            if L12_2 == L13_2 then
            else
              L12_2 = L7_2[1]
              if L12_2 then
                L12_2 = string
                L12_2 = L12_2.find
                L13_2 = L7_2[1]
                L13_2 = L13_2.likeds
                L14_2 = L5_2[L11_2]
                L14_2 = L14_2.phone
                L12_2 = L12_2(L13_2, L14_2)
                if L12_2 then
                  goto lbl_111
                end
              end
              L12_2 = table
              L12_2 = L12_2.insert
              L13_2 = L2_2
              L14_2 = L5_2[L11_2]
              L12_2(L13_2, L14_2)
              break
            end
            ::lbl_111::
          end
        end
      end
      L8_2 = A1_2
      L9_2 = {}
      L9_2.users = L2_2
      L10_2 = L3_2.name
      L10_2 = L3_2 or L10_2
      if not L10_2 or not L3_2 then
        L10_2 = nil
      end
      L9_2.myInfo = L10_2
      L8_2(L9_2)
    end
  end
end
L13_1(L14_1, L15_1)
L13_1 = QSPhone
L13_1 = L13_1.RegisterServerCallback
L14_1 = "qs-smartphone:SendTinderMessage"
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = GetPlayerFromPhone
    L5_2 = A2_2.phone
    L4_2 = L4_2(L5_2)
    L5_2 = MySQL
    L5_2 = L5_2.Sync
    L5_2 = L5_2.fetchAll
    L6_2 = "SELECT * FROM tinder_messages WHERE phone = @phone AND number = @number OR number = @phone AND phone = @number"
    L7_2 = {}
    L8_2 = L3_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.phone
    L7_2["@phone"] = L8_2
    L8_2 = A2_2.phone
    L7_2["@number"] = L8_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = L5_2[1]
    if L6_2 then
      L6_2 = json
      L6_2 = L6_2.decode
      L7_2 = L5_2[1]
      L7_2 = L7_2.messages
      L6_2 = L6_2(L7_2)
      L7_2 = table
      L7_2 = L7_2.insert
      L8_2 = L6_2
      L9_2 = {}
      L10_2 = L3_2.PlayerData
      L10_2 = L10_2.charinfo
      L10_2 = L10_2.phone
      L9_2.owner = L10_2
      L10_2 = EscapeSqli
      L11_2 = A2_2.message
      L10_2 = L10_2(L11_2)
      L9_2.message = L10_2
      L7_2(L8_2, L9_2)
      L7_2 = MySQL
      L7_2 = L7_2.Sync
      L7_2 = L7_2.execute
      L8_2 = "UPDATE tinder_messages SET messages = @messages WHERE id = @id"
      L9_2 = {}
      L10_2 = L5_2[1]
      L10_2 = L10_2.id
      L9_2["@id"] = L10_2
      L10_2 = CheckHtmlInput
      L11_2 = json
      L11_2 = L11_2.encode
      L12_2 = L6_2
      L11_2, L12_2 = L11_2(L12_2)
      L10_2 = L10_2(L11_2, L12_2)
      L9_2["@messages"] = L10_2
      L7_2(L8_2, L9_2)
      L7_2 = A1_2
      L8_2 = true
      L7_2(L8_2)
    end
    if L4_2 then
      L6_2 = TriggerClientEvent
      L7_2 = "qs-smartphone:refreshTinderMessages"
      L8_2 = L4_2.PlayerData
      L8_2 = L8_2.source
      L9_2 = L3_2.PlayerData
      L9_2 = L9_2.charinfo
      L9_2 = L9_2.phone
      L6_2(L7_2, L8_2, L9_2)
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L4_2(L5_2)
  end
end
L13_1(L14_1, L15_1)
L13_1 = {}
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:server:SendPing2"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = TriggerClientEvent
  L3_2 = "qs-smartphone:client:DoPing"
  L4_2 = L1_2
  L5_2 = tonumber
  L6_2 = A0_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:server:acceptping"
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = source
  L1_2 = GetPlayerFromIdFramework
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L13_1
  L2_2 = L2_2[L0_2]
  if nil ~= L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "qs-smartphone:client:notify"
    L4_2 = L13_1
    L4_2 = L4_2[L0_2]
    L4_2 = L4_2.sender
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "PING_TITLE"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = L1_2.PlayerData
    L6_2 = L6_2.charinfo
    L6_2 = L6_2.firstname
    L7_2 = " "
    L8_2 = L1_2.PlayerData
    L8_2 = L8_2.charinfo
    L8_2 = L8_2.lastname
    L9_2 = " "
    L10_2 = Lang
    L11_2 = "PING_ACCEPT"
    L10_2 = L10_2(L11_2)
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
    L5_2.text = L6_2
    L5_2.icon = "./img/apps/ping.png"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = TriggerClientEvent
    L3_2 = "qs-smartphone:client:AcceptPing"
    L4_2 = L0_2
    L5_2 = L13_1
    L5_2 = L5_2[L0_2]
    L6_2 = GetPlayerFromIdFramework
    L7_2 = L13_1
    L7_2 = L7_2[L0_2]
    L7_2 = L7_2.sender
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L2_2 = L13_1
    L2_2[L0_2] = nil
  else
    L2_2 = TriggerClientEvent
    L3_2 = "qs-smartphone:client:notify"
    L4_2 = L0_2
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "PING_TITLE"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = Lang
    L7_2 = "PING_NO_PING"
    L6_2 = L6_2(L7_2)
    L5_2.text = L6_2
    L5_2.icon = "./img/apps/ping.png"
    L2_2(L3_2, L4_2, L5_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:server:denyping"
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = source
  L1_2 = GetPlayerFromIdFramework
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L13_1
  L2_2 = L2_2[L0_2]
  if nil ~= L2_2 then
    L2_2 = TriggerClientEvent
    L3_2 = "qs-smartphone:client:notify"
    L4_2 = L13_1
    L4_2 = L4_2[L0_2]
    L4_2 = L4_2.sender
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "PING_TITLE"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = Lang
    L7_2 = "PING_REJECT_SOURCE"
    L6_2 = L6_2(L7_2)
    L5_2.text = L6_2
    L5_2.icon = "./img/apps/ping.png"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = TriggerClientEvent
    L3_2 = "qs-smartphone:client:notify"
    L4_2 = L0_2
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "PING_TITLE"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = Lang
    L7_2 = "PING_REJECT"
    L6_2 = L6_2(L7_2)
    L5_2.text = L6_2
    L5_2.icon = "./img/apps/ping.png"
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = L13_1
    L2_2[L0_2] = nil
  else
    L2_2 = TriggerClientEvent
    L3_2 = "qs-smartphone:client:notify"
    L4_2 = L0_2
    L5_2 = {}
    L6_2 = Lang
    L7_2 = "PING_TITLE"
    L6_2 = L6_2(L7_2)
    L5_2.title = L6_2
    L6_2 = Lang
    L7_2 = "PING_NO_PING"
    L6_2 = L6_2(L7_2)
    L5_2.text = L6_2
    L5_2.icon = "./img/apps/ping.png"
    L2_2(L3_2, L4_2, L5_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:server:SendPing"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerPed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetEntityCoords
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if A0_2 then
    L6_2 = tonumber
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    L7_2 = tonumber
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    if L6_2 ~= L7_2 then
      if nil ~= L3_2 then
        L6_2 = CheckPhone
        L7_2 = L3_2
        L6_2 = L6_2(L7_2)
        if nil ~= L6_2 then
          L7_2 = TriggerClientEvent
          L8_2 = "qs-smartphone:client:notify"
          L9_2 = L1_2
          L10_2 = {}
          L11_2 = Lang
          L12_2 = "PING_TITLE"
          L11_2 = L11_2(L12_2)
          L10_2.title = L11_2
          L11_2 = Lang
          L12_2 = "PING_REQUEST"
          L11_2 = L11_2(L12_2)
          L12_2 = " "
          L13_2 = L3_2.PlayerData
          L13_2 = L13_2.charinfo
          L13_2 = L13_2.firstname
          L14_2 = " "
          L15_2 = L3_2.PlayerData
          L15_2 = L15_2.charinfo
          L15_2 = L15_2.lastname
          L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
          L10_2.text = L11_2
          L10_2.icon = "./img/apps/ping.png"
          L7_2(L8_2, L9_2, L10_2)
          L7_2 = L13_1
          L8_2 = {}
          L8_2.coords = L5_2
          L8_2.sender = L1_2
          L7_2[A0_2] = L8_2
          L7_2 = TriggerClientEvent
          L8_2 = "qs-smartphone:client:notify"
          L9_2 = A0_2
          L10_2 = {}
          L11_2 = Lang
          L12_2 = "PING_TITLE"
          L11_2 = L11_2(L12_2)
          L10_2.title = L11_2
          L11_2 = Lang
          L12_2 = "PING_RECEIVED"
          L11_2 = L11_2(L12_2)
          L12_2 = " "
          L13_2 = L2_2.PlayerData
          L13_2 = L13_2.charinfo
          L13_2 = L13_2.firstname
          L14_2 = " "
          L15_2 = L2_2.PlayerData
          L15_2 = L15_2.charinfo
          L15_2 = L15_2.lastname
          L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
          L10_2.text = L11_2
          L10_2.icon = "./img/apps/ping.png"
          L7_2(L8_2, L9_2, L10_2)
          L7_2 = TriggerClientEvent
          L8_2 = "qs-smartphone:ping:client:UiUppers"
          L9_2 = A0_2
          L10_2 = true
          L7_2(L8_2, L9_2, L10_2)
        else
          L7_2 = TriggerClientEvent
          L8_2 = "qs-smartphone:client:notify"
          L9_2 = L1_2
          L10_2 = {}
          L11_2 = Lang
          L12_2 = "PING_TITLE"
          L11_2 = L11_2(L12_2)
          L10_2.title = L11_2
          L11_2 = Lang
          L12_2 = "PING_ERROR"
          L11_2 = L11_2(L12_2)
          L10_2.text = L11_2
          L10_2.icon = "./img/apps/ping.png"
          L7_2(L8_2, L9_2, L10_2)
        end
      else
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:client:notify"
        L8_2 = L1_2
        L9_2 = {}
        L10_2 = Lang
        L11_2 = "PING_TITLE"
        L10_2 = L10_2(L11_2)
        L9_2.title = L10_2
        L10_2 = Lang
        L11_2 = "PING_PLAYER_OFFLINE"
        L10_2 = L10_2(L11_2)
        L9_2.text = L10_2
        L9_2.icon = "./img/apps/ping.png"
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:server:SendLocation"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerClientEvent
  L3_2 = "qs-smartphone:client:SendLocation"
  L4_2 = A0_2.sender
  L5_2 = A0_2
  L6_2 = A1_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L14_1(L15_1, L16_1)
L14_1 = QSPhone
L14_1 = L14_1.RegisterServerCallback
L15_1 = "qs-smartphone:SaveTinderPP"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.execute
  L5_2 = "UPDATE tinder_accounts SET pp = @pp WHERE phone = @phone"
  L6_2 = {}
  L7_2 = A2_2.img
  L6_2["@pp"] = L7_2
  L7_2 = L3_2.PlayerData
  L7_2 = L7_2.charinfo
  L7_2 = L7_2.phone
  L6_2["@phone"] = L7_2
  L4_2(L5_2, L6_2)
end
L14_1(L15_1, L16_1)
L14_1 = QSPhone
L14_1 = L14_1.RegisterServerCallback
L15_1 = "qs-smartphone:EditProfileTinder"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromIdFramework
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.execute
  L5_2 = "UPDATE tinder_accounts SET name = @name, age = @age, gender = @gender, targetGender = @targetGender, description = @description, hobbies = @hobbies WHERE phone = @phone"
  L6_2 = {}
  L7_2 = CheckHtmlInput
  L8_2 = EscapeSqli
  L9_2 = A2_2.name
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L6_2["@name"] = L7_2
  L7_2 = A2_2.birthdate
  L6_2["@age"] = L7_2
  L7_2 = EscapeSqli
  L8_2 = A2_2.gender
  L7_2 = L7_2(L8_2)
  L6_2["@gender"] = L7_2
  L7_2 = EscapeSqli
  L8_2 = A2_2.targetGender
  L7_2 = L7_2(L8_2)
  L6_2["@targetGender"] = L7_2
  L7_2 = CheckHtmlInput
  L8_2 = EscapeSqli
  L9_2 = A2_2.description
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L6_2["@description"] = L7_2
  L7_2 = CheckHtmlInput
  L8_2 = EscapeSqli
  L9_2 = A2_2.hobbies
  L8_2, L9_2 = L8_2(L9_2)
  L7_2 = L7_2(L8_2, L9_2)
  L6_2["@hobbies"] = L7_2
  L7_2 = L3_2.PlayerData
  L7_2 = L7_2.charinfo
  L7_2 = L7_2.phone
  L6_2["@phone"] = L7_2
  L4_2(L5_2, L6_2)
  L4_2 = A1_2
  L5_2 = true
  L4_2(L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterServerEvent
L15_1 = "qs-smartphone:server:GiveContactDetails"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "qs-smartphone:server:GiveContactDetails"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2.PlayerData
  L3_2 = L3_2.charinfo
  L4_2 = 0
  L5_2 = Config
  L5_2 = L5_2.Framework
  if "ESX" == L5_2 then
    L5_2 = ESX
    L5_2 = L5_2.GetPlayerFromId
    L6_2 = source
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.getAccount
    L6_2 = "bank"
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2.money
  else
    L5_2 = Config
    L5_2 = L5_2.Framework
    if "QBCore" == L5_2 then
      L5_2 = L2_2.PlayerData
      L5_2 = L5_2.money
      L4_2 = L5_2.cash
    end
  end
  L5_2 = {}
  L6_2 = {}
  L7_2 = L3_2.firstname
  L6_2[1] = L7_2
  L7_2 = L3_2.lastname
  L6_2[2] = L7_2
  L5_2.name = L6_2
  L6_2 = L3_2.phone
  L5_2.number = L6_2
  L5_2.bank = L4_2
  L6_2 = TriggerClientEvent
  L7_2 = "qs-smartphone:client:AddNewSuggestion"
  L8_2 = A0_2
  L9_2 = L5_2
  L6_2(L7_2, L8_2, L9_2)
end
L14_1(L15_1, L16_1)
L14_1 = RegisterServerEvent
L15_1 = "qs-smartphone:server:AddTransaction"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "qs-smartphone:server:AddTransaction"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "INSERT INTO `crypto_transactions` (`identifier`, `title`, `message`) VALUES ('"
  L5_2 = L2_2.identifier
  L6_2 = "', '"
  L7_2 = EscapeSqli
  L8_2 = A0_2.TransactionTitle
  L7_2 = L7_2(L8_2)
  L8_2 = "', '"
  L9_2 = EscapeSqli
  L10_2 = A0_2.TransactionMessage
  L9_2 = L9_2(L10_2)
  L10_2 = "')"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
  L5_2 = {}
  L3_2(L4_2, L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = QSPhone
L14_1 = L14_1.RegisterServerCallback
L15_1 = "qs-smartphone:server:GetCallState"
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = GetPlayerFromPhone
  L4_2 = A2_2.number
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = CheckPhone
    L5_2 = L3_2.PlayerData
    L5_2 = L5_2.source
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L5_2 = A1_2
      L6_2 = false
      L7_2 = false
      L8_2 = notAvailable
      L9_2 = A2_2.number
      L8_2 = L8_2[L9_2]
      L5_2(L6_2, L7_2, L8_2)
    else
      L5_2 = Calls
      L6_2 = A2_2.number
      L5_2 = L5_2[L6_2]
      if nil ~= L5_2 then
        L5_2 = Calls
        L6_2 = A2_2.number
        L5_2 = L5_2[L6_2]
        L5_2 = L5_2.inCall
        if L5_2 then
          L5_2 = A1_2
          L6_2 = true
          L7_2 = true
          L8_2 = notAvailable
          L9_2 = A2_2.number
          L8_2 = L8_2[L9_2]
          L5_2(L6_2, L7_2, L8_2)
        else
          L5_2 = A1_2
          L6_2 = true
          L7_2 = true
          L8_2 = notAvailable
          L9_2 = A2_2.number
          L8_2 = L8_2[L9_2]
          L5_2(L6_2, L7_2, L8_2)
        end
      else
        L5_2 = A1_2
        L6_2 = true
        L7_2 = true
        L8_2 = notAvailable
        L9_2 = A2_2.number
        L8_2 = L8_2[L9_2]
        L5_2(L6_2, L7_2, L8_2)
      end
    end
  else
    L4_2 = A1_2
    L5_2 = false
    L6_2 = false
    L7_2 = notAvailable
    L8_2 = A2_2.number
    L7_2 = L7_2[L8_2]
    L4_2(L5_2, L6_2, L7_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterServerEvent
L15_1 = "qs-smartphone:server:SetCallState"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "qs-smartphone:server:SetCallState"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Calls
  L4_2 = L2_2.PlayerData
  L4_2 = L4_2.charinfo
  L4_2 = L4_2.phone
  L3_2 = L3_2[L4_2]
  if nil ~= L3_2 then
    L3_2 = Calls
    L4_2 = L2_2.PlayerData
    L4_2 = L4_2.charinfo
    L4_2 = L4_2.phone
    L3_2 = L3_2[L4_2]
    L3_2.inCall = A0_2
  else
    L3_2 = Calls
    L4_2 = L2_2.PlayerData
    L4_2 = L4_2.charinfo
    L4_2 = L4_2.phone
    L5_2 = {}
    L3_2[L4_2] = L5_2
    L3_2 = Calls
    L4_2 = L2_2.PlayerData
    L4_2 = L4_2.charinfo
    L4_2 = L4_2.phone
    L3_2 = L3_2[L4_2]
    L3_2.inCall = A0_2
  end
end
L14_1(L15_1, L16_1)
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = {}
  L4_2 = true
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchAll
  L6_2 = A1_2
  L7_2 = {}
  function L8_2(A0_3)
    local L1_3, L2_3
    L1_3 = A2_2
    if nil ~= L1_3 then
      L1_3 = A0_2
      if false == L1_3 then
        L1_3 = A2_2
        L2_3 = A0_3
        L1_3(L2_3)
      end
    end
    L3_2 = A0_3
    L1_3 = false
    L4_2 = L1_3
  end
  L5_2(L6_2, L7_2, L8_2)
  if A0_2 then
    while L4_2 do
      L5_2 = Citizen
      L5_2 = L5_2.Wait
      L6_2 = 5
      L5_2(L6_2)
    end
    if nil ~= A2_2 and true == A0_2 then
      L5_2 = A2_2
      L6_2 = L3_2
      L5_2(L6_2)
    end
  end
  return L3_2
end
ExecuteSql = L14_1
function L14_1(A0_2)
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
Lang = L14_1
L14_1 = Citizen
L14_1 = L14_1.CreateThread
function L15_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.esxVersion
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.esxVersion
    if "new" ~= L0_2 then
      L0_2 = Config
      L0_2 = L0_2.esxVersion
      if "old" == L0_2 then
      else
        L0_2 = print
        L1_2 = "qs-smarthphone: Config.esxVersion should be equal to new or old"
        L0_2(L1_2)
      end
    end
  else
    L0_2 = print
    L1_2 = "qs-smarthphone: Config.esxVersion missing"
    L0_2(L1_2)
  end
end
L14_1(L15_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "^%l"
  L4_2 = string
  L4_2 = L4_2.upper
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
firstToUpper = L14_1
L14_1 = Citizen
L14_1 = L14_1.CreateThread
function L15_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Webhook
  if L0_2 then
    L0_2 = Config
    L0_2 = L0_2.Webhook
    if "" ~= L0_2 then
      goto lbl_12
    end
  end
  L0_2 = print
  L1_2 = "^1qs-smartphone: Config.Webhook missing! Check qs-smartphone/config/config_webhook.lua and set a discord webhook."
  L0_2(L1_2)
  ::lbl_12::
end
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "playerDropped"
function L16_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = source
  L1_2 = GetPlayerFromIdFramework
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = Calls
    if L2_2 then
      L2_2 = Calls
      L3_2 = L1_2.PlayerData
      L3_2 = L3_2.charinfo
      L3_2 = L3_2.phone
      L2_2 = L2_2[L3_2]
      if L2_2 then
        L2_2 = Calls
        L3_2 = L1_2.PlayerData
        L3_2 = L3_2.charinfo
        L3_2 = L3_2.phone
        L2_2[L3_2] = nil
      end
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterServerEvent
L15_1 = "qs-smartphone:buy"
L14_1(L15_1)
L14_1 = AddEventHandler
L15_1 = "qs-smartphone:buy"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = Config
  L1_2 = L1_2.Framework
  if "ESX" == L1_2 then
    L1_2 = source
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = tonumber
    L4_2 = A0_2.Price
    L3_2 = L3_2(L4_2)
    L4_2 = A0_2.Count
    L3_2 = L3_2 * L4_2
    L4_2 = L2_2.getAccount
    L5_2 = Config
    L5_2 = L5_2.BlackMarketAccount
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.money
    if L3_2 <= L4_2 then
      L4_2 = L2_2.removeAccountMoney
      L5_2 = Config
      L5_2 = L5_2.BlackMarketAccount
      L6_2 = L3_2
      L4_2(L5_2, L6_2)
      L4_2 = Config
      L4_2 = L4_2.WeaponsItems
      if L4_2 then
        L4_2 = L2_2.addInventoryItem
        L5_2 = A0_2.Item
        L6_2 = A0_2.Count
        L4_2(L5_2, L6_2)
      else
        L4_2 = A0_2.isItem
        if L4_2 then
          L4_2 = print
          L5_2 = "es un item"
          L4_2(L5_2)
          L4_2 = L2_2.addInventoryItem
          L5_2 = A0_2.Item
          L6_2 = A0_2.Count
          L4_2(L5_2, L6_2)
        else
          L4_2 = print
          L5_2 = "no es item"
          L4_2(L5_2)
          L4_2 = L2_2.addWeapon
          L5_2 = A0_2.Item
          L6_2 = A0_2.Count
          L4_2(L5_2, L6_2)
        end
      end
      L4_2 = TriggerClientEvent
      L5_2 = "qs-smartphone:enough"
      L6_2 = L1_2
      L4_2(L5_2, L6_2)
    else
      L4_2 = TriggerClientEvent
      L5_2 = "qs-smartphone:notenough"
      L6_2 = L1_2
      L4_2(L5_2, L6_2)
    end
  else
    L1_2 = Config
    L1_2 = L1_2.Framework
    if "QBCore" == L1_2 then
      L1_2 = source
      L2_2 = GetPlayerFromIdFramework
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      L3_2 = tonumber
      L4_2 = A0_2.Price
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2.Count
      L3_2 = L3_2 * L4_2
      L4_2 = L2_2.PlayerData
      L4_2 = L4_2.money
      L5_2 = Config
      L5_2 = L5_2.BlackMarketAccount
      L4_2 = L4_2[L5_2]
      if L3_2 <= L4_2 then
        L4_2 = L2_2.Functions
        L4_2 = L4_2.AddItem
        L5_2 = A0_2.Item
        L6_2 = A0_2.Count
        L4_2 = L4_2(L5_2, L6_2)
        if L4_2 then
          L4_2 = L2_2.Functions
          L4_2 = L4_2.RemoveMoney
          L5_2 = Config
          L5_2 = L5_2.BlackMarketAccount
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
          L4_2 = TriggerClientEvent
          L5_2 = "qs-smartphone:enough"
          L6_2 = L1_2
          L4_2(L5_2, L6_2)
        end
      else
        L4_2 = TriggerClientEvent
        L5_2 = "qs-smartphone:notenough"
        L6_2 = L1_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L14_1(L15_1, L16_1)
L14_1 = QSPhone
L14_1 = L14_1.RegisterServerCallback
L15_1 = "qs-smartphone:server:GetCurrentLawyers"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = deepcopy
  L3_2 = Config
  L3_2 = L3_2.JobsInPhone
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = pairs
  L5_2 = GetPlayers
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2()
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = GetPlayerFromIdFramework
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if nil ~= L10_2 then
      L11_2 = Config
      L11_2 = L11_2.JobsInPhone
      L12_2 = GetJob
      L13_2 = L10_2.source
      L12_2 = L12_2(L13_2)
      L12_2 = L12_2.name
      L11_2 = L11_2[L12_2]
      if L11_2 then
        L11_2 = GetJob
        L12_2 = L10_2.source
        L11_2 = L11_2(L12_2)
        L11_2 = L11_2.onduty
        if L11_2 then
          L11_2 = GetJob
          L12_2 = L10_2.source
          L11_2 = L11_2(L12_2)
          L11_2 = L11_2.name
          L11_2 = L2_2[L11_2]
          L12_2 = GetJob
          L13_2 = L10_2.source
          L12_2 = L12_2(L13_2)
          L12_2 = L12_2.onduty
          L11_2.duty = L12_2
        end
      end
    end
  end
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.order
    L3_2[L10_2] = L9_2
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L14_1(L15_1, L16_1)
L14_1 = QSPhone
L14_1 = L14_1.RegisterServerCallback
L15_1 = "qs-smartphone:server:GetAlertsJobs"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM phone_alertjobs WHERE job = ?"
  L5_2 = {}
  L6_2 = GetJob
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.name
  L5_2[1] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2[1]
  if nil ~= L4_2 then
    L4_2 = A1_2
    L5_2 = json
    L5_2 = L5_2.decode
    L6_2 = L3_2[1]
    L6_2 = L6_2.alerts
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = A1_2
    L5_2 = nil
    L4_2(L5_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:server:sendJobAlert"
function L16_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = source
  if nil ~= A0_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM phone_alertjobs WHERE job = ?"
    L5_2 = {}
    L6_2 = A1_2
    L5_2[1] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2[1]
    if nil ~= L4_2 then
      L4_2 = json
      L4_2 = L4_2.decode
      L5_2 = L3_2[1]
      L5_2 = L5_2.alerts
      L4_2 = L4_2(L5_2)
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      A0_2.alertID = L5_2
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      L4_2[L5_2] = A0_2
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "UPDATE phone_alertjobs SET alerts = ? WHERE job = ?"
      L7_2 = {}
      L8_2 = json
      L8_2 = L8_2.encode
      L9_2 = L4_2
      L8_2 = L8_2(L9_2)
      L9_2 = A1_2
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L5_2(L6_2, L7_2)
    else
      L4_2 = {}
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      A0_2.alertID = L5_2
      L5_2 = #L4_2
      L5_2 = L5_2 + 1
      L4_2[L5_2] = A0_2
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "INSERT INTO phone_alertjobs (`job`,`alerts`) VALUES (?,?) "
      L7_2 = {}
      L8_2 = A1_2
      L9_2 = json
      L9_2 = L9_2.encode
      L10_2 = L4_2
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2)
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
      L7_2[4] = L11_2
      L7_2[5] = L12_2
      L7_2[6] = L13_2
      L7_2[7] = L14_2
      L7_2[8] = L15_2
      L7_2[9] = L16_2
      L7_2[10] = L17_2
      L5_2(L6_2, L7_2)
    end
    L4_2 = pairs
    L5_2 = GetPlayers
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2()
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = GetPlayerFromIdFramework
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if nil ~= L10_2 then
        L11_2 = GetJob
        L12_2 = L10_2.source
        L11_2 = L11_2(L12_2)
        L12_2 = Config
        L12_2 = L12_2.JobsInPhone
        L13_2 = L11_2.name
        L12_2 = L12_2[L13_2]
        if L12_2 then
          L12_2 = L11_2.name
          if L12_2 == A1_2 then
            L12_2 = GetJob
            L13_2 = L10_2.source
            L12_2 = L12_2(L13_2)
            L12_2 = L12_2.onduty
            if L12_2 then
              L12_2 = TriggerClientEvent
              L13_2 = "qs-smartphone:client:RefreshAlertsJob"
              L14_2 = L10_2.source
              L15_2 = "new"
              L12_2(L13_2, L14_2, L15_2)
            else
              L12_2 = TriggerClientEvent
              L13_2 = "qs-smartphone:client:RefreshAlertsJob"
              L14_2 = L10_2.source
              L15_2 = "update"
              L12_2(L13_2, L14_2, L15_2)
            end
            L12_2 = TriggerClientEvent
            L13_2 = "qs-smartphone:client:notify"
            L14_2 = L10_2.source
            L15_2 = {}
            L16_2 = Lang
            L17_2 = "BUSINESS_ALERT_TITLE"
            L16_2 = L16_2(L17_2)
            L15_2.title = L16_2
            L16_2 = Lang
            L17_2 = "BUSINESS_ALERT_DESCRIPTION"
            L16_2 = L16_2(L17_2)
            L15_2.text = L16_2
            L15_2.icon = "./img/apps/business.png"
            L12_2(L13_2, L14_2, L15_2)
          end
        end
      end
    end
  else
    L3_2 = TriggerClientEvent
    L4_2 = "qs-smartphone:sendMessage"
    L5_2 = L2_2
    L6_2 = Lang
    L7_2 = "BUSINESS_ALERT_ERROR"
    L6_2 = L6_2(L7_2)
    L7_2 = "inform"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = "qs-smartphone:server:RemoveAlertJob"
function L16_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if nil ~= A0_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Sync
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM phone_alertjobs WHERE job = ?"
    L5_2 = {}
    L6_2 = GetJob
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.name
    L5_2[1] = L6_2
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L3_2[1]
    if nil ~= L4_2 then
      L4_2 = json
      L4_2 = L4_2.decode
      L5_2 = L3_2[1]
      L5_2 = L5_2.alerts
      L4_2 = L4_2(L5_2)
      L5_2 = table
      L5_2 = L5_2.remove
      L6_2 = L4_2
      L7_2 = A0_2
      L5_2(L6_2, L7_2)
      L5_2 = 1
      L6_2 = #L4_2
      L7_2 = 1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = L4_2[L8_2]
        L9_2.alertID = L8_2
      end
      L5_2 = MySQL
      L5_2 = L5_2.Sync
      L5_2 = L5_2.execute
      L6_2 = "UPDATE phone_alertjobs SET alerts = ? WHERE job = ?"
      L7_2 = {}
      L8_2 = json
      L8_2 = L8_2.encode
      L9_2 = L4_2
      L8_2 = L8_2(L9_2)
      L9_2 = GetJob
      L10_2 = L1_2
      L9_2 = L9_2(L10_2)
      L9_2 = L9_2.name
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L5_2(L6_2, L7_2)
      L5_2 = pairs
      L6_2 = GetPlayers
      L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L6_2()
      L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
        L11_2 = GetPlayerFromIdFramework
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if nil ~= L11_2 then
          L12_2 = GetJob
          L13_2 = L11_2.source
          L12_2 = L12_2(L13_2)
          L13_2 = Config
          L13_2 = L13_2.JobsInPhone
          L14_2 = L12_2.name
          L13_2 = L13_2[L14_2]
          if L13_2 then
            L13_2 = L12_2.name
            L14_2 = GetJob
            L15_2 = L1_2
            L14_2 = L14_2(L15_2)
            L14_2 = L14_2.name
            if L13_2 == L14_2 then
              L13_2 = TriggerClientEvent
              L14_2 = "qs-smartphone:client:RefreshAlertsJob"
              L15_2 = L11_2.source
              L16_2 = "update"
              L13_2(L14_2, L15_2, L16_2)
            end
          end
        end
      end
    end
  end
end
L14_1(L15_1, L16_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  if "table" == L1_2 then
    L3_2 = {}
    L2_2 = L3_2
    L3_2 = next
    L4_2 = A0_2
    L5_2 = nil
    L6_2 = nil
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = deepcopy
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = deepcopy
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      L2_2[L9_2] = L10_2
    end
    L3_2 = setmetatable
    L4_2 = L2_2
    L5_2 = deepcopy
    L6_2 = getmetatable
    L7_2 = A0_2
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L2_2 = A0_2
  end
  return L2_2
end
deepcopy = L14_1
L14_1 = AddEventHandler
L15_1 = "onResourceStarting"
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetResourceState
  L2_2 = Config
  L2_2 = L2_2.QBCoreGetCoreObject
  L1_2 = L1_2(L2_2)
  if "started" ~= L1_2 then
    L1_2 = GetResourceState
    L2_2 = Config
    L2_2 = L2_2.QBCoreGetCoreObject
    L1_2 = L1_2(L2_2)
  end
  if "starting" == L1_2 and "qs-base" == A0_2 then
    L1_2 = print
    L2_2 = "Quasar Scripts: If you are using qbus framework qs-base its not neccesary anymore."
    L1_2(L2_2)
    L1_2 = CancelEvent
    L1_2()
  end
end
L14_1(L15_1, L16_1)
L14_1 = AddEventHandler
L15_1 = "onResourceStart"
function L16_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetResourceState
  L2_2 = Config
  L2_2 = L2_2.QBCoreGetCoreObject
  L1_2 = L1_2(L2_2)
  if "started" ~= L1_2 then
    L1_2 = GetResourceState
    L2_2 = Config
    L2_2 = L2_2.QBCoreGetCoreObject
    L1_2 = L1_2(L2_2)
    if "starting" ~= L1_2 then
      goto lbl_29
    end
  end
  L1_2 = GetResourceState
  L2_2 = "qs-base"
  L1_2 = L1_2(L2_2)
  if "started" ~= L1_2 then
    L1_2 = GetResourceState
    L2_2 = "qs-base"
    L1_2 = L1_2(L2_2)
    if "starting" ~= L1_2 then
      goto lbl_29
    end
  end
  L1_2 = print
  L2_2 = "Quasar Scripts: If you are using qbus framework qs-base its not neccesary anymore."
  L1_2(L2_2)
  L1_2 = StopResource
  L2_2 = "qs-base"
  L1_2(L2_2)
  ::lbl_29::
end
L14_1(L15_1, L16_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = {}
    L1_2["\""] = "\""
    L1_2["'"] = "'"
    L3_2 = A0_2
    L2_2 = A0_2.gsub
    L4_2 = "['\"]"
    L5_2 = L1_2
    return L2_2(L3_2, L4_2, L5_2)
  else
    return A0_2
  end
end
EscapeSqli = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L1_2 = {}
    L1_2["\""] = "\\\""
    L1_2["'"] = "\\'"
    L3_2 = A0_2
    L2_2 = A0_2.gsub
    L4_2 = "['\"]"
    L5_2 = L1_2
    return L2_2(L3_2, L4_2, L5_2)
  else
    return A0_2
  end
end
EscapeSqli2 = L14_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.find
    L2_2 = A0_2
    L3_2 = "<"
    L1_2 = L1_2(L2_2, L3_2)
    if not L1_2 then
      L1_2 = string
      L1_2 = L1_2.find
      L2_2 = A0_2
      L3_2 = ">"
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        goto lbl_42
      end
    end
    L2_2 = A0_2
    L1_2 = A0_2.gsub
    L3_2 = "style"
    L4_2 = ""
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.gsub
    L3_2 = "script"
    L4_2 = ""
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.gsub
    L3_2 = "html"
    L4_2 = ""
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.gsub
    L3_2 = "head"
    L4_2 = ""
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
    L2_2 = A0_2
    L1_2 = A0_2.gsub
    L3_2 = "meta"
    L4_2 = ""
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    A0_2 = L1_2
  end
  ::lbl_42::
  return A0_2
end
CheckHtmlInput = L14_1
L14_1 = Config
L14_1 = L14_1.WetPhone
if L14_1 then
  L14_1 = Config
  L14_1 = L14_1.Framework
  if "ESX" == L14_1 then
    L14_1 = RegisterServerEvent
    L15_1 = "qs-smartphone:phoneBreakdown"
    L14_1(L15_1)
    L14_1 = AddEventHandler
    L15_1 = "qs-smartphone:phoneBreakdown"
    function L16_1()
      local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
      L0_2 = source
      L1_2 = ESX
      L1_2 = L1_2.GetPlayerFromId
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = pairs
      L3_2 = Config
      L3_2 = L3_2.PhonesProps
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L1_2.getInventoryItem
        L9_2 = L6_2
        L8_2 = L8_2(L9_2)
        if nil ~= L8_2 then
          L9_2 = L8_2.count
          if L9_2 > 0 then
            L9_2 = L1_2.removeInventoryItem
            L10_2 = L6_2
            L11_2 = L8_2.count
            L9_2(L10_2, L11_2)
            L9_2 = L1_2.addInventoryItem
            L10_2 = "wet_"
            L11_2 = L6_2
            L10_2 = L10_2 .. L11_2
            L11_2 = 1
            L9_2(L10_2, L11_2)
            L9_2 = TriggerClientEvent
            L10_2 = "qs-smartphone:sendMessage"
            L11_2 = L0_2
            L12_2 = Lang
            L13_2 = "PHONE_WET_ALERT"
            L12_2 = L12_2(L13_2)
            L13_2 = "inform"
            L9_2(L10_2, L11_2, L12_2, L13_2)
          end
        end
      end
    end
    L14_1(L15_1, L16_1)
  else
    L14_1 = Config
    L14_1 = L14_1.Framework
    if "QBCore" == L14_1 then
      L14_1 = RegisterServerEvent
      L15_1 = "qs-smartphone:phoneBreakdown"
      L14_1(L15_1)
      L14_1 = AddEventHandler
      L15_1 = "qs-smartphone:phoneBreakdown"
      function L16_1()
        local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
        L0_2 = source
        L1_2 = GetPlayerFromIdFramework
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = pairs
        L3_2 = Config
        L3_2 = L3_2.PhonesProps
        L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
        for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
          L8_2 = L1_2.Functions
          L8_2 = L8_2.GetItemByName
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          if nil ~= L8_2 then
            L9_2 = L8_2.amount
            if L9_2 > 0 then
              L9_2 = L1_2.Functions
              L9_2 = L9_2.RemoveItem
              L10_2 = L6_2
              L11_2 = 1
              L9_2(L10_2, L11_2)
              L9_2 = L1_2.Functions
              L9_2 = L9_2.AddItem
              L10_2 = "wet_"
              L11_2 = L6_2
              L10_2 = L10_2 .. L11_2
              L11_2 = 1
              L9_2(L10_2, L11_2)
              L9_2 = TriggerClientEvent
              L10_2 = "qs-smartphone:sendMessage"
              L11_2 = L0_2
              L12_2 = Lang
              L13_2 = "PHONE_WET_ALERT"
              L12_2 = L12_2(L13_2)
              L13_2 = "inform"
              L9_2(L10_2, L11_2, L12_2, L13_2)
            end
          end
        end
      end
      L14_1(L15_1, L16_1)
    end
  end
end
L14_1 = Config
L14_1 = L14_1.WetPhone
if L14_1 then
  L14_1 = Config
  L14_1 = L14_1.Framework
  if "ESX" == L14_1 then
    L14_1 = ESX
    L14_1 = L14_1.RegisterUsableItem
    L15_1 = Config
    L16_1 = "RepairWetPhone"
    L15_1 = L15_1[L16_1]
    function L16_1(A0_2)
      local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
      L1_2 = ESX
      L1_2 = L1_2.GetPlayerFromId
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      L2_2 = L1_2.getInventoryItem
      L3_2 = Config
      L3_2 = L3_2.RepairWetPhone
      L2_2 = L2_2(L3_2)
      L3_2 = pairs
      L4_2 = Config
      L4_2 = L4_2.PhonesProps
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L1_2.getInventoryItem
        L10_2 = "wet_"
        L11_2 = L7_2
        L10_2 = L10_2 .. L11_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L10_2 = L9_2.count
          if L10_2 >= 1 and L2_2 then
            L10_2 = L2_2.count
            if L10_2 >= 1 then
              L10_2 = TriggerClientEvent
              L11_2 = "qs-smartphone:repairPhone"
              L12_2 = A0_2
              L10_2(L11_2, L12_2)
              L10_2 = L1_2.removeInventoryItem
              L11_2 = Config
              L11_2 = L11_2.RepairWetPhone
              L12_2 = 1
              L10_2(L11_2, L12_2)
              L10_2 = L1_2.removeInventoryItem
              L11_2 = "wet_"
              L12_2 = L7_2
              L11_2 = L11_2 .. L12_2
              L12_2 = 1
              L10_2(L11_2, L12_2)
              L10_2 = Citizen
              L10_2 = L10_2.Wait
              L11_2 = 7500
              L10_2(L11_2)
              L10_2 = L1_2.addInventoryItem
              L11_2 = L7_2
              L12_2 = 1
              L10_2(L11_2, L12_2)
              break
            end
          end
        end
      end
    end
    L14_1(L15_1, L16_1)
    L14_1 = RegisterServerEvent
    L15_1 = "qs-smartphone:phoneBreakdownRepair"
    L14_1(L15_1)
    L14_1 = AddEventHandler
    L15_1 = "qs-smartphone:phoneBreakdownRepair"
    function L16_1()
      local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
      L0_2 = source
      L1_2 = ESX
      L1_2 = L1_2.GetPlayerFromId
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = false
      L3_2 = pairs
      L4_2 = Config
      L4_2 = L4_2.PhonesProps
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L1_2.getInventoryItem
        L10_2 = "wet_"
        L11_2 = L7_2
        L10_2 = L10_2 .. L11_2
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L10_2 = L9_2.count
          if L10_2 >= 1 then
            L10_2 = L1_2.removeInventoryItem
            L11_2 = Config
            L11_2 = L11_2.RepairWetPhone
            L12_2 = 1
            L10_2(L11_2, L12_2)
            L10_2 = L1_2.removeInventoryItem
            L11_2 = "wet_"
            L12_2 = L7_2
            L11_2 = L11_2 .. L12_2
            L12_2 = 1
            L10_2(L11_2, L12_2)
            L10_2 = Citizen
            L10_2 = L10_2.Wait
            L11_2 = 3500
            L10_2(L11_2)
            L10_2 = L1_2.addInventoryItem
            L11_2 = L7_2
            L12_2 = 1
            L10_2(L11_2, L12_2)
            L2_2 = true
            break
          end
        end
      end
      if L2_2 then
        L3_2 = TriggerClientEvent
        L4_2 = "qs-smartphone:sendMessage"
        L5_2 = L0_2
        L6_2 = Lang
        L7_2 = "PHONE_WET_TECH_REPAIR"
        L6_2 = L6_2(L7_2)
        L7_2 = "inform"
        L3_2(L4_2, L5_2, L6_2, L7_2)
      else
        L3_2 = TriggerClientEvent
        L4_2 = "qs-smartphone:sendMessage"
        L5_2 = L0_2
        L6_2 = Lang
        L7_2 = "NO_WET_PHONE"
        L6_2 = L6_2(L7_2)
        L7_2 = "inform"
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    end
    L14_1(L15_1, L16_1)
  else
    L14_1 = _ENV
    L15_1 = "Config"
    L14_1 = L14_1[L15_1]
    L14_1 = L14_1.Framework
    if "QBCore" == L14_1 then
      L14_1 = QBCore
      L15_1 = "Functions"
      L14_1 = L14_1[L15_1]
      L15_1 = "CreateUseableItem"
      L14_1 = L14_1[L15_1]
      L15_1 = _ENV
      L16_1 = "Config"
      L15_1 = L15_1[L16_1]
      L16_1 = "RepairWetPhone"
      L15_1 = L15_1[L16_1]
      function L16_1(A0_2)
        local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
        L1_2 = GetPlayerFromIdFramework
        L2_2 = A0_2
        L1_2 = L1_2(L2_2)
        L2_2 = L1_2.Functions
        L2_2 = L2_2.GetItemByName
        L3_2 = Config
        L3_2 = L3_2.RepairWetPhone
        L2_2 = L2_2(L3_2)
        L3_2 = pairs
        L4_2 = Config
        L4_2 = L4_2.PhonesProps
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L1_2.Functions
          L9_2 = L9_2.GetItemByName
          L10_2 = "wet_"
          L11_2 = L7_2
          L10_2 = L10_2 .. L11_2
          L9_2 = L9_2(L10_2)
          if L9_2 then
            L10_2 = L9_2.amount
            if L10_2 >= 1 and L2_2 then
              L10_2 = L2_2.amount
              if L10_2 >= 1 then
                L10_2 = L1_2.Functions
                L10_2 = L10_2.RemoveItem
                L11_2 = Config
                L11_2 = L11_2.RepairWetPhone
                L12_2 = 1
                L10_2(L11_2, L12_2)
                L10_2 = L1_2.Functions
                L10_2 = L10_2.RemoveItem
                L11_2 = "wet_"
                L12_2 = L7_2
                L11_2 = L11_2 .. L12_2
                L12_2 = 1
                L10_2(L11_2, L12_2)
                L10_2 = Citizen
                L10_2 = L10_2.Wait
                L11_2 = 7500
                L10_2(L11_2)
                L10_2 = L1_2.Functions
                L10_2 = L10_2.AddItem
                L11_2 = L7_2
                L12_2 = 1
                L10_2(L11_2, L12_2)
                break
              end
            end
          end
        end
      end
      L14_1(L15_1, L16_1)
      L14_1 = RegisterServerEvent
      L15_1 = "qs-smartphone:phoneBreakdownRepair"
      L14_1(L15_1)
      L14_1 = AddEventHandler
      L15_1 = "qs-smartphone:phoneBreakdownRepair"
      function L16_1()
        local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
        L0_2 = source
        L1_2 = GetPlayerFromIdFramework
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = false
        L3_2 = pairs
        L4_2 = Config
        L4_2 = L4_2.PhonesProps
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L1_2.Functions
          L9_2 = L9_2.GetItemByName
          L10_2 = "wet_"
          L11_2 = L7_2
          L10_2 = L10_2 .. L11_2
          L9_2 = L9_2(L10_2)
          if L9_2 then
            L10_2 = L9_2.amount
            if L10_2 >= 1 then
              L10_2 = L1_2.Functions
              L10_2 = L10_2.RemoveItem
              L11_2 = Config
              L11_2 = L11_2.RepairWetPhone
              L12_2 = 1
              L10_2(L11_2, L12_2)
              L10_2 = L1_2.Functions
              L10_2 = L10_2.RemoveItem
              L11_2 = "wet_"
              L12_2 = L7_2
              L11_2 = L11_2 .. L12_2
              L12_2 = 1
              L10_2(L11_2, L12_2)
              L10_2 = Citizen
              L10_2 = L10_2.Wait
              L11_2 = 3500
              L10_2(L11_2)
              L10_2 = L1_2.Functions
              L10_2 = L10_2.AddItem
              L11_2 = L7_2
              L12_2 = 1
              L10_2(L11_2, L12_2)
              L2_2 = true
              break
            end
          end
        end
        if L2_2 then
          L3_2 = TriggerClientEvent
          L4_2 = "qs-smartphone:sendMessage"
          L5_2 = L0_2
          L6_2 = Lang
          L7_2 = "PHONE_WET_TECH_REPAIR"
          L6_2 = L6_2(L7_2)
          L7_2 = "inform"
          L3_2(L4_2, L5_2, L6_2, L7_2)
        else
          L3_2 = TriggerClientEvent
          L4_2 = "qs-smartphone:sendMessage"
          L5_2 = L0_2
          L6_2 = Lang
          L7_2 = "NO_WET_PHONE"
          L6_2 = L6_2(L7_2)
          L7_2 = "inform"
          L3_2(L4_2, L5_2, L6_2, L7_2)
        end
      end
      L14_1(L15_1, L16_1)
    end
  end
end
L14_1 = _ENV
L15_1 = "Config"
L14_1 = L14_1[L15_1]
L14_1 = L14_1.WetPhone
if L14_1 then
  L14_1 = _ENV
  L15_1 = "Config"
  L14_1 = L14_1[L15_1]
  L14_1 = L14_1.Framework
  L15_1 = "ESX"
  if L14_1 == L15_1 then
    L14_1 = RegisterServerEvent
    L15_1 = "qs-smartphone:phoneBreakdownRepairTech"
    L14_1(L15_1)
    L14_1 = AddEventHandler
    L15_1 = "qs-smartphone:phoneBreakdownRepairTech"
    function L16_1()
      local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
      L0_2 = source
      L1_2 = ESX
      L1_2 = L1_2.GetPlayerFromId
      L2_2 = L0_2
      L1_2 = L1_2(L2_2)
      L2_2 = false
      L3_2 = pairs
      L4_2 = Config
      L4_2 = L4_2.PhonesProps
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = L1_2.getAccount
        L10_2 = Config
        L10_2 = L10_2.RepairWetPhoneNpcAccount
        L9_2 = L9_2(L10_2)
        L9_2 = L9_2.money
        L10_2 = Config
        L10_2 = L10_2.RepairWetPhoneNpcPrice
        if L9_2 >= L10_2 then
          L9_2 = L1_2.getInventoryItem
          L10_2 = "wet_"
          L11_2 = L7_2
          L10_2 = L10_2 .. L11_2
          L9_2 = L9_2(L10_2)
          if L9_2 then
            L10_2 = L9_2.count
            if L10_2 >= 1 then
              L10_2 = L1_2.removeAccountMoney
              L11_2 = Config
              L11_2 = L11_2.RepairWetPhoneNpcAccount
              L12_2 = Config
              L12_2 = L12_2.RepairWetPhoneNpcPrice
              L10_2(L11_2, L12_2)
              L10_2 = L1_2.removeInventoryItem
              L11_2 = "wet_"
              L12_2 = L7_2
              L11_2 = L11_2 .. L12_2
              L12_2 = 1
              L10_2(L11_2, L12_2)
              L10_2 = Citizen
              L10_2 = L10_2.Wait
              L11_2 = 3500
              L10_2(L11_2)
              L10_2 = L1_2.addInventoryItem
              L11_2 = L7_2
              L12_2 = 1
              L10_2(L11_2, L12_2)
              L2_2 = true
              break
            end
          end
        else
          L9_2 = TriggerClientEvent
          L10_2 = "qs-smartphone:sendMessage"
          L11_2 = L0_2
          L12_2 = Lang
          L13_2 = "NO_MONEY"
          L12_2 = L12_2(L13_2)
          L13_2 = "error"
          L9_2(L10_2, L11_2, L12_2, L13_2)
          break
        end
      end
      if L2_2 then
        L3_2 = TriggerClientEvent
        L4_2 = "qs-smartphone:sendMessage"
        L5_2 = L0_2
        L6_2 = Lang
        L7_2 = "PHONE_WET_TECH_REPAIR"
        L6_2 = L6_2(L7_2)
        L7_2 = "inform"
        L3_2(L4_2, L5_2, L6_2, L7_2)
      else
        L3_2 = TriggerClientEvent
        L4_2 = "qs-smartphone:sendMessage"
        L5_2 = L0_2
        L6_2 = Lang
        L7_2 = "NO_WET_PHONE"
        L6_2 = L6_2(L7_2)
        L7_2 = "inform"
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    end
    L14_1(L15_1, L16_1)
  else
    L14_1 = _ENV
    L15_1 = "Config"
    L14_1 = L14_1[L15_1]
    L14_1 = L14_1.Framework
    if "QBCore" == L14_1 then
      L14_1 = RegisterServerEvent
      L15_1 = "qs-smartphone:phoneBreakdownRepairTech"
      L14_1(L15_1)
      L14_1 = AddEventHandler
      L15_1 = "qs-smartphone:phoneBreakdownRepairTech"
      function L16_1()
        local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
        L0_2 = source
        L1_2 = GetPlayerFromIdFramework
        L2_2 = L0_2
        L1_2 = L1_2(L2_2)
        L2_2 = false
        L3_2 = pairs
        L4_2 = Config
        L4_2 = L4_2.PhonesProps
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L9_2 = L1_2.PlayerData
          L9_2 = L9_2.money
          L10_2 = Config
          L10_2 = L10_2.RepairWetPhoneNpcAccount
          L9_2 = L9_2[L10_2]
          L10_2 = Config
          L10_2 = L10_2.RepairWetPhoneNpcPrice
          if L9_2 >= L10_2 then
            L9_2 = L1_2.Functions
            L9_2 = L9_2.GetItemByName
            L10_2 = "wet_"
            L11_2 = L7_2
            L10_2 = L10_2 .. L11_2
            L9_2 = L9_2(L10_2)
            if L9_2 then
              L10_2 = L9_2.amount
              if L10_2 >= 1 then
                L10_2 = L1_2.Functions
                L10_2 = L10_2.RemoveMoney
                L11_2 = Config
                L11_2 = L11_2.RepairWetPhoneNpcAccount
                L12_2 = Config
                L12_2 = L12_2.RepairWetPhoneNpcPrice
                L10_2(L11_2, L12_2)
                L10_2 = L1_2.Functions
                L10_2 = L10_2.RemoveItem
                L11_2 = Config
                L11_2 = L11_2.RepairWetPhone
                L12_2 = 1
                L10_2(L11_2, L12_2)
                L10_2 = L1_2.Functions
                L10_2 = L10_2.RemoveItem
                L11_2 = "wet_"
                L12_2 = L7_2
                L11_2 = L11_2 .. L12_2
                L12_2 = 1
                L10_2(L11_2, L12_2)
                L10_2 = Citizen
                L10_2 = L10_2.Wait
                L11_2 = 3500
                L10_2(L11_2)
                L10_2 = L1_2.Functions
                L10_2 = L10_2.AddItem
                L11_2 = L7_2
                L12_2 = 1
                L10_2(L11_2, L12_2)
                L2_2 = true
                break
              end
            end
          else
            L9_2 = TriggerClientEvent
            L10_2 = "qs-smartphone:sendMessage"
            L11_2 = L0_2
            L12_2 = Lang
            L13_2 = "NO_MONEY"
            L12_2 = L12_2(L13_2)
            L13_2 = "error"
            L9_2(L10_2, L11_2, L12_2, L13_2)
            break
          end
        end
        if L2_2 then
          L3_2 = TriggerClientEvent
          L4_2 = "qs-smartphone:sendMessage"
          L5_2 = L0_2
          L6_2 = Lang
          L7_2 = "PHONE_WET_TECH_REPAIR"
          L6_2 = L6_2(L7_2)
          L7_2 = "inform"
          L3_2(L4_2, L5_2, L6_2, L7_2)
        else
          L3_2 = TriggerClientEvent
          L4_2 = "qs-smartphone:sendMessage"
          L5_2 = L0_2
          L6_2 = Lang
          L7_2 = "NO_WET_PHONE"
          L6_2 = L6_2(L7_2)
          L7_2 = "inform"
          L3_2(L4_2, L5_2, L6_2, L7_2)
        end
      end
      L14_1(L15_1, L16_1)
    end
  end
end
L14_1 = nil
L15_1 = TriggerEvent
L16_1 = "qs-core:getSharedObject"
function L17_1(A0_2)
  local L1_2
  L14_1 = A0_2
end
L15_1(L16_1, L17_1)
L15_1 = RegisterServerEvent
L16_1 = "qs-smartphone:CheckHavePhoneStatus"
L15_1(L16_1)
L15_1 = AddEventHandler
L16_1 = "qs-smartphone:CheckHavePhoneStatus"
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = source
  L1_2 = L14_1
  if L1_2 then
    L1_2 = L14_1.GetPlayerFromId
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = CheckPhone
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      L3_2 = TriggerClientEvent
      L4_2 = "qs-smartphone:SetHavePhoneStatus"
      L5_2 = L0_2
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    else
      while not L1_2 do
        L2_2 = Wait
        L3_2 = 1000
        L2_2(L3_2)
        L2_2 = L14_1.GetPlayerFromId
        L3_2 = L0_2
        L2_2 = L2_2(L3_2)
        L1_2 = L2_2
      end
      L2_2 = CheckPhone
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      L3_2 = TriggerClientEvent
      L4_2 = "qs-smartphone:SetHavePhoneStatus"
      L5_2 = L0_2
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = CheckPhone
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      L3_2 = TriggerClientEvent
      L4_2 = "qs-smartphone:SetHavePhoneStatus"
      L5_2 = L0_2
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    else
      while not L1_2 do
        L2_2 = Wait
        L3_2 = 1000
        L2_2(L3_2)
        L2_2 = ESX
        L2_2 = L2_2.GetPlayerFromId
        L3_2 = L0_2
        L2_2 = L2_2(L3_2)
        L1_2 = L2_2
      end
      L2_2 = CheckPhone
      L3_2 = L0_2
      L2_2 = L2_2(L3_2)
      L3_2 = TriggerClientEvent
      L4_2 = "qs-smartphone:SetHavePhoneStatus"
      L5_2 = L0_2
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L15_1(L16_1, L17_1)
L15_1 = AddEventHandler
L16_1 = _ENV
L17_1 = "Config"
L16_1 = L16_1[L17_1]
L17_1 = "onAddInventoryItem"
L16_1 = L16_1[L17_1]
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = Config
    L2_2 = L2_2.Phones
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L2_2 = CheckPhone
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = TriggerClientEvent
      L4_2 = "qs-smartphone:SetHavePhoneStatus"
      L5_2 = A0_2
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L15_1(L16_1, L17_1)
L15_1 = AddEventHandler
L16_1 = _ENV
L17_1 = "Config"
L16_1 = L16_1[L17_1]
L17_1 = "onRemoveInventoryItem"
L16_1 = L16_1[L17_1]
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = Config
    L2_2 = L2_2.Phones
    L2_2 = L2_2[A1_2]
    if L2_2 then
      L2_2 = CheckPhone
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = TriggerClientEvent
      L4_2 = "qs-smartphone:SetHavePhoneStatus"
      L5_2 = A0_2
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L15_1(L16_1, L17_1)
