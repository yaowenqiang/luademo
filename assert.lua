print("enter a number")
n = io.read("*number")
if not n then error("invalide input") end

print("enter a number")
m = assert(io.read("*number"), "invalid input")


--if not tonumber('abc') then 
--  error("wrong ")
--end
--assert(math.sin("abc"))


local file, msg

repeat

  print "enter a file name:"
  local name = io.read()

  if not name then return end
  file, msg = io.open(name, "r")

  if not file then print(msg) end
until file


file = assert(io.open(io.read(), "r"))

function pcall_foo()
  assert(1 > 5)
    --io.open("ffff")
end

if pcall(pcall_foo) then
   print("success") 
   else
     print("fall")
end


if (pcall(function() print("pcall") end)) then end

