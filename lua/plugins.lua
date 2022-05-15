return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'
  use 'rinto11804/vfmt.nvim'

  use 'ollykel/v-vim'
  -- use 'cheap-glitch/vim-v'
  -- use 'tami5/vlang.nvim'
  -- apperative plugins
  use 'marko-cerovac/material.nvim'
  -- functional plugins
  use "williamboman/nvim-lsp-installer"
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use 'terrortylor/nvim-comment'
  use 'Pocco81/AutoSave.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
    'hoob3rt/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }
end)
