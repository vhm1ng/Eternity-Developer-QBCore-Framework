Config.WhitelistedCreators = {
    "license:a7f20b53252b5aa3594634afec39ced9e93a0222",
}

function CheckPlayerPermissions(source)
    local havePermissions = false

    for o,p in ipairs(Config.WhitelistedCreators) do
        for k,v in ipairs(GetPlayerIdentifiers(source)) do
            if v == p then 
                havePermissions = true
                break
            end
        end
    end
    return havePermissions
end