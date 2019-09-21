local ffi = require("ffi")

ffi.cdef[[
unsigned long compressBound(unsigned long sourceLen);
int compress2(uint8_t *dest, unsigned long *destLen,
        const uint8_t *source, unsigned long sourceLen, int level);
int uncompress2(uint8_t *dest, unsigned long *destLen,
        const uint8_t *source, unsigned long sourceLen);
]]

local zlib = ffi.load(ffi.os == "windows" and "zlib1" or "z")

local function compress(txt)
    local m = zlib.compressBound(#txt)
    local buf = ffi.new("uint8_t[?]", n)
    local buflen = ffi.new("unsigned long[1]", n)
    local res = zlib.compress2(buf, buflen, txt, #txt, 0)
    assert(res == 0)
    return ffi.string(buf, buflen[0])
end

local function uncompress(comp, n)
    local m = zlib.compressBound(#comp)
    local buf = ffi.new("uint8_t[?]", n)
    local buflen = ffi.new("unsigned long[1]", n)
    local res = zlib.uncompress(buf, buflen, comp, #comp)
    assert(res == 0)
    return ffi.string(buf, buflen[0])
end

local txt = string.rep("abcde", 1000)
print("Uncompressed size:", #txt)

local c = compress(txt)
print("Compressed size:", #c)
local txt2 = uncompress(c, #txt)

assert(txt2 == txt)


