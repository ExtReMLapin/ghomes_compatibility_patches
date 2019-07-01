ghomes.wrapper = ghomes.wrapper or {}


function ghomes.findCurrentGamemode()
	if DarkRP then return "darkrp" end
	if nut then return "nutscript" end
	if ix then return "ix" end

	return "default"
end



hook.Add("Initialize","gHomes wrapper loader",function ()
	local gm = "ghomes_system/sh_compatibility/" .. ghomes.findCurrentGamemode()
	ghomes.wrapper = include(gm .. ".lua")

	ghomes.wrapper.init()
end)