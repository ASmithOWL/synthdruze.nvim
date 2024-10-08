local hl = require("synthdruze.highlights")
local palette = require("synthdruze.palette")
local apply = require("synthdruze.util").apply_hl
local M = {}

---@class Config
M.config = {
	transparent = false,
	overrides = {},
	palette = {},
}

---@param opts? Config
function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
	vim.cmd.hi("clear")
	vim.o.background = "dark"
	vim.opt.termguicolors = true
	vim.g.colors_name = "synthdruze"

	if M.config.transparent then
		palette.bg1 = palette.bg0
		palette.bg0 = "NONE"
	end

	for color, value in pairs(M.config.palette) do
		palette[color] = value
	end

	hl.load(palette)

	apply(M.config.overrides)
end

return M
