print("enter your expression")
local l = io.read()

local func = assert(loadstring("return " .. l))

print("the value of your expression is " .. func())


print("Enter function to plotted (with variable 'x'):")

local i = io.read()
local f = assert(loadstring("return " .. i))
for i=1, 20 do
  x = i
  print(string.rep('*', f()))
end
