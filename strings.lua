print("Hello " .. "Wrodl")

print(0 .. 1)

str1 = string.format("%s-%s", "hello" ,"world")
print(str1)

str2 = string.format("%d-%s-%.2f", 123, "world", 1.23)
print(str2)


my_list = {
    "hello",
    "world"
}
local places = {}
for i, elem in ipairs(my_list) do
    --places[i] = my_process(elem)
    places[i] = elem
end

local res = table.concat(places)

print(res)
