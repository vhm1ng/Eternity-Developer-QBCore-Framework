local Translations = {
    error = {
        not_online = 'Người chơi đã về quê',
        wrong_format = 'Định dạng không chính xác',
        missing_args = 'Không phải mọi đối số đã được nhập (x, y, z)',
        missing_args2 = 'Tất cả các đối số phải được điền vào!',
        no_access = 'Có admin đâu mà đỏi hỏi???',
        company_too_poor = 'Chủ nhân của bạn bị phá sản',
        item_not_exist = 'Vật phẩm không tồn tại',
        too_heavy = 'Kho đồ bạn quá đầy',
        location_not_exist = 'Vị trí không tồn tại',
        duplicate_license = 'Đã tìm thấy giấy phép Rockstar trùng lặp',
        no_valid_license  = 'Không tìm thấy giấy phép Rockstar hợp lệ',
        not_whitelisted = 'Bạn không có trong WHITELIST cho máy chủ này',
        server_already_open = 'Máy chủ đã được mở',
        server_already_closed = 'Máy chủ đã tắt',
        no_permission = 'Bạn không có quyền OK ?',
        no_waypoint = 'No Waypoint Set.',
        tp_error = 'Lỗi Khi Dịch Chuyển.',
        connecting_database_error = '[LỖI SERVER] Đã xảy ra lỗi cơ sở dữ liệu khi kết nối với máy chủ. (Máy chủ SQL có bật không? Đéo hả ra mở đi ?)',
        connecting_database_timeout = '[LỖI SERVER] Hết thời gian kết nối với cơ sở dữ liệu. (Máy chủ SQL có bật không? Đéo hả ra mở đi ?)',
    },
    success = {
        server_opened = 'Máy chủ đã được mở',
        server_closed = 'Máy chủ đã bị đóng',
        teleported_waypoint = 'Đã dịch chuyển đến Waypoint.',
    },
    info = {
        received_paycheck = 'Bạn đã nhận được tiền lương của bạn $%{value}',
        job_info = 'Job: %{value} | Grade: %{value2} | Duty: %{value3}',
        gang_info = 'Gang: %{value} | Grade: %{value2}',
        on_duty = 'Bây giờ bạn đã vào ca!',
        off_duty = 'Bây giờ bạn đã tan ca!',
        checking_ban = 'Xin chào %s. Chúng tôi đang kiểm tra tiền sử tiền án của bạn.',
        join_server = 'Chào mừng %s đến với {Server Name}.',
        checking_whitelisted = 'Xin chào %s. Chúng tôi đang kiểm tra bạn có đa nhân cách không.',
        exploit_banned = 'Hack cái con cặc bố mày ban. Ngu như chó hack cc: %{discord}',
        exploit_dropped = 'Bạn đã bị đá vì bóc lột',
    },
    command = {
        tp = {
            help = 'TP To Player or Coords (Admin Only)',
            params = {
                x = { name = 'id/x', help = 'ID of player or X position'},
                y = { name = 'y', help = 'Y position'},
                z = { name = 'z', help = 'Z position'},
            },
        },
        tpm = { help = 'TP To Marker (Admin Only)' },
        togglepvp = { help = 'Toggle PVP on the server (Admin Only)' },
        addpermission = {
            help = 'Give Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        removepermission = {
            help = 'Remove Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        openserver = { help = 'Open the server for everyone (Admin Only)' },
        closeserver = {
            help = 'Close the server for people without permissions (Admin Only)',
            params = {
                reason = { name = 'reason', help = 'Reason for closing (optional)' },
            },
        },
        car = {
            help = 'Spawn Vehicle (Admin Only)',
            params = {
                model = { name = 'model', help = 'Model name of the vehicle' },
            },
        },
        dv = { help = 'Delete Vehicle (Admin Only)' },
        givemoney = {
            help = 'Give A Player Money (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        setmoney = {
            help = 'Set Players Money Amount (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        job = { help = 'Check Your Job' },
        setjob = {
            help = 'Set A Players Job (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                job = { name = 'job', help = 'Job name' },
                grade = { name = 'grade', help = 'Job grade' },
            },
        },
        gang = { help = 'Check Your Gang' },
        setgang = {
            help = 'Set A Players Gang (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                gang = { name = 'gang', help = 'Gang name' },
                grade = { name = 'grade', help = 'Gang grade' },
            },
        },
        ooc = { help = 'OOC Chat Message' },
        me = {
            help = 'Show local message',
            params = {
                message = { name = 'message', help = 'Message to send' }
            },
        },
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
