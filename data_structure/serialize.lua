function serialize (o)
if type(o) == "number" then
  io.write(o)

  elseif type(o) == "string" then
    --io.write("'" , o, "'")
    --io.write("[[", o , "]]")
    io.write(string.format("%q", o))
end

end
serialize("serialize")
