-- Main Script --
local RedFirePart = game.Workspace.WoodPartRed
local BlueFirePart = game.Workspace.WoodPartBlue
local debounce = false

-- Touch Functionality + Player Health --
RedFirePart.Touched:Connect(function(Hit)
	local Character = Hit.Parent
	if not debounce and Hit.Parent:FindFirstChild("Humanoid") then
		debounce = true
		Character.Humanoid.Health -= 5
		wait(1)
		debounce = false
	end
end)

BlueFirePart.Touched:Connect(function(Hit)
	local Character = Hit.Parent
	if not debounce and Hit.Parent:FindFirstChild("Humanoid") then
		debounce = true
		Character.Humanoid.Health += 5
		wait(1)
		debounce = false
	end
end)