local L0_1, L1_1, L2_1
QS = nil
L0_1 = TriggerEvent
L1_1 = "qs-base:getSharedObject"
function L2_1(A0_2)
  local L1_2
  QS = A0_2
end
L0_1(L1_1, L2_1)
QSPhone = nil
L0_1 = TriggerEvent
L1_1 = "qs-smartphone:CallBacks"
function L2_1(A0_2)
  local L1_2
  QSPhone = A0_2
end
L0_1(L1_1, L2_1)
ESX = nil
QS = nil
QBCore = nil
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
Races = L0_1
L0_1 = {}
AvailableRaces = L0_1
L0_1 = {}
LastRaces = L0_1
L0_1 = {}
NotFinished = L0_1
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = MySQL
  L0_2 = L0_2.Async
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM `race_tracks`"
  L2_2 = {}
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = A0_3[1]
    if nil ~= L1_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = {}
        L8_3 = L6_3.records
        if nil ~= L8_3 then
          L8_3 = json
          L8_3 = L8_3.decode
          L9_3 = L6_3.records
          L8_3 = L8_3(L9_3)
          L7_3 = L8_3
        end
        L8_3 = Races
        L9_3 = L6_3.raceid
        L10_3 = {}
        L11_3 = L6_3.name
        L10_3.RaceName = L11_3
        L11_3 = json
        L11_3 = L11_3.decode
        L12_3 = L6_3.checkpoints
        L11_3 = L11_3(L12_3)
        L10_3.Checkpoints = L11_3
        L10_3.Records = L7_3
        L11_3 = L6_3.creator
        L10_3.Creator = L11_3
        L11_3 = L6_3.raceid
        L10_3.RaceId = L11_3
        L10_3.Started = false
        L10_3.Waiting = false
        L11_3 = L6_3.distance
        L10_3.Distance = L11_3
        L11_3 = {}
        L10_3.LastLeaderboard = L11_3
        L11_3 = {}
        L10_3.Racers = L11_3
        L8_3[L9_3] = L10_3
      end
    end
  end
  L0_2(L1_2, L2_2, L3_2)
end
L0_1(L1_1)
L0_1 = QSPhone
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-racing:server:GetRacingLeaderboards"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Races
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = tonumber
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  if L1_2 <= 0 then
    L2_2 = "00:00:00"
  else
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02.f"
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L1_2 / 3600
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    hours = L3_2
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02.f"
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = L1_2 / 60
    L7_2 = hours
    L7_2 = L7_2 * 60
    L6_2 = L6_2 - L7_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    mins = L3_2
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "%02.f"
    L5_2 = math
    L5_2 = L5_2.floor
    L6_2 = hours
    L6_2 = L6_2 * 3600
    L6_2 = L1_2 - L6_2
    L7_2 = mins
    L7_2 = L7_2 * 60
    L6_2 = L6_2 - L7_2
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
    secs = L3_2
    L3_2 = hours
    L4_2 = ":"
    L5_2 = mins
    L6_2 = ":"
    L7_2 = secs
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2 = L3_2
  end
  return L2_2
