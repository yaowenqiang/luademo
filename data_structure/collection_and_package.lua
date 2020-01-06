-- reserved = {
--     ["while"] = true,
--     ["end"] = true,
--     ["function"] = true,
--     ["local"] = true
-- }

-- for w in allwords() do
--     if reserved[w] then

--     end
-- end

-- function Set(list)
--     local set = {}
--     for _, l in ipairs(list) do
--         set[l] = true
--     end
--     return set
-- end

-- reserved = Set{"while","end","function","local"}



function newStack()
    return {""}
end

function addString(stack, s)
    table.insert( stack, s )
    for i=table.getn(stack)-1,1, -1 do
        if string.len(stack[i]) > string.len(stack[i + 1]) then
            break
        end
        stack[i] = stack[i] .. table.remove[stack]
    end
end


local s = newStack()
for line in io.lines() do
    line = line .. "\n"
    addString(s, line )
end

s = toString(s)