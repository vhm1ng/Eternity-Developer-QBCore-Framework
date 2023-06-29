fx_version 'cerulean'
game 'gta5'

author 'VHMing'
description 'Multi Farming QBCore Script'
version '1.0.0'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
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
