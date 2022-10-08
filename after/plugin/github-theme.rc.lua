local status, github_theme = pcall(require, "github-theme")
if (not status) then
  return
end

github_theme.setup({
  theme_style = "dark",
  sidebars = { "qf", "vista_kind", "terminal", "packer", "neo-tree" },
})
