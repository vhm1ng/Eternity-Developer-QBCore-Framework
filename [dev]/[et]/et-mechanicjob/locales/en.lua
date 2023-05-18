local Translations = {
    labels = {
        engine = 'Động cơ',
        bodsy = 'Thân vỏ',
        radiator = 'Bộ tản nhiệt',
        axle = 'Trục truyền động',
        brakes = 'Phanh',
        clutch = 'Bộ ly hợp',
        fuel = 'Nhiên liệu',
        sign_in = 'Bắt đầu công việc',
        sign_off = 'Kết thúc công việc',
        o_stash = '[E] Mở kho lưu trữ',
        h_vehicle = '[E] Cất xe',
        g_vehicle = '[E] Lấy xe',
        o_menu = '[E] Mở Menu',
        work_v = '[E] Làm việc trên xe',
        progress_bar = 'Đang sửa chữa...',
        veh_status = 'Tình trạng xe:',
        job_blip = 'Thợ sửa xe',
    },

    lift_menu = {
        header_menu = 'Bảng tùy chọn',
        header_vehdc = 'Dừng sửa xe',
        desc_vehdc = 'Tháo từng bộ phận xe',
        header_stats = 'Kiểm tra trạng thái phương tiện',
        desc_stats = 'Kiểm tra tình trạng phương tiện',
        header_parts = 'Phụ tùng xe',
        desc_parts = 'Sửa chữa phụ tùng xe',
        c_menu = '⬅ Đóng Menu',
    },

    parts_menu = {
        status = 'Trạng thái:',
        menu_header = 'Menu',
        repair_op = 'Sửa chữa:',
        b_menu = '⬅ Quay lại Menu',
        d_menu = 'Quay lại menu phần',
        c_menu = '⬅ Đóng Menu',
    },

    nodamage_menu = {
        header = 'Không hư hại',
        bh_menu = 'Quay lại Menu',
        bd_menu = 'Phần này không bị hư hại!',
        c_menu = '⬅ Đóng Menu',
    },

    notifications = {
        not_enough = 'Bạn không đủ nguyên liệu',
        not_have = 'Bạn không có',
        not_materials = 'Bạn không có đủ nguyên liệu trong kho',
        rep_canceled = 'Dừng sửa chữa',
        repaired = 'Đã sửa chữa!',
        uknown = 'Không xác định',
        not_valid = 'Phương tiện không hợp lệ',
        not_close = 'Bạn không đứng gần xe',
        veh_first = 'Bạn phải lên xe trước',
        outside = 'Bạn phải đứng ngoài xe',
        wrong_seat = 'Bạn không phải là người lái xe hoặc ngồi trên xe đạp',
        not_vehicle = 'Bạn không ở trong xe',
        progress_bar = 'Đang sửa xe...',
        process_canceled = 'Hủy sửa xe',
        not_part = 'Phần không hợp lệ',
        partrep =' %{value} đã được sửa chữa',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})