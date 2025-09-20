-- CloneDestroyRandom --
-- We can use clone as well --

repeat
	local RandomPart = Instance.new("Part", game.Workspace)

	RandomPart.Color = Color3.new(math.random(0, 255)/ 255, math.random(0, 255)/255, math.random(0, 255)/255)
	RandomPart.Material = Enum.Material.Neon
	RandomPart.Anchored = true
	RandomPart.Size = Vector3.new(5, 5, 5)
	RandomPart.Position = Vector3.new(0, 10, 0)
	wait(1)
	
	RandomPart:Destroy()
	wait(1)
until false