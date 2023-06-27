fx_version 'cerulean'
game {'gta5'}
lua54 'yes'

ui_page 'html/ui.html'

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

files {
    'html/ui.html',
    'html/*.css',
    'html/*.js',
    -- 'html/img/*.png',
}

server_scripts { '@mysql-async/lib/MySQL.lua' }
server_scripts { '@mysql-async/lib/MySQL.lua' }