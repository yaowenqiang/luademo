local user_script = [[
    local a = 0
    local rand = math.random
    for i = 1, 200 do
        a = a + rand(i)
    end
    ngx.say("hi")

]]

local function handle_timeout(typ)
    return error("user script too hot")
end
 
local function handle_error(err)
    return string.format("%s: %s", err or "", string.traceback())
end

user_script = [[jit.off(true,true)]] .. user_script

local f, err = loadstring(user_script, "- user script")
if not f then
    ngx.say("ERROR: failed to laod user script:", err)
    return
end

local env = {
    math = math,
    ngx = {say = ngx.say},
    jit = {off = jit.off},
}
setenv(f, env)

local instruction_limit = 1000
debug.sethook(handle_timeout, "", instruction_limit)

local ok, err = xpcall(f, handle_error)

if not ok then
    ngx.say("failed to run user script:", err)
end

debug.sethook()


