--luarocks install penlight
require "pl"
local color = {first="red", "blue", third="green", "yellow"}

print(color["first"])
print(color[1])
print(color[0])
print(color[-1])
print(color["third"])
print(color[2])
print(color[3])
print(color[33])


local tbTest1 = {1, a=2, 1}
--print("Test1 length:" .. table.getn(tbTest1))
print("Test1 length:" .. (#tbTest1))

local table2 = {1,nil}
print("Test2 " .. table.getn(table2))
print("Test2 " .. (#table2))

local table3 = {1,nil,2}
print("Test3 " .. table.getn(table3))
print("Test3 " .. (#table3))

local table4 = {1,nil,2, 3, nil, 4}
print("Test4 " .. table.getn(table4))
print("Test4 " .. (#table4))



local tb1 = {}
print({#tb1})
print(table.getn{tb1})
print({tb1[1]})

local tb2 = {0}
print({tb2[1]})


local a = {1,3,4,"hello"}

--table.concat

print(table.concat(a))
print(table.concat(a,"|"))
print(table.concat(a,'|'))
print(table.concat(a,' ', 2,4))
print(table.concat(a,' ', 4,2))

--table.insert


local b = {1,0}
table.insert(b, 1,3)
print(b[1],b[2],b[3])
table.insert(b, 10)
print(b[1],b[2],b[3], b[4])


--table.maxn

local a = {}
a[-1] = 10
print(table.maxn(a))
a[5] = 10
print(table.maxn(a))
a[6] = nil
print(table.maxn(a))

--table.remove

local a = {1,2,3,4}
print(table.remove(a,1))
print(a[1],a[2],a[3], a[4])
print(table.remove(a))
print(a[1],a[2],a[3], a[4])

--table.sort

local function compare(x,y)
    return x > y    
end

local a = {1,7,3,4,5,6,5,4,3}
print("beforea sort ;")
pretty.dump(a)
print("after sort ;")
table.sort(a)
pretty.dump(a)

table.sort(a, compare)
pretty.dump(a)
