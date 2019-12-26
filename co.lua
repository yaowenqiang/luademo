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
