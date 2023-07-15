fx_version 'bodacious'
game 'gta5'

name 'tC - Phone'
author 'tC Dev'
version '1.0.0'
description 'Script Điện Thoại Dev Bởi tC Dev'

ui_page 'html/index.html'

shared_scripts {
    'config.lua',
    '@et-apartments/config.lua',
    '@et-garages/config.lua',
}

client_scripts {
    'client/main.lua',
    'client/animation.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

files {
    'html/*.html',
    'html/js/*.js',
    'html/img/*.png',
    'html/css/*.css',
    'html/img/backgrounds/*.png',
    'html/img/apps/*.png',
}

lua54 'yes'