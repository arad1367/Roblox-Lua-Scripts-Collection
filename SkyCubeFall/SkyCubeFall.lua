-- SkyCubeFall: When the game starts, random cubes fall from the sky, and if they touch you, you lose health! --

repeat
	local Debounce = false
	local Part = Instance.new("Part", game.Workspace)
	Part.Anchored = false
	Part.Position = Vector3.new(math.random(-20, 20), math.random(50, 100), math.random(-20, 20))
	Part.Color = Color3.new(math.random(0, 255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
	Part.Material = Enum.Material.Neon
	Part.Size = Vector3.new(3,3,3)

	Part.Touched:Connect(function(Hit)

		local Character = Hit.Parent
		if not Debounce and Character:FindFirstChild("Humanoid") then
			Debounce = true
			Character.Humanoid.Health -= 20
			wait(1)
			Debounce = false
		end

	end)
	
	wait(1)
until false

