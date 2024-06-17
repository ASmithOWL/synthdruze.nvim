-- dev: clear everything on reload
for k in pairs(package.loaded) do
	if k:match(".*synthdruze.*") then
		package.loaded[k] = nil
	end
end

require("synthdruze").setup({ transparent = true })
require("synthdruze").load()
