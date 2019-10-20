counter = 0
request = function ()
    path = "/" .. counter
    wrk.headers['X-counter'] = counter
    counter = counter + 1
    return wrk.format(nil, path)
end

-- wrk -c10 -d1 -s lua/counter.lua http://baidu.com
