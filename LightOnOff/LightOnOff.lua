-- LightOnOff --
-- This simple Roblox script activates a light for 1 second whenever a player touches a cube. It's a basic interactive effect --

local Light1 = game.Workspace.Light1
local SurfaceLight1 = Light1.SurfaceLight1

local Light2 = game.Workspace.Light2
local SurfaceLight2 = Light2.SurfaceLight2

local Light3 = game.Workspace.Light3
local SurfaceLight3 = Light3.SurfaceLight3

local Debounce = false

--Light1.Touched:Connect(function(Hit)
	
--	local Character = Hit.Parent
--	if not Debounce and Character:FindFirstChild("Humanoid") then
		
--		Debounce = true
		
--		Light1.Material = Enum.Material.Neon
--		SurfaceLight1.Brightness = 50
		
--		Light1.Color = Color3.new(1, 1, 0.0784314)
--		SurfaceLight1.Color = Color3.new(1, 1, 0.0784314)
		
--		SurfaceLight1.Enabled = true
--		wait(5)
		
--		Debounce = false
--		SurfaceLight1.Enabled = false
--		Light1.Material = Enum.Material.Plastic
--		Light1.Color = Color3.fromRGB(255, 255, 255)
		
--	end
	
--end)

local LightFunctionality = function(light, surfaceLight, colorOn, colorOff, materialOn, materialOff, brightness)
	light.Touched:Connect(function(Hit)

		local Character = Hit.Parent
		if not Debounce and Character:FindFirstChild("Humanoid") then

			Debounce = true

			light.Material = materialOn
			surfaceLight.Brightness = brightness

			light.Color = colorOn
			surfaceLight.Color = colorOn

			surfaceLight.Enabled = true
			wait(2)

			Debounce = false
			surfaceLight.Enabled = false
			light.Material = materialOff
			light.Color = colorOff

		end

	end)
end

LightFunctionality(Light1, SurfaceLight1, Color3.new(0.435294, 1, 0.0823529), Color3.new(0, 0.207843, 0), Enum.Material.Neon, Enum.Material.Plastic, 50)
LightFunctionality(Light2, SurfaceLight2, Color3.new(0.333333, 0.333333, 1), Color3.new(0.333333, 0, 0.498039), Enum.Material.Neon, Enum.Material.Plastic, 50)
LightFunctionality(Light3, SurfaceLight3, Color3.new(0.905882, 0, 0), Color3.new(0.333333, 0, 0), Enum.Material.Neon, Enum.Material.Plastic, 50)
