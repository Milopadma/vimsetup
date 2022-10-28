print("init.lua loaded")

require('plugins')
require('base')
require('remap')
require("mason").setup()
require('nvim_comment').setup()
-- require('prettier')
-- require('null-ls')

local has = function(x)
    return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
    require('macos')
end
if is_win then
    require('windows')
end
