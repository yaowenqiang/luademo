local start , finish = string.find("hello", "he")

print(start,finish)

local start = string.find("hello", "he")

print(start)

local _, finish = string.find("hello", "he")
print(finish)

print(_)


local t = {1,3,5}

for i, v in ipairs(t) do
    print(i,v)
end

for i, v in pairs(t) do
    print(i,v)
end


for _, v in pairs(t) do
    print(v)
end


function foo()
    return 1,2,3,4
end

local _, _, bar = foo()
print(bar)
