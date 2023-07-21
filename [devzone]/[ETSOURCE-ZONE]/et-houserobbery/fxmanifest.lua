fx_version 'cerulean'
game 'gta5'

description 'et-HouseRobbery'
version '1.2.0'

shared_scripts {
    'config.lua',
    '@et-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

client_script 'client/main.lua'
server_script 'server/main.lua'

dependencies {
    'et-lockpick',
    'et-skillbar'
}

lua54 'yes'
