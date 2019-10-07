local logger = require "resty.logger.socket"

if not logger.initted() then
    local ok, err = logger.init{
        host = "",
        port = 1234,
        flush_limit = 1,
        drop_limit = 10000
    }
    if not ok then
        ngx.log(ngx.ERR, "failed to initialize the logger: " ,err)
    end
end

local msg = string.format(.....)
local bytes, err = logger.log(msg)

if err then
    ngx.log(ngx.ERR, "failed to log message: ", err)
    return 
end