end
SecondsToClock = L0_1
L0_1 = RegisterServerEvent
L1_1 = "qs-racing:server:FinishPlayer"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-racing:server:FinishPlayer"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = source
  L5_2 = nil
  L6_2 = Config
  L6_2 = L6_2.Framework
  if "ESX" == L6_2 then
    L6_2 = QS
    L6_2 = L6_2.GetPlayerFromId
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  else
    L6_2 = Config
    L6_2 = L6_2.Framework
    if "QBCore" == L6_2 then
      L6_2 = GetPlayerFromIdFramework
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      L5_2 = L6_2
    end
  end
  if L5_2 then
    L6_2 = GetOpenedRaceKey
    L7_2 = A0_2.RaceId
    L6_2 = L6_2(L7_2)
    L7_2 = 0
    L8_2 = 0
    L9_2 = pairs
    L10_2 = Races
    L11_2 = A0_2.RaceId
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2.Racers
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = L14_2.Finished
      if L15_2 then
        L7_2 = L7_2 + 1
      end
      L8_2 = L8_2 + 1
    end
    L9_2 = 0
    if A2_2 < 2 then
      L9_2 = A1_2
    else
      L9_2 = A3_2
    end
    L10_2 = LastRaces
    L11_2 = A0_2.RaceId
    L10_2 = L10_2[L11_2]
    if nil ~= L10_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = LastRaces
      L12_2 = A0_2.RaceId
      L11_2 = L11_2[L12_2]
      L12_2 = {}
      L12_2.TotalTime = A1_2
      L12_2.BestLap = L9_2
      L13_2 = {}
      L14_2 = L5_2.PlayerData
      L14_2 = L14_2.charinfo
      L14_2 = L14_2.firstname
      L13_2[1] = L14_2
      L14_2 = L5_2.PlayerData
      L14_2 = L14_2.charinfo
      L14_2 = L14_2.lastname
      L13_2[2] = L14_2
      L12_2.Holder = L13_2
      L10_2(L11_2, L12_2)
    else
      L10_2 = LastRaces
      L11_2 = A0_2.RaceId
      L12_2 = {}
      L10_2[L11_2] = L12_2
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = LastRaces
      L12_2 = A0_2.RaceId
      L11_2 = L11_2[L12_2]
      L12_2 = {}
      L12_2.TotalTime = A1_2
      L12_2.BestLap = L9_2
      L13_2 = {}
      L14_2 = L5_2.PlayerData
      L14_2 = L14_2.charinfo
      L14_2 = L14_2.firstname
      L13_2[1] = L14_2
      L14_2 = L5_2.PlayerData
      L14_2 = L14_2.charinfo
      L14_2 = L14_2.lastname
      L13_2[2] = L14_2
      L12_2.Holder = L13_2
      L10_2(L11_2, L12_2)
    end
    L10_2 = Races
    L11_2 = A0_2.RaceId
    L10_2 = L10_2[L11_2]
    L10_2 = L10_2.Records
    if nil ~= L10_2 then
      L10_2 = next
      L11_2 = Races
      L12_2 = A0_2.RaceId
      L11_2 = L11_2[L12_2]
      L11_2 = L11_2.Records
      L10_2 = L10_2(L11_2)
      if nil ~= L10_2 then
        L10_2 = Races
        L11_2 = A0_2.RaceId
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.Records
        L10_2 = L10_2.Time
        if L9_2 < L10_2 then
          L10_2 = Races
          L11_2 = A0_2.RaceId
          L10_2 = L10_2[L11_2]
          L11_2 = {}
          L11_2.Time = L9_2
          L12_2 = {}
          L13_2 = L5_2.PlayerData
          L13_2 = L13_2.charinfo
          L13_2 = L13_2.firstname
          L12_2[1] = L13_2
          L13_2 = L5_2.PlayerData
          L13_2 = L13_2.charinfo
          L13_2 = L13_2.lastname
          L12_2[2] = L13_2
          L11_2.Holder = L12_2
          L10_2.Records = L11_2
          L10_2 = MySQL
          L10_2 = L10_2.Sync
          L10_2 = L10_2.execute
          L11_2 = "UPDATE `race_tracks` SET `records` = '"
          L12_2 = json
          L12_2 = L12_2.encode
          L13_2 = Races
          L14_2 = A0_2.RaceId
          L13_2 = L13_2[L14_2]
          L13_2 = L13_2.Records
          L12_2 = L12_2(L13_2)
          L13_2 = "' WHERE `raceid` = '"
          L14_2 = A0_2.RaceId
          L15_2 = "'"
          L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
          L10_2(L11_2)
          L10_2 = TriggerClientEvent
          L11_2 = "qs-smartphone:client:RaceNotify"
          L12_2 = L4_2
          L13_2 = Lang
          L14_2 = "RACE_WR"
          L13_2 = L13_2(L14_2)
          L14_2 = " "
          L15_2 = A0_2.RaceName
          L16_2 = " "
          L17_2 = Lang
          L18_2 = "RACE_WR_TIME"
          L17_2 = L17_2(L18_2)
          L18_2 = " "
          L19_2 = SecondsToClock
          L20_2 = L9_2
          L19_2 = L19_2(L20_2)
          L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
          L10_2(L11_2, L12_2, L13_2)
        end
    end
    else
      L10_2 = Races
      L11_2 = A0_2.RaceId
      L10_2 = L10_2[L11_2]
      L11_2 = {}
      L11_2.Time = L9_2
      L12_2 = {}
      L13_2 = L5_2.PlayerData
      L13_2 = L13_2.charinfo
      L13_2 = L13_2.firstname
      L12_2[1] = L13_2
      L13_2 = L5_2.PlayerData
      L13_2 = L13_2.charinfo
      L13_2 = L13_2.lastname
      L12_2[2] = L13_2
      L11_2.Holder = L12_2
      L10_2.Records = L11_2
      L10_2 = MySQL
      L10_2 = L10_2.Sync
      L10_2 = L10_2.execute
      L11_2 = "UPDATE `race_tracks` SET `records` = '"
      L12_2 = json
      L12_2 = L12_2.encode
      L13_2 = Races
      L14_2 = A0_2.RaceId
      L13_2 = L13_2[L14_2]
      L13_2 = L13_2.Records
      L12_2 = L12_2(L13_2)
      L13_2 = "' WHERE `raceid` = '"
      L14_2 = A0_2.RaceId
      L15_2 = "'"
      L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
      L10_2(L11_2)
      L10_2 = TriggerClientEvent
      L11_2 = "qs-smartphone:client:RaceNotify"
      L12_2 = L4_2
      L13_2 = Lang
      L14_2 = "RACE_WR"
      L13_2 = L13_2(L14_2)
      L14_2 = " "
      L15_2 = A0_2.RaceName
      L16_2 = " "
      L17_2 = Lang
      L18_2 = "RACE_WR_TIME"
      L17_2 = L17_2(L18_2)
      L18_2 = " "
      L19_2 = SecondsToClock
      L20_2 = L9_2
      L19_2 = L19_2(L20_2)
      L13_2 = L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2 .. L18_2 .. L19_2
      L10_2(L11_2, L12_2, L13_2)
    end
    L10_2 = AvailableRaces
    L10_2 = L10_2[L6_2]
    L11_2 = Races
    L12_2 = A0_2.RaceId
    L11_2 = L11_2[L12_2]
    L10_2.RaceData = L11_2
    L10_2 = TriggerClientEvent
    L11_2 = "qs-racing:client:PlayerFinishs"
    L12_2 = -1
    L13_2 = A0_2.RaceId
    L14_2 = L7_2
    L15_2 = L5_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    if L7_2 == L8_2 then
      L10_2 = NotFinished
      if nil ~= L10_2 then
        L10_2 = next
        L11_2 = NotFinished
        L10_2 = L10_2(L11_2)
        if nil ~= L10_2 then
          L10_2 = NotFinished
          L11_2 = A0_2.RaceId
          L10_2 = L10_2[L11_2]
          if nil ~= L10_2 then
            L10_2 = next
            L11_2 = NotFinished
            L12_2 = A0_2.RaceId
            L11_2 = L11_2[L12_2]
            L10_2 = L10_2(L11_2)
            if nil ~= L10_2 then
              L10_2 = pairs
              L11_2 = NotFinished
              L12_2 = A0_2.RaceId
              L11_2 = L11_2[L12_2]
              L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
              for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
                L16_2 = table
                L16_2 = L16_2.insert
                L17_2 = LastRaces
                L18_2 = A0_2.RaceId
                L17_2 = L17_2[L18_2]
                L18_2 = {}
                L19_2 = L15_2.TotalTime
                L18_2.TotalTime = L19_2
                L19_2 = L15_2.BestLap
                L18_2.BestLap = L19_2
                L19_2 = {}
                L20_2 = L15_2.Holder
                L20_2 = L20_2[1]
                L19_2[1] = L20_2
                L20_2 = L15_2.Holder
                L20_2 = L20_2[2]
                L19_2[2] = L20_2
                L18_2.Holder = L19_2
                L16_2(L17_2, L18_2)
              end
            end
          end
        end
      end
      L10_2 = Races
      L11_2 = A0_2.RaceId
      L10_2 = L10_2[L11_2]
      L11_2 = LastRaces
      L12_2 = A0_2.RaceId
      L11_2 = L11_2[L12_2]
      L10_2.LastLeaderboard = L11_2
      L10_2 = Races
      L11_2 = A0_2.RaceId
      L10_2 = L10_2[L11_2]
      L11_2 = {}
      L10_2.Racers = L11_2
      L10_2 = Races
      L11_2 = A0_2.RaceId
      L10_2 = L10_2[L11_2]
      L10_2.Started = false
      L10_2 = Races
      L11_2 = A0_2.RaceId
      L10_2 = L10_2[L11_2]
      L10_2.Waiting = false
      L10_2 = table
      L10_2 = L10_2.remove
      L11_2 = AvailableRaces
      L12_2 = L6_2
      L10_2(L11_2, L12_2)
      L10_2 = LastRaces
      L11_2 = A0_2.RaceId
      L10_2[L11_2] = nil
      L10_2 = NotFinished
      L11_2 = A0_2.RaceId
      L10_2[L11_2] = nil
    end
    L10_2 = TriggerClientEvent
    L11_2 = "qs-smartphone:client:UpdateLapraces"
    L12_2 = -1
    L10_2(L11_2, L12_2)
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = false
  L2_2 = CheckPlayerPermissions
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  return L2_2
end
IsWhitelisted = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = true
  L2_2 = pairs
  L3_2 = Races
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Races
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.RaceName
    if L8_2 == A0_2 then
      L1_2 = false
      break
    end
  end
  return L1_2
