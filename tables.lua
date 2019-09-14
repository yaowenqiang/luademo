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

