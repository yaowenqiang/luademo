names = {"Peter", "Paul", "Mary"}

grades = {
  Mary = 10, 
  Paul = 7,
  Peter = 8
}

table.sort(grades, function(n1, n2) 
    return grades[n1] > grades[n2]
    
end)

function sortByGrade(names, grades)
    table.sort(names, function(n1, n2)
    return grades[n1] > grades[n2]
    end)
end


sortByGrade(names, grades)


function new_counter()
  local i = 0
  return function ()
      i = i + 1
      return i
  end

end

c1 = new_counter();
print(c1())
print(c1())
print(c1())
print(c1())
print(c1())

lib = {}

lib.foo = function (x, y) return x + y end
lib.goo = function (x, y) return x - y end


lib2 = {
    foo = function (x, y) return x + y end,
    goo = function (x, y) return x + y end,

}
lib3 = {}

function lib3.foo (x, y)
  return x + y
end

function lib3.goo (x, y)
  return x - y
end

local f = function () 
  
end



local g = function () 

end



local function f () 

end


local  function  g ()

end




local fact

fact = function (n)
    if n == 0 then
      return 1
    else 

      return n * fact(n - 1)
    end

end

print(fact(4))
