function producer ()
    while true do
        local x = io.read()
        send(x)
    end

end

function receive()
    local status, value = coroutine.resume(producer)
    print("receive: ", value)
    return value
end

function send(x)
    coroutine.yield(x)
end

function consumer ()
    while true do
        local x = io.receive()
        io.write(x, "\n")
    end
end


producer = coroutine.create(function() 
    while true do
        local x = io.read()
        print("produced : ", x)
        send(x)
    end
end)


while true do
    receive()
end
