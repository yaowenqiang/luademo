co = coroutine.create(function()
        print("hi")
    end
)
print(co)

co1 = coroutine.create(function()
    for i = 1, 10 do
        print("co ", i)
        coroutine.yield()
    end

end
)
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))

coroutine.resume(co1)
print(coroutine.status(co1))
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)
coroutine.resume(co1)


co3 = coroutine.create(function(a,b,c)
    print("co ", a,b,c) 
end)


coroutine.resume(co3, 1,2,3)



co4 = coroutine.create(function(a,b)
    coroutine.yield(a + b ,a - b)
end)

print(coroutine.resume(co4, 20, 10))
