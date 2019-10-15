local delay = 5
local handler

handler = function (premature)
    if premature then
        return

    end

    local ok, err = ngx.timer.at(delay, handler)

    if not ok then
        ngx.log(ngx.ERR, "failed to create the timer ", err)
        return
    end
end

local ok, err = ngx.timer.at(delay, handler)

if not oke then
    ngx.log(ngx.ERR, "failed to create the timer: ", err)
    return
end


