-- LavaPartScape --
-- LavaPart Scape is a simple and fun game where the player must dodge dangerous lava parts. Touching the lava decreases your health, so stay alert and survive as long as you can! --

local LavaParts = game.Workspace.LavaParts
local debounce = false

for i, LavaPart in pairs(LavaParts:GetChildren()) do
	
	if LavaPart:IsA("Part") and not debounce then
		
		LavaPart.Touched:Connect(function(Hit)
			
			debounce = true
			local Character = Hit.Parent
			local Humanoid = Character:FindFirstChild("Humanoid")
			
			if Humanoid then
				
				Character.Humanoid.Health -= 5
				
			end
			wait(1)
			debounce = false
			
		end)
		
	end
	
end