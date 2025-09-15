-- DecreaseIncreaseDecalTranparency --

local Part = game.Workspace.Part1
local Decal = script.Parent.Decal
local IsContinue = true

repeat
	
	while Decal.Transparency < 1 and IsContinue == true do
		Decal.Transparency += 0.1
		wait(0.1)
	end
	
	while Decal.Transparency > 0 and IsContinue == true do
		Decal.Transparency -= 0.1
		wait(0.1)
	end
	
until false