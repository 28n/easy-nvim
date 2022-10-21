vim.g.tex_flavor = 'latex'
vim.g.vimtex_view_method = 'general'
vim.g.vimtex_quickfix_mode = 0
vim.g.tex_conceal = 'abdmgs'
vim.g.indentLine_setConceal = 0

vim.cmd[[
    augroup VimTeX
      autocmd!
      autocmd BufReadPre /path/to/project/*.tex
            \ let b:vimtex_main = '/path/to/project/main.tex'
    augroup END
]]
