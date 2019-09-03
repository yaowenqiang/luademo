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

