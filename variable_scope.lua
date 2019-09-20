x = 10
local i = 1
while i <=x  do
    local x = i * 2
    print(x)
    i = i +1
end

if i > 20 then
    local x
    x = 20
    print("local x")
    print(x + 2)
else
    print("global x")
    print(x)
end

print("global x")
print(x)
