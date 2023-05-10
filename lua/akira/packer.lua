-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'xiyaowong/nvim-transparent'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'junegunn/fzf', run = './install --bin', }
  use({ 'haishanh/night-owl.vim', config = function()
    vim.cmd('colorscheme night-owl')
  end
})
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
use('tpope/vim-fugitive')
use('nvim-lualine/lualine.nvim')
--use "lukas-reineke/indent-blankline.nvim"
use('jose-elias-alvarez/null-ls.nvim')
use('MunifTanjim/prettier.nvim')
use 'm4xshen/autoclose.nvim'
use 'f-person/git-blame.nvim'
end)

