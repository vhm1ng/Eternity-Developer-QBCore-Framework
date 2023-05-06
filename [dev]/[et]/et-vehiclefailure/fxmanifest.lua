fx_version 'cerulean'
game 'gta5'

description 'et-VehicleFailure'
version '1.2.0'

shared_scripts {
    '@et-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua'
}

client_script 'client.lua'
server_script 'server.lua'

lua54 'yes'
