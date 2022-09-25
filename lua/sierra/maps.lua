local keymap = vim.keymap
vim.g.mapleader = "<Space>"
local silent = {silent = true}
--TODO: clean up everything and all else!

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', silent)
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', silent)
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', silent)
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Trouble
keymap.set('n', '<Space>t', ':Trouble<Return>', silent)

-- Save buffer
keymap.set('i', '<C-s>', '<Esc>:w<Return>a', silent)
keymap.set('n', '<Space>w', ':w<Return>', silent)

-- Quit, close, etc.
keymap.set('n', '<Space>q', ':q<Return>', silent)
keymap.set('n', '<Space>Q', ':qa<Return>', silent)
