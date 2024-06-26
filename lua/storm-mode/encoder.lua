local M = {}

local Sym = require('storm-mode.sym')

M._next_symid = 1

---Encode the message header and body
---@param message storm-mode.lsp.message
---@return string
function M.enc_message(message)
    local encoded_body = M.enc_message_body(message)
    return string.char(0x0) .. M.enc_number(#encoded_body) .. encoded_body
end

---Encode the message body
---@param message storm-mode.lsp.message
---@return string
function M.enc_message_body(message)
    local ret = ''
    for _, val in ipairs(message) do
        ret = ret .. string.char(0x1)
        if type(val) == 'userdata' then
            ret = ret .. string.char(0x0)
        elseif type(val) == 'table' then
            ret = ret .. M.enc_sym(val)
        elseif type(val) == 'number' then
            ret = ret .. string.char(0x2) .. M.enc_number(val)
        elseif type(val) == 'string' then
            ret = ret .. string.char(0x3) .. M.enc_string(val)
        else
            assert(false, 'Unexpected val type: ' .. type(val))
        end
    end
    return ret .. string.char(0x0)
end

---Encode message as 4 bytes (32-bit unsigned, big-endian order)
---@param num number
---@return string
function M.enc_number(num)
    return table.concat({
        string.char(math.floor(num / 2 ^ 24) % 256),
        string.char(math.floor(num / 2 ^ 16) % 256),
        string.char(math.floor(num / 2 ^ 8) % 256),
        string.char(num % 256),
    })
end

---Prepend message with its length
---@param str string
---@return string
function M.enc_string(str)
    return M.enc_number(#str) .. str
end

---Encode symbol, new (0x4) or old (0x5)
---@param sym storm-mode.sym
---@return string
function M.enc_sym(sym)
    local symid = Sym.sym_to_symid[sym]
    if symid then
        return string.char(0x5) .. M.enc_number(symid)
    else
        symid = M._next_symid
        M._next_symid = M._next_symid + 1
        Sym.sym_to_symid[sym] = symid
        Sym.symid_to_sym[symid] = sym
        return string.char(0x4) .. M.enc_number(symid) .. M.enc_string(tostring(sym))
    end
end

return M
