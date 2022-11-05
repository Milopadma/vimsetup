local nnoremap = require("keymap").nnoremap
local builtin = require("telescope.builtin")

nnoremap("<C-p>", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fw", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>o", "<cmd>NeoTreeFocusToggle<CR>")


-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
