local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed!")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'github/copilot.vim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    --    use 'prettier/vim-prettier'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' } }
    }
    use 'L3MON4D3/LuaSnip' -- Snippets
    use 'glepnir/lspsaga.nvim' -- lsp UIs
    use 'hrsh7th/cmp-buffer' -- buffer source
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'hrsh7th/nvim-cmp' -- Autocompletion
    use 'neovim/nvim-lspconfig' -- LSP
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Treesitter
    use 'onsails/lspkind-nvim' -- vscode-like pictograms for neovim lsp completion items
    use {
        'folke/tokyonight.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
end)

vim.cmd [[colorscheme tokyonight]]
vim.g.copilot_node_command = "~/.nvm/versions/node/v17.9.1/bin/node"
