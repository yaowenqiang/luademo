file = io.input("test1.txt")
repeat
    line = io.read()
    if nil == line then
        break
    end
    print(line)
until(false)
io.close(file)

file2 = io.open("test1.txt", "a+")
io.output(file2)
io.write("\nhello world")
io.close()
        

file3 = io.open("test1.txt", "r")

for line in file3:lines() do
    print(line)
end

file3:close()


file4 = io.open("test1.txt","a")
file4:write("\nhello again!")
file4:close()

