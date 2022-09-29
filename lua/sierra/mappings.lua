local status, wk = pcall(require, "which-key")
if not status then
  return
end

local normalopts = {
  mode = "n",
  prefix = "",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = false,
}

-- wk.register({
--   ["<Space>"] = {
--     ca = { "<cmd>Lspsaga code_action<Return>", "Code Actions"}
--   }
-- }, normalopts)
