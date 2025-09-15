-- TNT Functionality --

local TNT = game.Workspace.Part
local Light = game.Workspace.PartLight
TNTPosition = TNT.Position

Light.Touched:Connect(function(Hit)
	if Hit.Parent:FindFirstChild("Humanoid") then
		
		local Explosion = Instance.new("Explosion", TNT)
		Explosion.Position = TNTPosition
		Explosion.BlastRadius = 5

		local Sound = Instance.new("Sound", TNT)
		Sound.SoundId = "rbxassetid://5137964328"
		Sound:Play()

		wait(1)
		TNT:Destroy()
		Light:Destroy()
		
	end
end)



