function producer ()
    while true do
        local x = io.read()
        send(x)
    end

end



function consumer ()
    while true do
        local x = io.receive()
        io.write(x, "\n")
    end
end

