print("init.lua loaded")

require('plugins')
require('base')
require('remap')
require('nvim_comment').setup()
require('null-ls')

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("bufferline").setup{}
require('neoscroll').setup(
    -- set the scroll animation speed
    {
        easing_function = "quadratic",
        highlight = "Search",
        cursor_scrolls_alone = true,
    }
)

-- for the code runner
require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && cargo r $fileName && $dir/$fileNameWithoutExt"
	},
    float = {
      border = "single",
      winblend = 0,
      width = 0.6,
      height = 0.8,
      highlight = "NormalFloat",
      title = "Code Runner",
    },

}
)

-- remove any trailing whitespace
vim.cmd("autocmd BufWritePre * %s/\\s\\+$//e")

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
