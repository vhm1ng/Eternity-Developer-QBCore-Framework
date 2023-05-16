fx_version 'cerulean'
game 'gta5'

description 'et-Apartments'
version '2.2.0'

shared_scripts {
    'config.lua',
    '@et-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

client_scripts {
    'client/main.lua',
    -- 'client/gui.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/CircleZone.lua',
}

dependencies {
    'et-core',
    'et-interior',
    'et-clothing',
    'et-weathersync'
}

lua54 'yes'
