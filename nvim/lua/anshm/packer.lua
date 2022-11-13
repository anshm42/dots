-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")
  use("nvim-telescope/telescope.nvim")

  use('NvChad/nvim-colorizer.lua')
  use("nvim-treesitter/playground")
  use("romgrk/nvim-treesitter-context")
  
  use('neovim/nvim-lspconfig')
  use("glepnir/lspsaga.nvim")
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind-nvim'
  
 use({
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })
  use("nvim-treesitter/nvim-treesitter", {
      run = ":TSUpdate"
  })
  
  
  use("preservim/nerdcommenter")
  use("jiangmiao/auto-pairs")

  use 'lervag/vimtex'

  use("morhetz/gruvbox")
  use('folke/tokyonight.nvim')
end)
    
    

