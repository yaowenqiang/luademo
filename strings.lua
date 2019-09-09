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

print(string.byte("abc", 1,2))
print(string.byte("ABC", 1))
print(string.byte("ABC"))


print(string.char(96,97,98))
print(string.char())
print(string.char(65,66))

print(string.upper('Hello lua'))

print(string.lower("Hello lua"))

print(string.len("Hello lua"))
print(string.len("你"))   -- 一个汉字3字节
