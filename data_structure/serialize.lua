function serialize (o)
if type(o) == "number" then
  io.write(o)

  elseif type(o) == "string" then
    --io.write("'" , o, "'")
    --io.write("[[", o , "]]")
    io.write(string.format("%q", o))
  elseif type(o) == "table" then
    io.write("{\n")
    for k, v in pairs(o) do
        --io.write(" ", k, " = ")
        io.write("[")
        serialize(k)
        io.write("] = ")
        serialize(v)
        io.write(",\n")
    end
    io.write("}\n")
    else
      io.write("can not serialize a  " , type(o))
end

end


function basicSerialize(o)
    if type(o) == 'number' then
        return tostring(o)

    else 
      return string.format("%q", o)
end

function save(name, value, saved)
    saved = saved or {}
    io.write(name, ' = ')
    if(type(value) == "number" or type(value) == "string") then
        io.write(basic_serialize(value) , "\n")
    elseif type(value) == "table" then
        if(saved[value]) then
            io.write(saved[value], "\n")
        else
            saved[value] = name
            io.write("{}\n")
            for k, v in pairs(value) do
                local fieldname = string.format("%s[%s]", name, basicerialize(k))
                save(fieldname, v, saved)
            end
        end
    else 
        error("cannot save a " ..  type(value))
    end
end
serialize({a = 1, b = 2, c = {d = 5}})
