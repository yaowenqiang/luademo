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

print(string.reverse("abc"))

local find = string.find

print(find("abc cba", "ab"))
print(find("abc cba" ,"ab", 2))
print(find("abc cba", "ba", -1))
print(find("abc cba", "ba", -3))
print(find("abc cba", "(%a+)", 1))
print(find("abc cba", "(%a+)", 1, true))

print(string.format("%.4f", 3.141592653))
print(string.format("%d %x %o", 31,31,31))

d = 29; m = 7; y = 2015

print(string.format("%s %02d/%02d/%d", "today is : ", d, m ,y))

print(string.match("hello lua", "lua"))
print(string.match("lua lua", "lua", 2))
print(string.match("today is 27/7/2015", "%d+/%d+/%d+"))


s = "hello world from lua"

for w in string.gmatch(s, "%a+") do
    print("gmatch: " .. w)
end

t = {}
s = "from=world, to=Lua"
for k, v in string.gmatch(s, "(%a+)=(%a+)") do
    t[k] = v
end

for k, v in pairs(t) do
    print(k, v)
end

print(string.rep("ABC", 3))

print("string.sub('hello lua', 4,7) : " .. string.sub("hello lua", 4,7))
print("string.sub('hello lua', 2) : " .. string.sub("hello lua", 2))
print("string.sub('hello lua', 2, 1) : " .. string.sub("hello lua", 2, 1))
print("string.sub('hello lua', -3, -1)) : " .. string.sub("hello lua", -3, -1))

print("string", string.gsub("Lua Lua Lua", "Lua", "hello"))
print("string", string.gsub("Lua Lua Lua", "Lua", "hello", 2))

print(string.reverse("hello lua"))
