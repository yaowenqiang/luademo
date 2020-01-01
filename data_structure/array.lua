a = {}

for i=1, 1000 do
  a[i] = 0
end

for k, v in ipairs(a) do
  print(k .. ' => '  .. v)
end


b = {}


for i=-5, 5 do
  b[i] = 0
end

for i=-5, 5 do
  print(b[i])
end

for k, v in ipairs(b) do
  print(k .. ' => '  .. v)
end

