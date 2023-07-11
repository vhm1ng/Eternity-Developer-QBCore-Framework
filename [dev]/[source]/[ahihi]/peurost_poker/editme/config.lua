Config = {} -- Don't touch

-- [[ RANGES ]]
Config.JoinRange = 5 --The range that the player can join the table from
Config.DrawRange = 6 --The range for drawing the 3D text

-- [[ COMMANDS ]]
Config.JoinCommand = "jointable"

-- [[ GAME SETTINGS ]]
Config.ShowHandTime = 5000 -- Time to show the end game screen (1000 - 1 second)

-- [[ ITEM ]]
Config.CreationItem = true --Add an usable pokertable item for creating a table

-- [[ DISCORD LOGS ]]
Config.DiscordWebhook = "" --Empty - disabled

-- [[ SIT DATA ]]
Config.TableModel = "prop_table_02" --Table model
Config.ChairModel = "v_ilev_leath_chr" --Chair model
Config.ChairOffsets = { --Chair placement around the table
    {pos = vector3(-0.29, -1.39, 0), head = 170.1}, 
    {pos = vector3(0.29, 1.39, 0), head = 350.8}, 
    {pos = vector3(1.3, -0.6, 0), head = 250.36},
    {pos = vector3(-1.3, 0.6, 0), head = 60.36},
    {pos = vector3(-1, -1.1, 0), head = 145.0},
    {pos = vector3(0.6, -1.2, 0), head = 210.36},
    {pos = vector3(-1.4, -0.3, 0), head = 100.0},
    {pos = vector3(1.4, 0.3, 0), head = 280.0},
    {pos = vector3(1, 1.1, 0), head = 315.0},
    {pos = vector3(-0.6, 1.2, 0), head = 30.36}, 
}

Config.SitData = { scenario = 'PROP_HUMAN_SEAT_BENCH', verticalOffset = -0.5, forwardOffset = 0.0, leftOffset = 0.0, rotation = 180.0} --https://github.com/esx-framework/esx_sit/blob/master/lists/seat.lua

-- [[ DEBUG ]]
Config.Debug = false --ONLY TURN IT ON WHEN SUPPORT ASKS YOU. ADDS EXPLOITABLE COMMANDS AND LOGS FOR DEBUGGING!
Config.AdminGroup = "god"
--[[ DEBUG COMMANDS ]]--[[
    /dcreatetable - creates a table at the players position
    /djointable - join a table by it's id from any range
    /dchairoffs - get the vector3 of distance between your current position and the closest table
    /ddeletetable - delete table by its id
]]