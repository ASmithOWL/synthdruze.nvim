local common = require("synthdruze.highlights.common")
local diag = require("synthdruze.highlights.diagnostic")
local plugins = require("synthdruze.highlights.plugins")
local semantic = require("synthdruze.highlights.semantic")
local syntax = require("synthdruze.highlights.syntax")
local ts = require("synthdruze.highlights.ts")
local util = require("synthdruze.util")

local M = {}

---@param p Palette
function M.load(p)
	util.apply_hl(common(p))
	util.apply_hl(diag(p))
	util.apply_hl(semantic(p))
	util.apply_hl(syntax(p))
	util.apply_hl(ts(p))
	util.apply_hl(plugins(p))
end

return M
