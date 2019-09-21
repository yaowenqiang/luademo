local s = "hello world"
local i, j = string.find(s, "hello")
print(i,j)

for w in string.gmatch(s, "%a+") do
    print(w)
end


local a = "lua is cool"
local b = string.gsub(a, "cool","super cool")
print(a)
print(b)

print(string.gsub("a (enclosed (in) parentheses) line", "%b()", ""))
