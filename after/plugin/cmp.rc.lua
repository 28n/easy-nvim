local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

vim.o.completeopt = "menuone,noselect"

cmp.setup({
    completion = {
      completeopt = "menu,menuone,noinsert",
    },
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.close(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "path" },
      { name = "emoji" },
      { name = "neorg" },
      { name = "nvim_lsp_signature_help" },
    }),
    formatting = {
      format = require("lspkind").cmp_format(),
    },
    -- documentation = {
    --   border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    --   winhighlight = "NormalFloat:NormalFloat,FloatBorder:TelescopeBorder",
    -- },
    experimental = {
      ghost_text = {
        hl_group = "LspCodeLens",
      },
    },
    -- sorting = {
    --   comparators = {
    --     cmp.config.compare.sort_text,
    --     cmp.config.compare.offset,
    --     -- cmp.config.compare.exact,
    --     cmp.config.compare.score,
    --     -- cmp.config.compare.kind,
    --     -- cmp.config.compare.length,
    --     cmp.config.compare.order,
    --   },
    -- },
  })

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))

-- vim.cmd [[
--   set completeopt=menuone,noinsert,noselect
--   highlight! default link CmpItemKind CmpItemMenuDefault
-- ]]

-- " Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
--
  -- formatting = {
  --   format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  -- }
