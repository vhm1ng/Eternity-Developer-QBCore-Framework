fx_version 'cerulean'
game 'gta5'

description 'et-Phone'
version '1.2.0'

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
    -- 'html/fonts/*.ttf',
    -- 'html/fonts/*.otf',
    -- 'html/fonts/*.woff',
    'html/img/backgrounds/*.png',
    'html/img/apps/*.png',
}


lua54 'yes'
