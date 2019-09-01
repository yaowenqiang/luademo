local function foo()
    print("in the function")

    --dosomething

    local x = 10
    local y = 100
    return x + y
end

local a = foo

print(a())



function foo()

end


bar = function ()
end


-- 表达式


print(1 + 2)

print(5 / 10)

print(5.0 / 10)

print(10 / 0)

print(2^10)

local num = 1357

print(num %2)
print((num % 2) == 1)
print((num % 5) == 0)



local a = {x = 1, y = 0}
local b = {x = 1, y = 0}

if a == b then
    print("a == b")
else
    print("a ~= b")
end



local c = nil
local d = 0
local e = 100
-- and :  if a is nil, return a else return b 
-- or  :  if a is nil, return b else return a 
print("c and d ", c and d)
print("c and e ", c and e)
print("d and e", d and e)
print("c or d", c or d)
print("c or e", c or e)
print("d or e", d or e)
print("not c", not c)
print("not d", not d)
print("not e", not e)

if 0 then
    print("0 is true")
else
    print("0 is false")
end

if "" then
    print("'' is true")
else
    print("'' is false")
end

if nil then
    print("nil is true")
else
    print("nil is false")
end
