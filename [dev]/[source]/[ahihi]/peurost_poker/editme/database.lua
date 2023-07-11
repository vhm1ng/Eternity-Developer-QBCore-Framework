Database = {
    fetchSync = function(query, params)
        return exports.oxmysql:executeSync(query, params)
    end,

    executeSync = function(query, params)
        return exports.oxmysql:executeSync(query, params)
    end,

    insert = function(query, params, callback)
        exports.oxmysql:insert(query, params, callback)
    end,

    execute = function(query, params, callback)
        exports.oxmysql:execute(query, params, callback)
    end
}