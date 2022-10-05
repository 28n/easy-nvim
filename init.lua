require('sierra.base')
require('sierra.highlights')
require('sierra.maps')
require('sierra.plugins')
require('sierra.commands')

local has = function(x)
	return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
	require('sierra.macos')
end
if is_win then
	require('sierra.windows')
end
