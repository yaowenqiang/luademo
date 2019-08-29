print("hello world")

print(type("hello world"))
print(type(print))
print(type(true))
print(type(368.0))
print(type(nil))
local num
print(num)
num = 500
print(num)

local a = true

local b = 0 
-- 0 和nil 为 true

local c = nil

local d = ''

if a then
    print("a")
else
    print("not a")

end

if b then
    print("b")
else
    print("not b")
end

if c then
    print("c")
else
    print("not c")
end



if d then
    print("d")
else
    print("not d")
end



local order = 3.99
local score = 98.01
print(math.floor(order))
print(math.floor(score))

--print(9223372036854775807LL -1)

local str1 = 'hello world'
local str2 = "hello lua"
local str3 = [["add\name", "hello"]]
local str4 = [=[string have a [[]]]=]
print(str1)
print(str2)
print(str3)
print(str4)
