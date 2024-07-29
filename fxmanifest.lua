fx_version 'cerulean'
game 'gta5'
author 'PFMD'
github 'https://github.com/PFMD-dev'
tebex 'https://pfmd-shop.tebex.io/'
version '1.0.1'
lua54 'yes'


client_scripts {
    'client/*.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/*.lua',
}
files {
    'locales/*.json'
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    '@es_extended/imports.lua',
}
