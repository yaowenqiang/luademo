require("pl")
_M = {}

mt = {__index = _M}

function _M.deposit(_M, v)
    _M.balance = _M.balance + v
end

function _M.withdraw(self, v)
    if self.balance > v then
        self.balance = self.balance - v
    else
        error("insufficient funds")
    end
end

function _M.new(self, balance)
    balance = balance or 0
    return  setmetatable({balance = balance}, mt)
end


return _M

