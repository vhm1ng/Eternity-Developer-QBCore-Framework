fx_version 'cerulean'
game 'gta5'

-- fxmanifest.lua by VHMing

description 'Gửi thông báo tới tất cả mọi người, RegisterEvent'
version '1.0.0'
author 'VHMing'

client_scripts {
    'client.lua'
} 

server_scripts{
    'server.lua'
}

shared_scripts{
    'config.lua'
}

files {
    'html/index.html',
    'html/*.css',
    'html/script.js',
    'html/*.png',
    'html/audio.mp3',
}