end
IsNameAvailable = L0_1
L0_1 = RegisterServerEvent
L1_1 = "qs-racing:server:CreateLapRace"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-racing:server:CreateLapRace"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = IsWhitelisted
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = IsNameAvailable
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "qs-racing:client:StartRaceEditor"
      L5_2 = source
      L6_2 = A0_2
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = TriggerClientEvent
      L4_2 = "qs-racing:sendMessage"
      L5_2 = source
      L6_2 = Lang
      L7_2 = "CREATOR_NAME_NOT_AVAILABLE"
      L6_2 = L6_2(L7_2)
      L7_2 = "error"
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  else
    L3_2 = TriggerClientEvent
    L4_2 = "qs-racing:sendMessage"
    L5_2 = source
    L6_2 = Lang
    L7_2 = "CREATOR_NO_WL"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = QSPhone
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-racing:server:GetRaces"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = AvailableRaces
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = QSPhone
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-racing:server:GetListedRaces"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Races
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = QSPhone
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-racing:server:GetRacingData"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2
  L4_2 = Races
  L4_2 = L4_2[A2_2]
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = QSPhone
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-racing:server:HasCreatedRace"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A1_2
  L3_2 = HasOpenedRace
  L4_2 = GetPlayerFromIdFramework
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.identifier
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = QSPhone
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-racing:server:IsAuthorizedToCreateRaces"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2
  L4_2 = IsWhitelisted
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = IsNameAvailable
  L6_2 = A2_2
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = pairs
  L3_2 = AvailableRaces
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.SetupCitizenId
    if L8_2 == A0_2 then
      L1_2 = true
    end
  end
  return L1_2
end
HasOpenedRace = L0_1
L0_1 = QSPhone
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-racing:server:GetTrackData"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Config
  L3_2 = L3_2.Framework
  if "ESX" == L3_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM `users` WHERE `identifier` = '"
    L5_2 = Races
    L5_2 = L5_2[A2_2]
    L5_2 = L5_2.Creator
    L6_2 = "'"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L5_2 = {}
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = A0_3[1]
      if nil ~= L1_3 then
        L1_3 = A0_3[1]
        L2_3 = json
        L2_3 = L2_3.decode
        L3_3 = A0_3[1]
        L3_3 = L3_3.charinfo
        L2_3 = L2_3(L3_3)
        L1_3.charinfo = L2_3
        L1_3 = A1_2
        L2_3 = Races
        L3_3 = A2_2
        L2_3 = L2_3[L3_3]
        L3_3 = A0_3[1]
        L1_3(L2_3, L3_3)
      else
        L1_3 = A1_2
        L2_3 = Races
        L3_3 = A2_2
        L2_3 = L2_3[L3_3]
        L3_3 = {}
        L4_3 = {}
        L4_3.firstname = "Unknown"
        L4_3.lastname = "Unknown"
        L3_3.charinfo = L4_3
        L1_3(L2_3, L3_3)
      end
    end
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = Config
    L3_2 = L3_2.Framework
    if "QBCore" == L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Async
      L3_2 = L3_2.fetchAll
      L4_2 = "SELECT * FROM `players` WHERE `citizenid` = '"
      L5_2 = Races
      L5_2 = L5_2[A2_2]
      L5_2 = L5_2.Creator
      L6_2 = "'"
      L4_2 = L4_2 .. L5_2 .. L6_2
      L5_2 = {}
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        L1_3 = A0_3[1]
        if nil ~= L1_3 then
          L1_3 = A0_3[1]
          L2_3 = json
          L2_3 = L2_3.decode
          L3_3 = A0_3[1]
          L3_3 = L3_3.charinfo
          L2_3 = L2_3(L3_3)
          L1_3.charinfo = L2_3
          L1_3 = A1_2
          L2_3 = Races
          L3_3 = A2_2
          L2_3 = L2_3[L3_3]
          L3_3 = A0_3[1]
          L1_3(L2_3, L3_3)
        else
          L1_3 = A1_2
          L2_3 = Races
          L3_3 = A2_2
          L2_3 = L2_3[L3_3]
          L3_3 = {}
          L4_3 = {}
          L4_3.firstname = "Unknown"
          L4_3.lastname = "Unknown"
          L3_3.charinfo = L4_3
          L1_3(L2_3, L3_3)
        end
      end
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = AvailableRaces
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.RaceId
    if L8_2 == A0_2 then
      L1_2 = L6_2
      break
    end
  end
  return L1_2
