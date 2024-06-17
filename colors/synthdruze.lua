for k in pairs(package.loaded) do
	if k:match(".*synthdruze.*") then
		package.loaded[k] = nil
	end
end

require("synthdruze").load()
