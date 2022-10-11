local status_plug, gn = pcall(require, "github-notifications")
local status_secrets, secrets = pcall(require, "secrets")

if not status_plug then
  print("github-notifications plugin not found")
  return
end

if not status_secrets then
  print("secrets.lua not found")
  return
end

gn.setup({
  username = secrets.username,
  token = secrets.token,
})
