for i = 0,10, 1 do
    print("for " .. i)
end

i =  0;
while i < 10 do
    print("while " ..  i)
    i  = i + 1
end

for i = 10, 1, -1 do
    print("for " .. i)
end

local days = {
  "Sunday",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",

}

local newDays = {};
for i, v in ipairs(days) do
  newDays[i] = v
end

for i, v in pairs(newDays) do
    print(newDays[i])
end


for i=1, 10, 1 do
    if i == 5 then print(i) break end
end


function foo()
  --return

  --print("i am not done yet!")
  do 
    return 
  end

end

