fx_version 'cerulean'
game 'gta5'

description 'et-bossmenu'
version '2.1.0'

shared_scripts {
    '@et-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

server_exports {
    'AddMoney',
    'AddGangMoney',
    'RemoveMoney',
    'RemoveGangMoney',
    'GetAccount',
    'GetGangAccount',
    'AddMoneyOkokBanking',
    'RemoveMoneyOkokBanking',
    'TransferMoneyOkokBanking',
}

lua54 'yes'
