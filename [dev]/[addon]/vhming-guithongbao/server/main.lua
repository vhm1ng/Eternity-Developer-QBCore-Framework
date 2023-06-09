local QBCore = exports['et-core']:GetCoreObject()
QBCore.Commands.Add('guithongbao', 'Gửi thông báo tới tất cả mọi người', { { name = 'Nội dung', help = 'Nhập nội dung muốn gửi tới' } }
    ,
    false,
    function(source, args)
        if #args < 1 then TriggerClientEvent('QBCore:Notify', source, Lang:t('error.missing_args2'), 'error') return end
        local msg = table.concat(args, ' '):gsub('[~<].-[>~]', '')
        TriggerClientEvent('guiThongBao', -1, msg)
    end, 'admin')
