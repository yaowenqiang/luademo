mt = {}
for i = 1, 10 do
  mt[i] = {}
  for j = 1, 10 do
    mt[i][j] = 0
  end
end
print("end")


local m = 10
local n = 15
mt2 = {}
for i=1,m do
  for j=1,n do
    mt2[i*m + j] = i*m + j
  end
end

print(mt2[1*m+2])
print(mt2[2*m+3])
print(mt2[3*m+4])
print(mt2[4*m+5])