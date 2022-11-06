local nnoremap = require("keymap").nnoremap
local builtin = require("telescope.builtin")

-- For normal nav
nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>q", "<cmd>q<CR>")

-- For telescope
nnoremap("<C-p>", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fw", "<cmd>Telescope live_grep<CR>")

-- open the neotree float toggle and expand all folders
nnoremap("<leader>ft", "<cmd>lua require('telescope').extensions.neotree.neotree({cwd = vim.fn.expand('%:p:h'), width = 0.9, height = 0.9})<CR>")

-- For Neotree
nnoremap("<leader>gst", "<cmd>Neotree float git_status<CR>")

-- For commenting
nnoremap("<C-/>", "<cmd>CommentToggle<CR>")

-- For LSPsaga
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga show_cursor_diagnostics<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', '<leader>ca', "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set('n', '<leader>to', "<cmd>Lspsaga open_floaterm<CR>", opts)
vim.keymap.set('t', '<leader>to', "<cmd>Lspsaga close_floaterm<CR>", opts)
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
