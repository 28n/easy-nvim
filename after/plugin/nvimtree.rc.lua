local g = vim.g
local status, nvimtree = pcall(require, 'nvim-tree')
if not status then
  return
end

nvimtree.setup({
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true
      },
      glyphs = {
          default = '',
          symlink = '',
      --[[ git = {
        unstaged = '☒',
        staged = '☑',
        unmerged = '',
        renamed = '',
        untracked = '',
        deleted = '',
        ignored = ''
      }, ]]
      folder = {
        default = '',
        open = '',
        symlink = '',
        symlink_open = ''
      },
      }
    }
  }
})
