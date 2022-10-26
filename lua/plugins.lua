local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed!")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'github/copilot.vim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'neovim/nvim-lspconfig' -- LSP
    use {
        'folke/tokyonight.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
end)

vim.cmd [[colorscheme tokyonight]]
vim.g.copilot_node_command = "~/.nvm/versions/node/v17.9.1/bin/node"
