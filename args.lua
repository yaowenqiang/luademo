-- prompt> lua -e "sin=math.sin" args.lua a b
print(arg[-3])
print(arg[-2])
print(arg[-1])
for key, value in ipairs(arg) do
    print(value)
end