end
GetOpenedRaceKey = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = Races
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = pairs
    L9_2 = Races
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.Racers
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      if L12_2 == A0_2 then
        L1_2 = L6_2
        break
      end
    end
  end
  return L1_2
end
GetCurrentRace = L0_1
L0_1 = RegisterServerEvent
L1_1 = "qs-racing:server:JoinRace"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-racing:server:JoinRace"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = Config
  L4_2 = L4_2.Framework
  if "ESX" == L4_2 then
    L4_2 = QS
    L4_2 = L4_2.GetPlayerFromId
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  else
    L4_2 = Config
    L4_2 = L4_2.Framework
    if "QBCore" == L4_2 then
      L4_2 = GetPlayerFromIdFramework
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
    end
  end
  L4_2 = A0_2.RaceData
  L4_2 = L4_2.RaceName
  L5_2 = GetRaceId
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetOpenedRaceKey
  L7_2 = A0_2.RaceId
  L6_2 = L6_2(L7_2)
  L7_2 = GetCurrentRace
  L8_2 = L2_2.identifier
  L7_2 = L7_2(L8_2)
  if nil ~= L7_2 then
    L8_2 = 0
    L9_2 = GetOpenedRaceKey
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    PreviousRaceKey = L9_2
    L9_2 = pairs
    L10_2 = Races
    L10_2 = L10_2[L7_2]
    L10_2 = L10_2.Racers
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L8_2 = L8_2 + 1
    end
    L9_2 = Races
    L9_2 = L9_2[L7_2]
    L9_2 = L9_2.Racers
    L10_2 = L2_2.identifier
    L9_2[L10_2] = nil
    L9_2 = L8_2 - 1
    if 0 == L9_2 then
      L9_2 = Races
      L9_2 = L9_2[L7_2]
      L10_2 = {}
      L9_2.Racers = L10_2
      L9_2 = Races
      L9_2 = L9_2[L7_2]
      L9_2.Started = false
      L9_2 = Races
      L9_2 = L9_2[L7_2]
      L9_2.Waiting = false
      L9_2 = table
      L9_2 = L9_2.remove
      L10_2 = AvailableRaces
      L11_2 = PreviousRaceKey
      L9_2(L10_2, L11_2)
      L9_2 = TriggerClientEvent
      L10_2 = "qs-racing:sendMessage"
      L11_2 = source
      L12_2 = Lang
      L13_2 = "RACE_NO_PEOPLE"
      L12_2 = L12_2(L13_2)
      L13_2 = "error"
      L9_2(L10_2, L11_2, L12_2, L13_2)
      L9_2 = TriggerClientEvent
      L10_2 = "qs-racing:client:LeaveRace"
      L11_2 = L1_2
      L12_2 = Races
      L12_2 = L12_2[L7_2]
      L9_2(L10_2, L11_2, L12_2)
    else
      L9_2 = AvailableRaces
      L10_2 = PreviousRaceKey
      L9_2 = L9_2[L10_2]
      L10_2 = Races
      L10_2 = L10_2[L7_2]
      L9_2.RaceData = L10_2
      L9_2 = TriggerClientEvent
      L10_2 = "qs-racing:client:LeaveRace"
      L11_2 = L1_2
      L12_2 = Races
      L12_2 = L12_2[L7_2]
      L9_2(L10_2, L11_2, L12_2)
    end
    L9_2 = TriggerClientEvent
    L10_2 = "qs-smartphone:client:UpdateLapraces"
    L11_2 = -1
    L9_2(L10_2, L11_2)
  end
  L8_2 = Races
  L8_2 = L8_2[L5_2]
  L8_2.Waiting = true
  L8_2 = Races
  L8_2 = L8_2[L5_2]
  L8_2 = L8_2.Racers
  L9_2 = L2_2.identifier
  L10_2 = {}
  L10_2.Checkpoint = 0
  L10_2.Lap = 1
  L10_2.Finished = false
  L8_2[L9_2] = L10_2
  L8_2 = AvailableRaces
  L8_2 = L8_2[L6_2]
  L9_2 = Races
  L9_2 = L9_2[L5_2]
  L8_2.RaceData = L9_2
  L8_2 = TriggerClientEvent
  L9_2 = "qs-racing:client:JoinRace"
  L10_2 = L1_2
  L11_2 = Races
  L11_2 = L11_2[L5_2]
  L12_2 = A0_2.Laps
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = TriggerClientEvent
  L9_2 = "qs-smartphone:client:UpdateLapraces"
  L10_2 = -1
  L8_2(L9_2, L10_2)
  L8_2 = GetPlayerFromIdentifierFramework
  L9_2 = AvailableRaces
  L9_2 = L9_2[L6_2]
  L9_2 = L9_2.SetupCitizenId
  L8_2 = L8_2(L9_2)
  L8_2 = L8_2.source
  if L8_2 ~= L1_2 then
    L9_2 = TriggerClientEvent
    L10_2 = "qs-smartphone:client:RaceNotify"
    L11_2 = L8_2
    L12_2 = string
    L12_2 = L12_2.sub
    L13_2 = L3_2.PlayerData
    L13_2 = L13_2.charinfo
    L13_2 = L13_2.firstname
    L14_2 = 1
    L15_2 = 1
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = ". "
    L14_2 = L3_2.PlayerData
    L14_2 = L14_2.charinfo
    L14_2 = L14_2.lastname
    L15_2 = " "
    L16_2 = Lang
    L17_2 = "RACE_PLAYER_JOIN"
    L16_2 = L16_2(L17_2)
    L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-racing:server:LeaveRace"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-racing:server:LeaveRace"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = nil
  L4_2 = Config
  L4_2 = L4_2.Framework
  if "ESX" == L4_2 then
    L4_2 = QS
    L4_2 = L4_2.GetPlayerFromId
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L3_2 = L4_2
  else
    L4_2 = Config
    L4_2 = L4_2.Framework
    if "QBCore" == L4_2 then
      L4_2 = GetPlayerFromIdFramework
      L5_2 = L1_2
      L4_2 = L4_2(L5_2)
      L3_2 = L4_2
    end
  end
  L4_2 = nil
  L5_2 = A0_2.RaceData
  if nil ~= L5_2 then
    L5_2 = A0_2.RaceData
    L4_2 = L5_2.RaceName
  else
    L4_2 = A0_2.RaceName
  end
  L5_2 = GetRaceId
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = GetOpenedRaceKey
  L7_2 = A0_2.RaceId
  L6_2 = L6_2(L7_2)
  L7_2 = GetPlayerFromIdentifierFramework
  L8_2 = AvailableRaces
  L8_2 = L8_2[L6_2]
  L8_2 = L8_2.SetupCitizenId
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.source
  L8_2 = L2_2.source
  if L7_2 ~= L8_2 then
    L8_2 = TriggerClientEvent
    L9_2 = "qs-smartphone:client:RaceNotify"
    L10_2 = L7_2
    L11_2 = string
    L11_2 = L11_2.sub
    L12_2 = L3_2.PlayerData
    L12_2 = L12_2.charinfo
    L12_2 = L12_2.firstname
    L13_2 = 1
    L14_2 = 1
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = ". "
    L13_2 = L3_2.PlayerData
    L13_2 = L13_2.charinfo
    L13_2 = L13_2.lastname
    L14_2 = " "
    L15_2 = Lang
    L16_2 = "RACE_PLAYER_QUIT"
    L15_2 = L15_2(L16_2)
    L11_2 = L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = 0
  L9_2 = pairs
  L10_2 = Races
  L11_2 = A0_2.RaceId
  L10_2 = L10_2[L11_2]
  L10_2 = L10_2.Racers
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L8_2 = L8_2 + 1
  end
  L9_2 = NotFinished
  L10_2 = A0_2.RaceId
  L9_2 = L9_2[L10_2]
  if nil ~= L9_2 then
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = NotFinished
    L11_2 = A0_2.RaceId
    L10_2 = L10_2[L11_2]
    L11_2 = {}
    L11_2.TotalTime = "DNF"
    L11_2.BestLap = "DNF"
    L12_2 = {}
    L13_2 = L3_2.PlayerData
    L13_2 = L13_2.charinfo
    L13_2 = L13_2.firstname
    L12_2[1] = L13_2
    L13_2 = L3_2.PlayerData
    L13_2 = L13_2.charinfo
    L13_2 = L13_2.lastname
    L12_2[2] = L13_2
    L11_2.Holder = L12_2
    L9_2(L10_2, L11_2)
  else
    L9_2 = NotFinished
    L10_2 = A0_2.RaceId
    L11_2 = {}
    L9_2[L10_2] = L11_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = NotFinished
    L11_2 = A0_2.RaceId
    L10_2 = L10_2[L11_2]
    L11_2 = {}
    L11_2.TotalTime = "DNF"
    L11_2.BestLap = "DNF"
    L12_2 = {}
    L13_2 = L3_2.PlayerData
    L13_2 = L13_2.charinfo
    L13_2 = L13_2.firstname
    L12_2[1] = L13_2
    L13_2 = L3_2.PlayerData
    L13_2 = L13_2.charinfo
    L13_2 = L13_2.lastname
    L12_2[2] = L13_2
    L11_2.Holder = L12_2
    L9_2(L10_2, L11_2)
  end
  L9_2 = Races
  L9_2 = L9_2[L5_2]
  L9_2 = L9_2.Racers
  L10_2 = L2_2.identifier
  L9_2[L10_2] = nil
  L9_2 = L8_2 - 1
  if 0 == L9_2 then
    L9_2 = NotFinished
    if nil ~= L9_2 then
      L9_2 = next
      L10_2 = NotFinished
      L9_2 = L9_2(L10_2)
      if nil ~= L9_2 then
        L9_2 = NotFinished
        L9_2 = L9_2[L5_2]
        if nil ~= L9_2 then
          L9_2 = next
          L10_2 = NotFinished
          L10_2 = L10_2[L5_2]
          L9_2 = L9_2(L10_2)
          if nil ~= L9_2 then
            L9_2 = pairs
            L10_2 = NotFinished
            L10_2 = L10_2[L5_2]
            L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
            for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
              L15_2 = LastRaces
              L15_2 = L15_2[L5_2]
              if nil ~= L15_2 then
                L15_2 = table
                L15_2 = L15_2.insert
                L16_2 = LastRaces
                L16_2 = L16_2[L5_2]
                L17_2 = {}
                L18_2 = L14_2.TotalTime
                L17_2.TotalTime = L18_2
                L18_2 = L14_2.BestLap
                L17_2.BestLap = L18_2
                L18_2 = {}
                L19_2 = L14_2.Holder
                L19_2 = L19_2[1]
                L18_2[1] = L19_2
                L19_2 = L14_2.Holder
                L19_2 = L19_2[2]
                L18_2[2] = L19_2
                L17_2.Holder = L18_2
                L15_2(L16_2, L17_2)
              else
                L15_2 = LastRaces
                L16_2 = {}
                L15_2[L5_2] = L16_2
                L15_2 = table
                L15_2 = L15_2.insert
                L16_2 = LastRaces
                L16_2 = L16_2[L5_2]
                L17_2 = {}
                L18_2 = L14_2.TotalTime
                L17_2.TotalTime = L18_2
                L18_2 = L14_2.BestLap
                L17_2.BestLap = L18_2
                L18_2 = {}
                L19_2 = L14_2.Holder
                L19_2 = L19_2[1]
                L18_2[1] = L19_2
                L19_2 = L14_2.Holder
                L19_2 = L19_2[2]
                L18_2[2] = L19_2
                L17_2.Holder = L18_2
                L15_2(L16_2, L17_2)
              end
            end
          end
        end
      end
    end
    L9_2 = Races
    L9_2 = L9_2[L5_2]
    L10_2 = LastRaces
    L10_2 = L10_2[L5_2]
    L9_2.LastLeaderboard = L10_2
    L9_2 = Races
    L9_2 = L9_2[L5_2]
    L10_2 = {}
    L9_2.Racers = L10_2
    L9_2 = Races
    L9_2 = L9_2[L5_2]
    L9_2.Started = false
    L9_2 = Races
    L9_2 = L9_2[L5_2]
    L9_2.Waiting = false
    L9_2 = table
    L9_2 = L9_2.remove
    L10_2 = AvailableRaces
    L11_2 = L6_2
    L9_2(L10_2, L11_2)
    L9_2 = TriggerClientEvent
    L10_2 = "qs-racing:sendMessage"
    L11_2 = source
    L12_2 = Lang
    L13_2 = "RACE_NO_PEOPLE"
    L12_2 = L12_2(L13_2)
    L13_2 = "error"
    L9_2(L10_2, L11_2, L12_2, L13_2)
    L9_2 = TriggerClientEvent
    L10_2 = "qs-racing:client:LeaveRace"
    L11_2 = L1_2
    L12_2 = Races
    L12_2 = L12_2[L5_2]
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = LastRaces
    L9_2[L5_2] = nil
    L9_2 = NotFinished
    L9_2[L5_2] = nil
  else
    L9_2 = AvailableRaces
    L9_2 = L9_2[L6_2]
    L10_2 = Races
    L10_2 = L10_2[L5_2]
    L9_2.RaceData = L10_2
    L9_2 = TriggerClientEvent
    L10_2 = "qs-racing:client:LeaveRace"
    L11_2 = L1_2
    L12_2 = Races
    L12_2 = L12_2[L5_2]
    L9_2(L10_2, L11_2, L12_2)
  end
  L9_2 = TriggerClientEvent
  L10_2 = "qs-smartphone:client:UpdateLapraces"
  L11_2 = -1
  L9_2(L10_2, L11_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-racing:server:SetupRace"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-racing:server:SetupRace"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = source
  L2_2 = L2_2(L3_2)
  L3_2 = Races
  L3_2 = L3_2[A0_2]
  if nil ~= L3_2 then
    L3_2 = Races
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.Waiting
    if not L3_2 then
      L3_2 = Races
      L3_2 = L3_2[A0_2]
      L3_2 = L3_2.Started
      if not L3_2 then
        L3_2 = Races
        L3_2 = L3_2[A0_2]
        L3_2.Waiting = true
        L3_2 = table
        L3_2 = L3_2.insert
        L4_2 = AvailableRaces
        L5_2 = {}
        L6_2 = Races
        L6_2 = L6_2[A0_2]
        L5_2.RaceData = L6_2
        L5_2.Laps = A1_2
        L5_2.RaceId = A0_2
        L6_2 = L2_2.identifier
        L5_2.SetupCitizenId = L6_2
        L3_2(L4_2, L5_2)
        L3_2 = TriggerClientEvent
        L4_2 = "qs-smartphone:client:UpdateLapraces"
        L5_2 = -1
        L3_2(L4_2, L5_2)
        L3_2 = SetTimeout
        L4_2 = 300000
        function L5_2()
          local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
          L0_3 = Races
          L1_3 = A0_2
          L0_3 = L0_3[L1_3]
          L0_3 = L0_3.Waiting
          if L0_3 then
            L0_3 = GetOpenedRaceKey
            L1_3 = A0_2
            L0_3 = L0_3(L1_3)
            L1_3 = pairs
            L2_3 = Races
            L3_3 = A0_2
            L2_3 = L2_3[L3_3]
            L2_3 = L2_3.Racers
            L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
            for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
              L7_3 = GetPlayerFromIdFramework
              L8_3 = L5_3
              L7_3 = L7_3(L8_3)
              if nil ~= L7_3 then
                L8_3 = TriggerClientEvent
                L9_3 = "qs-racing:client:LeaveRace"
                L10_3 = L7_3.source
                L11_3 = Races
                L12_3 = A0_2
                L11_3 = L11_3[L12_3]
                L8_3(L9_3, L10_3, L11_3)
              end
            end
            L1_3 = table
            L1_3 = L1_3.remove
            L2_3 = AvailableRaces
            L3_3 = L0_3
            L1_3(L2_3, L3_3)
            L1_3 = Races
            L2_3 = A0_2
            L1_3 = L1_3[L2_3]
            L2_3 = {}
            L1_3.LastLeaderboard = L2_3
            L1_3 = Races
            L2_3 = A0_2
            L1_3 = L1_3[L2_3]
            L2_3 = {}
            L1_3.Racers = L2_3
            L1_3 = Races
            L2_3 = A0_2
            L1_3 = L1_3[L2_3]
            L1_3.Started = false
            L1_3 = Races
            L2_3 = A0_2
            L1_3 = L1_3[L2_3]
            L1_3.Waiting = false
            L1_3 = LastRaces
            L2_3 = A0_2
            L1_3[L2_3] = nil
            L1_3 = TriggerClientEvent
            L2_3 = "qs-smartphone:client:UpdateLapraces"
            L3_3 = -1
            L1_3(L2_3, L3_3)
          end
        end
        L3_2(L4_2, L5_2)
      else
        L3_2 = TriggerClientEvent
        L4_2 = "qs-racing:sendMessage"
        L5_2 = source
        L6_2 = Lang
        L7_2 = "RACE_IN_PROGRESS"
        L6_2 = L6_2(L7_2)
        L7_2 = "error"
        L3_2(L4_2, L5_2, L6_2, L7_2)
      end
    else
      L3_2 = TriggerClientEvent
      L4_2 = "qs-racing:sendMessage"
      L5_2 = source
      L6_2 = Lang
      L7_2 = "RACE_IN_PROGRESS"
      L6_2 = L6_2(L7_2)
      L7_2 = "error"
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  else
    L3_2 = TriggerClientEvent
    L4_2 = "qs-racing:sendMessage"
    L5_2 = source
    L6_2 = Lang
    L7_2 = "RACE_NOT_AVAILABLE"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-racing:server:UpdateRaceState"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-racing:server:UpdateRaceState"
function L2_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = Races
  L3_2 = L3_2[A0_2]
  L3_2.Waiting = A2_2
  L3_2 = Races
  L3_2 = L3_2[A0_2]
  L3_2.Started = A1_2
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-racing:server:UpdateRacerData"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-racing:server:UpdateRacerData"
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = source
  L5_2 = GetPlayerFromIdFramework
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.identifier
  L7_2 = Races
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.Racers
  L7_2 = L7_2[L6_2]
  L7_2.Checkpoint = A1_2
  L7_2 = Races
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.Racers
  L7_2 = L7_2[L6_2]
  L7_2.Lap = A2_2
  L7_2 = Races
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.Racers
  L7_2 = L7_2[L6_2]
  L7_2.Finished = A3_2
  L7_2 = TriggerClientEvent
  L8_2 = "qs-racing:client:UpdateRaceRacerData"
  L9_2 = -1
  L10_2 = A0_2
  L11_2 = Races
  L11_2 = L11_2[A0_2]
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-racing:server:StartRace"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-racing:server:StartRace"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetOpenedRaceKey
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if nil ~= A0_2 then
    L4_2 = AvailableRaces
    L4_2 = L4_2[L3_2]
    L4_2 = L4_2.SetupCitizenId
    L5_2 = L2_2.identifier
    if L4_2 == L5_2 then
      L4_2 = AvailableRaces
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.RaceData
      L4_2.Started = true
      L4_2 = AvailableRaces
      L4_2 = L4_2[L3_2]
      L4_2 = L4_2.RaceData
      L4_2.Waiting = false
      L4_2 = pairs
      L5_2 = Races
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.Racers
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = GetPlayerFromIdentifierFramework
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        if nil ~= L10_2 then
          L11_2 = TriggerClientEvent
          L12_2 = "qs-racing:client:RaceCountdown"
          L13_2 = L10_2.source
          L11_2(L12_2, L13_2)
        end
      end
      L4_2 = TriggerClientEvent
      L5_2 = "qs-smartphone:client:UpdateLapraces"
      L6_2 = -1
      L4_2(L5_2, L6_2)
    else
      L4_2 = TriggerClientEvent
      L5_2 = "qs-racing:sendMessage"
      L6_2 = source
      L7_2 = Lang
      L8_2 = "RACE_NO_OWNER"
      L7_2 = L7_2(L8_2)
      L8_2 = "error"
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  else
    L4_2 = TriggerClientEvent
    L5_2 = "qs-racing:sendMessage"
    L6_2 = source
    L7_2 = Lang
    L8_2 = "RACE_NOT_IN"
    L7_2 = L7_2(L8_2)
    L8_2 = "error"
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterServerEvent
L1_1 = "qs-racing:server:SaveRace"
L0_1(L1_1)
L0_1 = AddEventHandler
L1_1 = "qs-racing:server:SaveRace"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = source
  L2_2 = GetPlayerFromIdFramework
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GenerateRaceId
  L3_2 = L3_2()
  L4_2 = {}
  L5_2 = pairs
  L6_2 = A0_2.Checkpoints
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = {}
    L12_2 = L10_2.offset
    L11_2.offset = L12_2
    L12_2 = L10_2.coords
    L11_2.coords = L12_2
    L4_2[L9_2] = L11_2
  end
  L5_2 = Races
  L6_2 = {}
  L7_2 = A0_2.RaceName
  L6_2.RaceName = L7_2
  L6_2.Checkpoints = L4_2
  L7_2 = {}
  L6_2.Records = L7_2
  L7_2 = L2_2.identifier
  L6_2.Creator = L7_2
  L6_2.RaceId = L3_2
  L6_2.Started = false
  L6_2.Waiting = false
  L7_2 = math
  L7_2 = L7_2.ceil
  L8_2 = A0_2.RaceDistance
  L7_2 = L7_2(L8_2)
  L6_2.Distance = L7_2
  L7_2 = {}
  L6_2.Racers = L7_2
  L7_2 = {}
  L6_2.LastLeaderboard = L7_2
  L5_2[L3_2] = L6_2
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.execute
  L6_2 = "INSERT INTO `race_tracks` (`name`, `checkpoints`, `creator`, `distance`, `raceid`) VALUES ('"
  L7_2 = A0_2.RaceName
  L8_2 = "', '"
  L9_2 = json
  L9_2 = L9_2.encode
  L10_2 = L4_2
  L9_2 = L9_2(L10_2)
  L10_2 = "', '"
  L11_2 = L2_2.identifier
  L12_2 = "', '"
  L13_2 = A0_2.RaceDistance
  L14_2 = "', '"
  L15_2 = GenerateRaceId
  L15_2 = L15_2()
  L16_2 = "')"
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2
  L5_2(L6_2)
end
L0_1(L1_1, L2_1)
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = pairs
  L3_2 = Races
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.RaceName
    if L8_2 == A0_2 then
      L1_2 = L6_2
      break
    end
  end
  return L1_2
end
GetRaceId = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = "LR-"
  L1_2 = math
  L1_2 = L1_2.random
  L2_2 = 1111
  L3_2 = 9999
  L1_2 = L1_2(L2_2, L3_2)
  L0_2 = L0_2 .. L1_2
  while true do
    L1_2 = Races
    L1_2 = L1_2[L0_2]
    if nil == L1_2 then
      break
    end
    L1_2 = "LR-"
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 1111
    L4_2 = 9999
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L1_2 .. L2_2
    L0_2 = L1_2
  end
  return L0_2
end
GenerateRaceId = L0_1
L0_1 = RegisterCommand
L1_1 = "togglesetup"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = IsWhitelisted
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = Config
    L4_2 = Config
    L4_2 = L4_2.RaceSetupAllowed
    L4_2 = not L4_2
    L3_2.RaceSetupAllowed = L4_2
    L3_2 = Config
    L3_2 = L3_2.RaceSetupAllowed
    if not L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "qs-racing:sendMessage"
      L5_2 = A0_2
      L6_2 = Lang
      L7_2 = "CREATOR_NOT_AVAILABLE"
      L6_2 = L6_2(L7_2)
      L7_2 = "error"
      L3_2(L4_2, L5_2, L6_2, L7_2)
    else
      L3_2 = TriggerClientEvent
      L4_2 = "qs-racing:sendMessage"
      L5_2 = A0_2
      L6_2 = Lang
      L7_2 = "CREATOR_AVAILABLE"
      L6_2 = L6_2(L7_2)
      L7_2 = "success"
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  else
    L3_2 = TriggerClientEvent
    L4_2 = "qs-racing:sendMessage"
    L5_2 = A0_2
    L6_2 = Lang
    L7_2 = "CREATOR_NO_WL"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterCommand
L1_1 = "cancelrace"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = GetPlayerFromIdFramework
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = IsWhitelisted
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = table
    L3_2 = L3_2.concat
    L4_2 = A1_2
    L5_2 = " "
    L3_2 = L3_2(L4_2, L5_2)
    if nil ~= L3_2 then
      L4_2 = GetRaceId
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = Races
      L5_2 = L5_2[L4_2]
      L5_2 = L5_2.Started
      if L5_2 then
        L5_2 = GetOpenedRaceKey
        L6_2 = L4_2
        L5_2 = L5_2(L6_2)
        L6_2 = pairs
        L7_2 = Races
        L7_2 = L7_2[L4_2]
        L7_2 = L7_2.Racers
        L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
        for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
          L12_2 = GetPlayerFromIdentifierFramework
          L13_2 = L10_2
          L12_2 = L12_2(L13_2)
          if nil ~= L12_2 then
            L13_2 = TriggerClientEvent
            L14_2 = "qs-racing:client:LeaveRace"
            L15_2 = L12_2.source
            L16_2 = Races
            L16_2 = L16_2[L4_2]
            L13_2(L14_2, L15_2, L16_2)
          end
        end
        L6_2 = table
        L6_2 = L6_2.remove
        L7_2 = AvailableRaces
        L8_2 = L5_2
        L6_2(L7_2, L8_2)
        L6_2 = Races
        L6_2 = L6_2[L4_2]
        L7_2 = {}
        L6_2.LastLeaderboard = L7_2
        L6_2 = Races
        L6_2 = L6_2[L4_2]
        L7_2 = {}
        L6_2.Racers = L7_2
        L6_2 = Races
        L6_2 = L6_2[L4_2]
        L6_2.Started = false
        L6_2 = Races
        L6_2 = L6_2[L4_2]
        L6_2.Waiting = false
        L6_2 = LastRaces
        L6_2[L4_2] = nil
        L6_2 = TriggerClientEvent
        L7_2 = "qs-smartphone:client:UpdateLapraces"
        L8_2 = -1
        L6_2(L7_2, L8_2)
      else
        L5_2 = TriggerClientEvent
        L6_2 = "qs-racing:sendMessage"
        L7_2 = A0_2
        L8_2 = Lang
        L9_2 = "RACE_NO_START"
        L8_2 = L8_2(L9_2)
        L9_2 = "error"
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    end
  else
    L3_2 = TriggerClientEvent
    L4_2 = "qs-racing:sendMessage"
    L5_2 = A0_2
    L6_2 = Lang
    L7_2 = "CREATOR_NO_WL"
    L6_2 = L6_2(L7_2)
    L7_2 = "error"
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = QSPhone
L0_1 = L0_1.RegisterServerCallback
L1_1 = "qs-racing:server:CanRaceSetup"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = Config
  L3_2 = L3_2.RaceSetupAllowed
  L2_2(L3_2)
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
