local limit_conn = require "utils.limit_conn"

if ngx.req.is_internal() then
    return
end

limit_conn.incoming()
