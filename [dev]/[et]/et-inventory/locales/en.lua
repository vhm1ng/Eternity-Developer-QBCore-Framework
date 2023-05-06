--[[
English base language translation for et-inventory
Translation done by wanderrer (Martin Riggs#0807 on Discord)
]]--
local Translations = {
    progress = {
        ["crafting"] = "Đang chế tạo",
        ["snowballs"] = "Thu thập",
    },
    notify = {
        ["failed"] = "Thất bại",
        ["canceled"] = "Đã bị hủy",
        ["vlocked"] = "Xe bị khóa",
        ["notowned"] = "Bạn không sở hữu mặt hàng này!",
        ["missitem"] = "Bạn không có mặt hàng này!",
        ["nonb"] = "Không ai ở gần!",
        ["noaccess"] = "Không thể truy cập được",
        ["nosell"] = "Bạn không thể bán mặt hàng này",
        ["itemexist"] = "Vật phẩm không tồn tại ??",
        ["notencash"] = "Bạn không có đủ tiền mặt",
        ["noitem"] = "Bạn không có các mặt hàng phù hợp",
        ["gsitem"] = "Bạn không thể tự cho mình một món đồ?",
        ["tftgitem"] = "Bạn ở quá xa để đưa ra các mặt hàng!",
        ["infound"] = "Mục bạn đã thử không tìm thấy!",
        ["iifound"] = "Không tìm thấy, hãy thử lại!",
        ["gitemrec"] = "Bạn đã nhận được ",
        ["gitemfrom"] = " Từ ",
        ["gitemyg"] = "Bạn đã cho ",
        ["gitinvfull"] = "Hàng tồn kho người chơi khác đã đầy đủ!",
        ["giymif"] = "Kho đồ của bạn đã đầy!",
        ["gitydhei"] = "Bạn không có đủ mục",
        ["gitydhitt"] = "Bạn không có đủ các mặt hàng để chuyển",
        ["navt"] = "Không hợp lệ",
        ["anfoc"] = "Không chính xác",
        ["yhg"] = "Bạn đã cho ",
        ["cgitem"] = "Không thể đưa ra vật phẩm!",
        ["idne"] = "Vật phẩm không tồn tại",
        ["pdne"] = "Người chơi không trực tuyến",
    },
    inf_mapping = {
        ["opn_inv"] = "Mở Kho đồ",
        ["tog_slots"] = "Phím tắt",
        ["use_item"] = "Sử dụng mục trong phím tắt ",
    },
    menu = {
        ["vending"] = "Máy bán hàng tự động",
        ["craft"] = "Craft",
        ["o_bag"] = "Open Bag",
    },
    interaction = {
        ["craft"] = "~g~E~w~ - Chế tạo",
    },
    label = {
        ["craft"] = "Crafting",
        ["a_craft"] = "Chế tạo đính kèm",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
