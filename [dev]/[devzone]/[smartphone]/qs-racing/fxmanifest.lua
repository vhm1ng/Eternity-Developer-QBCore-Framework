fx_version 'cerulean'

game 'gta5'

version '1.0.1'

lua54 'yes'

ui_page 'html/index.html'

client_scripts {
    'config/config.lua',
    'config/translations.lua',
    'client/main.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config/config.lua',
    'config/config_framework.lua',
    'config/config_permissions.lua',
    'config/translations.lua',
    'server/main.lua',
    'server/framework_functions.lua',
}

files {
    'html/*.html',
    'html/*.css',
    'html/*.js',
    'html/fonts/*.otf',
    'html/img/*',
}

escrow_ignore {
    'config/config.lua',
    'config/config_permissions.lua',
    'config/config_framework.lua',
    'config/translations.lua',
}

exports {
    'IsInRace',
    'IsInEditor',
}
dependency '/assetpacks'