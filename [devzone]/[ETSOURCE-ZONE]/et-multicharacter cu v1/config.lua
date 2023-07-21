Config = {}
Config.Interior = vector3(-1082.04, -2724.94, 0.81) -- Interior to load where characters are previewed
Config.DefaultSpawn = vector3(-1035.71, -2731.87, 12.86) -- Default spawn coords if you have start apartments disabled
Config.PedCoords = vector4(-1082.72, -2725.36, 0.81, 292.23) -- Create preview ped at these coordinates vector4(-1082.7, -2725.37, 0.81, 294.08)
Config.HiddenCoords = vector4(-1082.72, -2725.36, 0.81, 292.23) -- Hides your actual ped while you are in selection
Config.CamCoords = vector4(-1079.22, -2722.92, 0.81, 117.39) -- Camera coordinates for character preview screen
Config.EnableDeleteButton = false -- Define if the player can delete the character or not

Config.DefaultNumberOfCharacters = 1 -- Define maximum amount of default characters, Max 4 //ST4LTH
Config.PlayersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = "license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", numberOfChars = 2 },
}
