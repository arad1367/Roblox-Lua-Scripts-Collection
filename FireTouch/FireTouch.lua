-- FireTouch --
local FirePart1 = game.Workspace.FirePart1
local FirePart2 = game.Workspace.FirePart2
local Debounce = false

FirePart1.Touched:Connect(function(Hit)
	
	local Character = Hit.Parent
	if not Debounce and Character:FindFirstChild("Humanoid") then
		
		Debounce = true
		Character.Humanoid.Health -= 50
		wait(1)
		Debounce = false
		
	end
	
end)

FirePart2.Touched:Connect(function(Hit)
	
	local Character = Hit.Parent
	if not Debounce and Character:FindFirstChild("Humanoid") then
		
		Debounce = true
		Character.Humanoid.Health += 30
		wait(1)
		Debounce = false
		
	end
	
end)