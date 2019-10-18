local limit_conn = require "resty.limit.conn"

local limit, limit_err = limit_conn.new("limit_conn_storm", 10,2, 0.05)

if not limit then
    error("failed to instantiate a resty.limit.conn object:", limit_err)
end


local _M = {}

function _M.incoming()
    local key = ngx.var.binary_remote_addr
    local delay, err = limit:incoming(key, true)

    if not delay then
        if err == "rejected" then
            return ngx.exit(503)
        end
        ngx.log(ngx.ERR, "failed to limit req: ", err)
        return ngx.exit(500)
    end

    if limit:is_commited() then
        local ctx = ngx.ctx
        ctx.limit_conn_key = key
        ctx.limit_conn_delay = delay
    end

    if delay >= 0.001 then
        ngx.log(ngx.WARN, "delaying conn, excess ", delay,
            "s per binary_remote_addr by limit_con_store")
        ngx.sleep(delay)
    end
end
function _M.leaving()
    local ctx = ngx.ctx
    local key = ctx.limit_conn_key

    if key then
        local latency = tonumber(ngx.var.request_time) - ctx.limit_conn_delay
        local conn, err = limit:leaving(key, latency)
        if not conn then
            ngx.log(ngx.ERR, "failed to record the connection leaving ", "request: ", err)
        end
    end
end


return _M
