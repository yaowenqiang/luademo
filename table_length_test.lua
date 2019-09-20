--table.getn lua 5.3中已废弃
local tbTest1 = {1, a = 2, 3, nil, 4}
print("#(tbTest1)): " .. #(tbTest1))
print("table.getn: " , table.getn(tbTest1))

local tbTest2 = {1,nil}
print("#(tbTest2)): " .. #(tbTest2))
print("table.getn: " , table.getn(tbTest2))


local tbTest3 = {1,nil, 2}
print("#(tbTest3)): " .. #(tbTest3))
print("table.getn: " , table.getn(tbTest3))



local tbTest4 = {1,nil, 2, nil}
print("#(tbTestr)): " .. #(tbTest4))
print("table.getn: " , table.getn(tbTest4))

local tbTest5 = {1,nil, 2, nil, 3, nil}
print("#(tbTest5)): " .. #(tbTest5))
print("table.getn: " , table.getn(tbTest5))


local tbTest6 = {1,nil, 2, nil, 3, nil, 4, nil}
print("#(tbTest6)): " .. #(tbTest6))
print("table.getn: " , table.getn(tbTest6))
