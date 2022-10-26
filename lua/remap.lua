local nnoremap = require("lua.keymap").nnoremap
local builtin = require("telescope.builtin")

nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
