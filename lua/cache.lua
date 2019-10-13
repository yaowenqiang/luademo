local _M = {}
function _M.get_from_cache(key)
    local cache_ngx = ngx.shared.my_cache
    local set_value = "set_value"
    local succ, err, forcible = cache_ngx:set(key, set_value ,exptime)
    local value = cache_ngx:get(key)
    return value
end

function _M.set_to_cache(key ,value ,xeptime)
    if not exptime then
        exptime = 0
    end

    local cache_ngx = ngx.shared.my_cache
    local succ, err, forcible = cache_ngx:set(key, value ,exptime)
    return succ
end

return _M
