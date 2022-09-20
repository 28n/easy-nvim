local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

packer.startup(function(use)
  -- let packer manage itself
  use 'wbthomason/packer.nvim'

  -- color theme
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- Common utilities
  use 'nvim-lua/plenary.nvim'

  -- VSCode-lie pictograms
  use 'onsails/lspkind-nvim'

  -- NVIM-CMP source for buffer words
  use 'hrsh7th/cmp-buffer'

  -- NVIM-CMP source for neovim's built-in LSP
  use 'hrsh7th/cmp-nvim-lsp'

  -- NVIM-Completion
  use 'hrsh7th/nvim-cmp'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- NULL-LS
  use 'jose-elias-alvarez/null-ls.nvim'
  
  -- Filetree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }
  
  -- Prettier plugins for Neovims LSP
  use 'MunifTanjim/prettier.nvim'
  
  -- Neovim Package Manager
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  
  -- LSP User Interface
  use 'glepnir/lspsaga.nvim'
  
  -- Snippets for LUA
  use 'L3MON4D3/LuaSnip'

  -- Syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({with_sync = true}) end,
  }

  -- File Browser
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  
  -- Automation
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  
  -- Color highlighting
  use 'norcalli/nvim-colorizer.lua'
  
  -- Zen Mode
  use 'folke/zen-mode.nvim'
end)
