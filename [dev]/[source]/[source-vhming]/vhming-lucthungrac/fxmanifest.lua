fx_version 'cerulean'
game 'gta5'

description 'et-trashsearch'
version '1.0.0'
author 'IngPleb'

shared_scripts { 'config.lua', '@et-core/shared/locale.lua', 
'locales/en.lua' -- Change here to your desired language
}
server_script 'server/server.lua'
client_scripts { 'client/client.lua' }

lua54 'yes'
