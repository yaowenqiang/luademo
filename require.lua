print(loadlib())

local path = "/usr/local/lua/lib/libluasocket.so"
local f = assert(loadlib(pa"luaopen_socket"))

f()

