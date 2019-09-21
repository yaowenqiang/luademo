local str = "abcde"
print("case 1:", str:sub(1,2))
print("case 2:", str.sub(str, 1,2))
print("case 2:", str.sub(1,2))


obj = {x=10}

function obj:fun1()
    print(self.x)
end



obj1 = {x=10}

function obj1.func1(self)
    print(self.x)
end
