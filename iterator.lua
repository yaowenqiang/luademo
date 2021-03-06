function list_iter(t)
    local i = 0
    local n = table.getn(t)
    return function ()
      i = i + 1 
      if i <=n then return t[i] end
    end
end


t = {1,2,3}

iter = list_iter(t)

while true do
    local element = iter()
    if element == nil then break end
    print(element)
end


t = {10, 20, 30}

for element in list_iter(t) do
    print(element)
end


function allwords()
    local line = io.read()
    local pos = 1
    return function ()
        while line do
            local s,e = string.find(line, "%w+", pos)
            if s then
              pos = e + 1
              return string.sub(line, s, e)
            else
              line = io.read()
              pos = 1
            end
        end
        return nil
    end

end


--for word in allwords() do
  --print(word)
--end


a = {"one", "two", "three"}

for i, v in ipairs(a) do
  print(i, v) 
end

function iter (a, i)
  print("iter")
  i = i + 1
  local v = a[i]
  if v then
    return i , v
  end
end

function ipairs2(a)
  return iter, a , 0
end


for i, v in ipairs2(a)  do
  print(i, v)
end




for i, v in next , a do
  print(i, v)
end



local iterator

function allwords2()
  local state = {line = io.read(), pos = 1}
  return iterator, state
end

function iterator(state)
    while state.line do
        local s, e = string.find(state.line, "%w+", state.pos)
        if s then
            print("find " ..  s)
            state.pos = e + 1
            return string.sub(state.line, s, e)
        else
            state.line = io.read()
            state.pos = 1
        end
    end

    return nil

end
--for word in allwords2() do
 -- print(word)
--end


function allwords3(f)
    for l in io.lines() do
      print( "---" .. l .. "---")
        if l == ""  then return end
        for w in string.gfind(l, "%w+") do
            f(w)
        end
        
    end

end

--allwords3(print)

local count = 0
allwords3(function(w) 
    if w == "hello" then
        count = count + 1
    end
end)

print(count)




function dofile (filename)
    local f = assert(loadfile(filename))
    return f()
end

f = loadstring("i = i + 1")
i = 1;
f()
print(i)
f()
print(i)

print(loadstring("i i"))

ff = loadfile("foo1.lua")
ff()
foo(1)
