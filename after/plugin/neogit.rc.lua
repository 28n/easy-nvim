require("neogit").setup({
  kind = "split",
  signs = {
    -- { CLOSED, OPENED }
        section = { "", "" },
        item = { "", "" },
        hunk = { "", "" },
  },
  integrations = { diffview = true }
})

vim.keymap.set("n", "<leader>gg", "<cmd>Neogit kind=floating<cr>",{ desc = "Neogit" })
