local ngx_socket_tcp = ngx.socket.tcp

local _M = {_VERSION = "0.06"}
local mt = {__index = _M}

function _M.new(self)
   local sock, err = ngx_socket_tcp()
   if not sock then
       return nil, err
   end
   return setmetatable({sock =sock}, mt)
end

function _M.set_timeout(self, timeout)
    local sock = self.sock
    if not sock then
        return nil, "not initialized"
    end
    return sock:settimeout(timeout)
end

return _M


