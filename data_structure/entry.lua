local count = 0
function Entry(b)
    count = count + 1
end
dofile("./data.lua")
print("number of entries: " .. count)