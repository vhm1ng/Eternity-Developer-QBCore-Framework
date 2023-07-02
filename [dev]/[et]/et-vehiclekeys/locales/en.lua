local Translations = {
    notify = {
        ydhk = 'Bạn không có chìa cho phương tiện này.',
        nonear = 'Không có người ở gần để đưa chìa.',
        vlock = 'Khóa xe!',
        vunlock = 'Mở khóa xe!',
        vlockpick = 'Bạn đang mở khóa cửa xe!',
        fvlockpick = 'Thất bại.',
        vgkeys = 'Bạn đã đưa chìa khóa xe.',
        vgetkeys = 'Bạn nhận được chìa khóa xe!',
        fpid = 'Điền nội dung ID và Biển số',
        cjackfail = 'Phá khóa xe thất bại!',
        vehclose = 'Không có phương tiện ở gần!',
    },
    progress = {
        takekeys = 'Đang lấy chìa khóa...',
        hskeys = 'Đang tìm chìa khóa...',
        acjack = 'Đang phá khóa...',
    },
    info = {
        skeys = '~g~[H]~w~ - Tìm chìa khóa',
        tlock = 'Toggle Vehicle Locks',
        palert = 'Đang cướp xe. Type: ',
        engine = 'Toggle Engine',
    },
    addcom = {
        givekeys = 'Hand over the keys to someone. If no ID, gives to closest person or everyone in the vehicle.',
        givekeys_id = 'id',
        givekeys_id_help = 'Player ID',
        addkeys = 'Adds keys to a vehicle for someone.',
        addkeys_id = 'id',
        addkeys_id_help = 'Player ID',
        addkeys_plate = 'plate',
        addkeys_plate_help = 'Plate',
        rkeys = 'Remove keys to a vehicle for someone.',
        rkeys_id = 'id',
        rkeys_id_help = 'Player ID',
        rkeys_plate = 'plate',
        rkeys_plate_help = 'Plate',
    }

}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
