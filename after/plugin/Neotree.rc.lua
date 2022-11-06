local status, neotree = pcall(require, 'neo-tree')
if not status then
  return
end

-- on load, open Neotree
require('neo-tree').setup()
-- vim.cmd('autocmd VimEnter * NeoTreeFocusToggle')

