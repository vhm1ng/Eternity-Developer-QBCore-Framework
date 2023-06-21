fx_version 'cerulean'
game 'gta5'

author 'TRClassic#0001'
description 'LumberJack Job For et-Core'
version '1.0.2'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua'
}

server_scripts {'server/*.lua'}

shared_scripts {'config.lua'}

dependencies {
    'PolyZone',
    'et-menu',
    'et-target'
}

this_is_a_map 'yes'