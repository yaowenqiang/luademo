require "pl"
print(os.time())
a = {year = 1970, month=1, day=1, hour=8, min=1}
--pretty.dump(a)
print(os.time(a))

local day1 = {year= 2015, month=7, day=30}
local t1 = os.time(day1)

local day2 = {year= 2015, month=7, day=31}
local t2 = os.time(day2)

print(os.difftime(t2,t1))

local tab1 = os.date("*t")
print("os.date('*t') =")
pretty.dump(tab1)

local ansi = "{"
for k, v in pairs(tab1) do
    ansi = string.format("%s %s = %s,", ansi, k, tostring(v))
end


ansi = ansi .. "}"

pretty.dump(ansi)

local tab2 = os.date("*t", 360)
print("os.date('*t', 360) = ")
pretty.dump(tab2)

pretty.dump(os.date("today is %A, in %B"))
pretty.dump(os.date("now is %x %X"))
