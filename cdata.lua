require("pl")
local ffi = require("ffi")

ffi.cdef[[
typedef struct {double x, y;} point_t;
]]

local point
local mt = {
    __add = function (a,b) return point(a.x + b.x ,a.y + b.y) end,
    __len = function(a) return math.sqrt(a.x*a.x , a.y*a.y) end,
    __index = {
        area = function(a) return a.x * a.x + a.y*a.y end
    },
}

point = ffi.metatype('point_t', mt)


local a = point(3,4)

print(a.x,a.y)
print(#a)
print(a:area())
local b = a + point(0.5,0)
print(#b)

pretty.dump(a)

local resource_type = ffi.metatype("struct {int handle;}", {
        __gc = free_resource
    })

local function free_resource(handle)
end

resource = ffi.new(resource_type)
resource.handle = ffi.c.xx_create()


