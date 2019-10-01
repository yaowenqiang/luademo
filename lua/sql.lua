local mysql = require "resty.mysql"
local db, err = mysql:new()
if not db then
    ngx.say("failed to instantiate mysql: ", err)
    return
end

db:set_timeout(1000)

local ok, err, errno, sqlstate = db:connect{
    host = "127.0.0.1",
    port = 3306,
    database = "ngx_test",
    user="root",
    password = "123456",
    max_packet_size = 1024 * 1024 }

if not ok then 
    ngx.say("failed to connect:", err, ":", errno, " ", sqlstate)
    return
end

ngx.say("connected to mysql.")

local res, err, errno, sqlstate = db.query("drop table if exists cats")

if not res then
    ngx.say("bad result: " ,err, " ", errno, ": " ,sqlstate, ".")
    return
end

res, err, errno, sqlstate = 
db.query("create table cats( "
        .. "(id serial primary key)," 
        .. "name varchar(5))")
if not res then
    ngx.say("bad result: " ,err, " ", errno, ": " ,sqlstate, ".")
    return
end


ngx.say("table cats created.")

res, err, errno, sqlstate = 
    db.query("insert into cats(name)"
        .. "values(\'Bob\'), (\'\'), (null)" )

if not res then
    ngx.say("bad result: " ,err, " ", errno, ": " ,sqlstate, ".")
    return
end

ngx.say(res.affected_rows, "rows inserted into table cats")

local req_id = [[1';drop table cats;--]]

res,err ,errno, sqlstate = 
    --db.query(string.format([[select * from cats where id = '%s']], req_id))
    db.query(string.format([[select * from cats where id = '%s']], req_id),
        ndk.set_var.set_quote_sql_str(req_id)
        --ndk.set_var.set_quote_pgsql_str(req_id)
        )
if not res then
    ngx.say("failed to connect:", err, ":", errno, " ", sqlstate)
    return
end

local cjson = require "cjson"

ngx.say("result: ", cjson.encode(res))


res, err, errno, sqlstate = 
    db.query([[selec * from cats where id = 1]])

if not res then
    ngx.say("failed to connect:", err, ":", errno, " ", sqlstate)
    return
end
db.set_keepalive(10000, 100)





