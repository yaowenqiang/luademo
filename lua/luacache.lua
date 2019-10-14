local _M = {}
local lrucache = require "resty.lrucache"

local c = lrucache.new(300)
if not c then
    return error("failed to create the cache : " .. (err or "unknown"))
end

function _M.go()
    c:set("dog", 32)
    c:set("cat", 56)
    ngx.say("dog:", c.get("dog"))
    ngx.say("cat:", c.get("cat"))

    c:set("dog", {age = 10}, 0.1)
    c.delete("dog")
end
return _M
