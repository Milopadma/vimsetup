local nnoremap = require("keymap").nnoremap
local builtin = require("telescope.builtin")

nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- for lspsaga
nnoremap("<C-j>", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
nnoremap("K", "<cmd>Lspsaga hover_doc<CR>")
nnoremap("<gd>", "<cmd>Lspsaga lsp_finder<CR>")
nnoremap("<C-k>", "<cmd>Lspsaga signature_help<CR>")
nnoremap("<gp>", "<cmd>Lspsaga preview_definition<CR>")
nnoremap("<gr>", "<cmd>Lspsaga rename<CR>")
nnoremap("<leader>ca", "<cmd>Lspsaga code_action<CR>")
nnoremap("<leader>rn", "<cmd>Lspsaga rename<CR>")
nnoremap("<leader>fo", "<cmd>Lspsaga open_floaterm<CR>")
nnoremap("<leader>fc", "<cmd>Lspsaga close_floaterm<CR>")

-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
