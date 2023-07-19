fx_version 'cerulean'
game 'gta5'

name 'tC - VehicleShop'
author 'tC Dev'
version '1.0.0'
description 'Script Cardealer Dev Bởi tC Dev'

shared_script {
    'config.lua',
    '@et-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}

lua54 'yes'
