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
end)
