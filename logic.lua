a = 1
b = 2
print(a and b)  -- if a == false return a else return b
print(a or b)  -- if a then return a else return b
if not a then
  print(a)
else 
  print(b)
end

print(a or b)
v = 1
print([[4 and 5 is ]]  .. tostring(4 and 5))
print([[nil and 13 is ]]  .. tostring(nil and 13))
print([[false and 13 is ]]  .. tostring(false and 13))
print([[4 or 5 is ]]  .. tostring(4 or 5))
print([[false or 5 is ]]  .. tostring(false or 5))

x = x or v

if not x then
  x = v
end



d = (a and b) or c

-- d = a?b:c
--
--
print([[not null ]]  .. tostring(not nil))
print([[not false ]]  .. tostring(not false))
print([[not 0 ]]  .. tostring(not 0))
print([[not not null ]]  .. tostring(not not nil))
