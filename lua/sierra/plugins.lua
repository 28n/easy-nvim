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
end)
