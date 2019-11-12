print("[")
print("[\"abc\"]")
print("[[\"abc\"]]")
print([[
[\[\"abc\"/]/]
]])
--[[
    heoo


]]--

content = [[
    "abc"
    'abc'
"abc'"
"abc"dfd"dfd''df'
]]
io.write(content)

--print("hello" + 1)


print(10 .. 20)


print(10 == "10")  -- false

print(10 == tonumber("10")) -- true

print("[10 == '10'] is " .. tostring((10 == "10")) )
print("[tostring(10) == '10'] is " .. tostring((tostring(10) == "10")) )
