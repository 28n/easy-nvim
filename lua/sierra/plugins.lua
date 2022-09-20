local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

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
end)
