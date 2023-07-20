
--███████╗██████╗░░█████╗░███╗░░░███╗███████╗░██╗░░░░░░░██╗░█████╗░██████╗░██╗░░██╗
--██╔════╝██╔══██╗██╔══██╗████╗░████║██╔════╝░██║░░██╗░░██║██╔══██╗██╔══██╗██║░██╔╝
--█████╗░░██████╔╝███████║██╔████╔██║█████╗░░░╚██╗████╗██╔╝██║░░██║██████╔╝█████═╝░
--██╔══╝░░██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝░░░░████╔═████║░██║░░██║██╔══██╗██╔═██╗░
--██║░░░░░██║░░██║██║░░██║██║░╚═╝░██║███████╗░░╚██╔╝░╚██╔╝░╚█████╔╝██║░░██║██║░╚██╗
--╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝░░░╚═╝░░░╚═╝░░░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝

Config.Framework = 'QBCore' -- Set 'ESX' or 'QBCore'.

Config.billingSystem = 'default' -- Select between 'default' system, 'okokBilling' or 'rcore_billing' or 'jim-payments' or false if you are not using one
Config.billingpayBillEvent = 'esx_billing:payBill' -- The event of esx: 'esx_billing:payBill' or okokBilling: 'okokBilling:PayInvoice'

---
---
---

-- If you are using ESX.

Config.getSharedObject = 'esx:getSharedObject'  -- Configure your framework here.
Config.getSharedObjectExport = false -- Only use in case of exports['es_extended']:getSharedObject().
Config.setJob = 'esx:setJob'  -- Configure your framework here.
Config.playerLoaded = 'esx:playerLoaded'  -- Configure your framework here.
Config.statussetDisplay = 'esx_status:setDisplay'  -- Configure your framework here.

-- Multicharacter Event ESX
Config.MulticharacterEventESX = 'esx:onPlayerLogout'

-- Events to check inventory phone item.
Config.UseESXchecks = true -- Use ESX events to optimise phone checks.
Config.onAddInventoryItem = "esx:onAddInventoryItem" -- Modify it if you use an ESX Custom.
Config.onRemoveInventoryItem = "esx:onRemoveInventoryItem" -- Modify it if you use an ESX Custom.

---
---

-- If you are using QBCore.

Config.QBCoreGetCoreObject = 'et-core'

Config.QBCoreFrameworkPlayersTable = 'players' -- Name of the table where the data of the players its stored.
Config.QBCoreFrameworkVehiclesTable = 'player_vehicles' -- Name of the table where the data of the vehicles its stored.

Config.QBCoreplayerLoaded = 'QBCore:Client:OnPlayerLoaded'
Config.QBCoreSetPlayerData = 'QBCore:Player:SetPlayerData'

-- Multicharacter Event QBCore
Config.MulticharacterEventQBCore = 'QBCore:Client:OnPlayerUnload'

-- Events to check inventory phone item.
Config.UseQBCorechecks = true -- Use QBCore events to optimise phone checks.