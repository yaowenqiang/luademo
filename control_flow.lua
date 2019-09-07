x = 10
if x > 0 then
    print("x is a positive number")
    else
    print("X is an non-positive number")
end

score = 90

if score == 90 then
	print("Very good! Your score is 100")
elseif score > 60 then
	print("Congratulations!, you have passed it, your score greater or equal to 60")
else
	print("Sorry, you do not pass the exam!")
end


sum = 0
while x < 100 do
	sum = sum + x
	x = x+1
end

print(sum)



local t = {1,2,3,4,5,6,7,8,11,15}

local i;
for i ,v in ipairs(t) do
	if 11 == v then
		print("index[" .. i .. "] have right value[11]")
		break;
		--continue
	end
end

x = 100

repeat
    print(x)
    x = x -1
until x < 50
-- untill condition is false the repeat will stop


for i=1,10 do
    print(i)
end

for i=1,10, 5 do
    print(i)
end


--for i=1,math.huge do
--    print(i)
--end


local a = {"a","b","c","d","e"}
print("type(a): ", type(a))
for i, v in ipairs(a) do
    print("index:", i, " value:", v)
end


local b = {a="a","b","c","d","e"}
for k in pairs(b) do
    print("key:", k)
end


local days = {
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "thursday",
    "friday",
    "Saturday"
}

local revDays = {}

for k, v in pairs(days) do
    revDays[v] = k
end

for k, v in pairs(revDays) do
    print("k:", k ," v:", v)
end

sum = 0;
i = 1;
while true do
    sum = sum + 1
    if sum > 100 then
        break;
    end

    i = i + 1
end
print("The result is " .. i)



for i = 1, 3 do
    if i <= 2 then
        print(i, "yes continue")
        goto continue
    end

    print(i, "no continue")

    ::continue::


    print[[i'am end]]
end

local function process(input)
    print("The input is ", input)
    if input < 2 then
        goto failed     
    end
    print("processing")

    do return end
    ::failed::
    print("handle error with input", input)
end


process(1)
process(2)

