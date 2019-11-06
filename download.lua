require "socket"
host = "www.w3.org"
file = "/TR/REC-html32.html"

c = assert(socket.connect(host, 80))

c:send("GET " .. file .. " HTTP/1.0 \r\n\r\n")
c.close()

function download(host, file)
    local c = assert(socket.connect(host, 80))

    local count = 0;

    c.send("GET " .. file .. " HTTP/1.0 \r\n\r\n")
    while true do

        local s, status = received
        count = count + strlen.len(s)
        if status == "closed" then break end
    end

    c:close(c)

    printf(file, count)

end


