local person = {name = "Bob", sex = "M"}

print(person.name)

person = nil

--print(person.name) will produce an error

if person ~= nil and person.name ~= nil then

    print(person.name)
end


local next = next

local a = {}

local b  = {name = "Bob", sex = "Male"}

local c ={ "Male", "Female"}

local d = nil

print("#a", #a)
print("#b", #b)
print("#c", #c)

--print("#d", #d) error

if a == nil then
    print("a == nil ")
end


if b == nil then
    print("b == nil")
end

if c == nil then
    print("c == nil")
end
if d == nil then
    print("d == nil")
end

if next(a) == nil then
    print("next(a) == nil")
end

if next(b) == nil then
    print("next(b) == nil")
end
if next(c) == nil then
    print("next(c) == nil")
end

--if next(d) == nil then error will occur
--    print("next(d) == nil")  
--end

function isTableEmpty(t)
    return t == nil or next(t) == nil
end
