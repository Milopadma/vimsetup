local status, neotree = pcall(require, 'neo-tree')
if not status then
  return
end

-- open neo-tree toggle when vim start
vim.cmd('autocmd VimEnter * Neotree float toggle')

-- close neo-tree when entering a file
vim.cmd('autocmd BufEnter * if (winnr("$") == 1 && exists("b:neotree")) | q | endif')
