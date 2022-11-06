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

-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
