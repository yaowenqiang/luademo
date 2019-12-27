co = coroutine.create(function ()
  print("hi")
end)
print(co)

print(coroutine.status(co))

coroutine.resume(co)

co2 = coroutine.create(function() 
    for i=1,10 do
       print("co", i) 
       coroutine.yield()
    end
end)

coroutine.resume(co2)

print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))
coroutine.resume(co2)
print(coroutine.status(co2))

co3 = coroutine.create(function(a,b , c)
    print("co", a,b,c) 
end)

coroutine.resume(co3,1,2,3)


co4 = coroutine.create(function(a, b)
    coroutine.yield(a + b, a - b) 
end)

print(coroutine.resume(co4,20, 10))
print(coroutine.resume(co4,20, 10))
print(coroutine.resume(co4,20, 10))
