fx_version "cerulean"
game "gta5"

name 'tC - Mining'
author 'tC Dev'
version '1.0.0'
description 'Script Đào Đá Dev Bởi tC Dev'

shared_scripts {
    'config.lua',
    'shared/*.lua',
    'locales/*.lua'
}

client_scripts {
    'client.lua'
}
server_script {
    'server.lua'
}

dependencies {
    'et-menu',
    'et-target',
}

lua54 'yes'