local status, aerial = pcall(require, 'aerial')
if not status then
  return
end

local keymap = vim.api.nvim_buf_set_keymap

aerial.setup{
  on_attach = function(bufnr)
    keymap(bufnr, 'n', '<Space>a', ':AerialToggle!<Return>', {silent = true})
    keymap(bufnr, 'n', '<Space>k', ':AerialPrev<Return>', {silent = true})
    keymap(bufnr, 'n', '<Space>j', ':AerialNext<Return>', {silent = true})
  end
}
