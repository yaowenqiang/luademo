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
        io.write(" ", k, " = ")
        serialize(v)
        io.write(",\n")
    end
    io.write("}\n")
    else
      io.write("can not serialize a  " , type(o))
end

end
serialize({a = 1, b = 2, c = {d = 5}})
