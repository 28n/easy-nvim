local status, neotree = pcall(require, 'neotree')
if not status then
  return
end

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

neotree.setup({
  filesystem = {
    follow_current_file = true,
  },
})
