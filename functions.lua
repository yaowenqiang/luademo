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


local function max(a, b)
    local temp = nil;
    if (a > b) then
        temp = a
    else
        temp = b
    end
    return temp
end

local m = max(-12,20)
print(m)


local function swap(a, b)
    local temp = a;
    a = b;
    b = temp;
    print(a, b)
end

local x = "hello"
local y = 20
print(x, y)
swap(x,y)
print(x,y)



local function fun1(a, b)
    print(a,b)
end

local function fun2(a,b,c,d)
    print(a,b,c,d)
end

local x = 1;
local y = 2;
local z = 3;

fun1(x,y,z)
fun2(x,y,z)


local function fun3(...)
    local temp = {...}
    local ans = table.concat(temp, " ")
    print(ans)
end

fun3(1,2)
fun3(1,2,3,4)


local function change(arg)
   arg.width = arg.width * 2
   arg.height = arg.height * 2
   return arg
end

local rectangle = {width = 10, height = 100}
print("before change:","width = ",  rectangle.width,
                        "height = ", rectangle.height 
    )
rectangle = change(rectangle)

print("after  change:","width = ",  rectangle.width,
                        "height = ", rectangle.height 
    )


function change2(arg)
    arg.width = arg.width * 2
    arg.height = arg.height * 2
end

local rectangle2 = {width = 100, height = 200}
print("before change:","width = ",  rectangle2.width,
                        "height = ", rectangle2.height 
    )
change2(rectangle2)

print("after  change:","width = ",  rectangle2.width,
                        "height = ", rectangle2.height 
    )

local s, e = string.find("hello world", "llo")
print(s,e)

local function swap3(a,b)
    return b,a
end

local x = 1
local y = 2
x ,y = swap3(x,y)
print(x,y)

function init()
    return 1, "lua"
end

x = init()
print(x)

x ,y ,z = init()
print(x,y,z)


local x y, z = init(), 2
print(x,y,z)


local function init()
    return 1, "lua"
end

print(init(), 2)
print((init()), 2)
print(2, init())
print(2, (init()))

local args = {} or {}
--method_name(unpack(args, 1 ,table.maxn(args)))

local function add_task(end_time, callback, params)
end

    

--if os.time() >= endTime then
    --callback(unpack(params, 1, table.maxn(params)))
--end


local function run(x, y)
    print("run", x,y)
end


local function attach(targetId)
    print("targetId", targetId)
end

local function do_action(method, ...)
    local args = {...} or {}
    method(unpack(args, 1, table.maxn(args)))
end

do_action(run, 1,2)
do_action(attach, 1111)



local t = {nil, 3, a = "b","c"}
print(unpack(t))


print "hello world"

print [[
  a multi-line
  message
]]




function f(arg) 
  print(arg.x)
end


f{x=10, y = 20}
f({x=10, y = 20})
print(type{})
print(type({}))

function ff(a,b) return a or b end

print(ff(3))
print(ff(3, 4))
print(ff(3,4, 5))



function maxinum(a)
  local mi = 1
  local m = a[mi]
  for i, val in ipairs(a) do
    if val > m then
      mi = i
      m = val
    end
  end
  return m, mi
end

a, b = maxinum({1,2,5, 7, 9, 3,4})

print("a ", a)
print("b ", b)

print(maxinum({1,2,5, 7, 9, 3,4}))



function foo0 () end
function foo1() return 'a' end
function foo2() return 'a', 'b' end
function foo3() return 'a', 'b', 'c' end


print(foo())
print(foo1())
print(foo2())
print(foo2(), 1)
print(foo2() .. "x")
print(foo3() .. "x")
print(foo3() , 4, 5)

print(tostring(foo2()))



aa = {foo0()}
print(aa)

ab = {foo0()} -- {}
ac = {foo1()} -- {'a'}
ac = {foo2()} -- {'a', 'b'}
ad = {foo0(), foo1(), foo2(), 4} -- {nil, "a", "b", 4}


function foo(i) 
    if i == 1 then return foo1() 
      elseif 2 == i then return foo2() 
      elseif 3 == i then return foo3() 
    end
end
print(foo(1)) --a
print(foo(2)) --a b
print(foo(3)) -- a b c 

print((foo(1))) --a
print((foo(2))) --a 
print((foo(3))) -- a  


f = string.find
a = {"hello", "ll"}

print(f(unpack(a)))



function my_unpack(t ,i) 
    i = i or 1
    if t[i] then
      return t[i] , unpack(t ,i+1)
    end
end


print(f(my_unpack(a)))



printResult = ""
function my_print(...)
    for i, v in ipairs(arg) do
      printResult = printResult .. tostring(v) .. "\t"
    end

    printResult = printResult .. "\n"
end
my_print('a', 'b', 'c', 'd',' e')

my_unpack('a', 'b', 'c')
print(printResult)
