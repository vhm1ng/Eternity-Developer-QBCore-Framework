client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua',    
}
ui_page 'html/ui.html'

files {
    'html/ui.html',
    'html/*.css',
    'html/*.js',

    -- IMG
    'html/img/*.png',
}
server_scripts { '@mysql-async/lib/MySQL.lua' }server_scripts { '@mysql-async/lib/MySQL.lua' }