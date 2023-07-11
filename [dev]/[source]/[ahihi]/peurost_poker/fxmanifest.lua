--FX
fx_version 'cerulean'
games { 'gta5' }

--Information
author 'CODE: Peurost'
description 'POKER SYSTEM CREATED BY PEUROST || WWW.PEUROST.XYZ'

--Server Scripts
server_scripts {
    'core/server.lua',
    'editme/server.lua',
    'editme/database.lua'
}

--Client Scripts
client_scripts {
    'core/client.lua',
    'editme/client.lua'
} 

--Evaluator
server_scripts {
    'evaluator/PokerEvaluator.js', 'evaluator/HandRanks.dat'
}

--Configs
shared_scripts { 'editme/locale.lua', 'editme/config.lua'}

--MySQL
server_script '@mysql-async/lib/MySQL.lua'

--Main UI index
ui_page "html/index.html"

--Files For UI
files {
    "html/css/*",
    "html/js/*",
    "html/img/*",
    "html/cards/*",
    "html/index.html",
    "html/fonts/*"
}

lua54 'yes'

escrow_ignore {
    "editme/*",
    "evaluator/*",
    "frontend/*"
}