fx_version 'cerulean'
game 'gta5'

name 'tC - Fuel'
author 'tC Dev'
version '1.0.0'
description 'Script Xăng Dev Bởi tC Dev'

client_scripts {
    '@PolyZone/client.lua',
    'client/fuel_cl.lua',
    'client/electric_cl.lua',
    'client/station_cl.lua',
    'client/utils.lua'
}

server_scripts {
    'server/fuel_sv.lua',
    'server/station_sv.lua',
    'server/electric_sv.lua',
    '@oxmysql/lib/MySQL.lua',
}

shared_scripts {
    'shared/config.lua',
    '@et-core/shared/locale.lua',
    'locales/en.lua',
}

exports {
    'GetFuel',
    'SetFuel'
}

lua54 'yes'

dependencies {
    'PolyZone',
    'interact-sound',
    'et-target',
    'et-input',
    'et-menu',
}

provide 'cdn-syphoning'