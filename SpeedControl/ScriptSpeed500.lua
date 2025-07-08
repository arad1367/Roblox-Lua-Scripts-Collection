-- SpeedControl --
local Part500 = script.Parent

Part500.Touched:Connect(function(Hit)
	local Character = Hit.Parent
	Character:FindFirstChild("Humanoid").WalkSpeed = 500
end)