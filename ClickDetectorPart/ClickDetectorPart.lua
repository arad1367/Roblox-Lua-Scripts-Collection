-- ClickDetectorPart --
-- Click the part and player health will be decreased --

local Part = game.Workspace.Part
local ClickDetector = script.Parent.ClickDetector

ClickDetector.MouseClick:Connect(function(player)
	
	local Character = player.Character or player.CharacterAdded:Wait()
	local Humanoid = Character:FindFirstChild("Humanoid")
	
	if Humanoid then
		Character.Humanoid.Health -= 50
	end
	
end)