local a = {}
local table_insert = table.insert


for i= 1, 100 do
    table_insert(a, i)
end

local b = {}

for i = 1, 100 do
    b[i] = i
end


local c = {}
for i = 1, 100 do
    c[#a + i] = i
end

local d = {}
local index = 1

for i = 1, 100 do
    a[index] = i
    index = index + 1
end


local aa = {100, 200 ,300, 400}

for i = 1,100 do
    print(unpack(aa))
end


for i = 1,100 do
    print(aa[1], aa[2], aa[3], aa[4])
end




