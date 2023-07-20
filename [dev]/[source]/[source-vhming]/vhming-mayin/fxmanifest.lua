fx_version 'cerulean'
game 'gta5'

author 'VHMing'
description 'Qb-Printer remake by VHMing'
version '1.2.0'

ui_page 'html/index.html'

shared_scripts {
    'config.lua',
    '@et-core/shared/locale.lua',
    'locales/en.lua', -- Change to the language you want
}

client_script 'client/main.lua'

server_script 'server/main.lua'

files {
    '*.lua',
    'html/*.html',
    'html/*.js',
    'html/*.css',
    'html/*.png',
}

lua54 'yes'
