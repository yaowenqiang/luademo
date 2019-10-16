local start = os.clock()

local function sum(...)
    local args = {...}
    local a = 0
    for k, v in pairs(args) do
        a = a + v
    end
    return a
end
local function test_unit()
    local a = {}
    for i= 1, 1000 do
        table.insert(a, i)
    end
end


for i = 1, 10 do
    for j = 1, 10000 do 
        test_unit()
    end
end

print(os.clock() - start)
