local status, Neotree = pcall(require, 'Neotree')
if not status then
  return
end

-- on load, open Neotree
require('Neotree').setup()
vim.cmd('autocmd VimEnter * NeoTreeFocusToggle')

