local showJs = function (callback, data)
    local cjson = require("cjson")    
    ngx.say(callback .. '('.. cjson.encode(data)  .. ')')
end

local self.jsonp = self.args.jsonp

local keyList = string.splie(self.args.key_list, ",")

for i=1, #keyList do
    ngx.say(self.args.kind)
end

showJs(self.jsonp, valList)
