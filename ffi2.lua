local ffi = require "ffi"
ffi.load("myffi", true)
ffi.cdef[[
    int add(int x ,int y);
]]

local res = ffi.c.add(1,2)
print(res)

local uintptr_t = ffi.typeof("uintptr_t")
local c_str_t = ffi.typeof("const char *")
local int_t = ffi.typeof("int")
local int_array_t = ffi.typeof("int[?]")


local int_array_t = ffi.typeof("int[?]")
local bucket_v = ffi.new(int_array_t, bucket_sz)

local queue_arr_type = ffi.typeof("lrucache_pureffi_queue_t[?]")

local q = ffi.new(queue_arr_type, size + 1)



ffi.fill(self.bucket_v, ffi_sizeof(int_t, bucket_sz), 0)

ffi.fill(q, ffi_sizeof(quuee_type, size + 1), 0)


local c_str_t = ffi.typeof("const char*")

local c_str = ffi.cast(c_str_t, str)

local uintptr_t = ffi.typeof("uintptr_t")

tonumber(ffi.cast(uintptr_t, c_str))

ffi.cdef[[
    typedef struct {int *a;} foo_t;
]]


local s = ffi.new("foo_t", ffi.new("int[10]"))

local a = ffi.new("int[10]")

local s = ffi.new("foo_t", a)



ffi.cdef[[
    int printf(const char *fmt, ...);
]]

ffi.c.printf("hello %s!", "world")
