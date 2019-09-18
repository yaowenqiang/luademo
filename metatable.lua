require "pl"
local mytable = {}
local mymetatable = {}
setmetatable(mytable, mymetatable)

local mytabl2 = setmetatable({},{})


local set1 = {10, 20, 30}
--pretty.dump(set1)
local set2 = {20, 40, 50}
--pretty.dump(set2)

local union = function (self, another)
    local set = {}
    local result = {}

    for i, j in pairs(self) do 
        set[j] = true 
        print(i, j)
        --pretty.dump(set1)
    end
    pretty.dump(set)
    for i, j in pairs(another) 
        do set[j] = true 
        --pretty.dump(set1)
    end
    pretty.dump(set)

    for i, j in pairs(set) do 
        table.insert(result, i) 
    end

    return result
end

setmetatable(set1, {__add = union})

local set3 = set1 + set2
for _, j in pairs(set3) do
    io.write(j .. " ")
end

print("\n")

mytable3 = setmetatable({key1 = "value1"}, 
{ __index = function(self,key) 
        if key == "key2" then
            return "metatablevalue"
        end
    end
})
print(mytable3.key1, mytable3.key2)



t = setmetatable({[1]="hello"}, {__index = {[2] = "world"}})

print(t[1], t[2])



arr = {1,2,3,4}

arr = setmetatable(arr, {__tostring = function(self)
    local result = "{" 
    local sep = ''
    for _, i in pairs(self) do
        result = result .. sep .. i
        sep = ', '
    end

    result = result .. '}'
    return result
end})


print(arr)



functor = {}

function func1(self, arg)
    print("called from" , arg)
end

setmetatable(functor, {__call = func1})

functor("functor")
print(functor)

pretty.dump(functor)


object = setmetatable({}, {__metatable="You cannot access here"})

print(getmetatable(object))
setmetatable(object, {})

