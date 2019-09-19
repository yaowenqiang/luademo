require("pl")
local account = require("account")

local a = account:new()
pretty.dump(a)
-- 调用函数刻要用:
a:deposit(100)

-- 调用函数刻要用:
local b = account:new()
b:deposit(50)

print(a.balance)
print(b.balance)
