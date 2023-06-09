fx_version 'cerulean'
game 'gta5'

-- fxmanifest.lua by VHMing

description 'Gửi thông báo tới tất cả mọi người, RegisterEvent'
version '1.0.0'
author 'VHMing'



shared_scripts {

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
