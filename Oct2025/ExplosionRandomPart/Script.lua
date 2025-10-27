-- Create Random Parts and Destroy Parts --
-- This scripts help you to create Random Parts with change in value of N and the you can create N numbers of parts and see how they destroy --
-- The loop will repeat forever! --

local IsStop = false
local N = 5
local PartsList = {}

repeat 
	
	for i=1, N, 1 do
		NewPart = Instance.new("Part", game.Workspace)
		PartName = "Part"..i
		NewPart.Name = PartName
		--PartsList[#PartsList + 1] = NewPart
		table.insert(PartsList, NewPart)
		NewPart.Position = Vector3.new(math.random(-20, 20), math.random(1, 10), math.random(1, 10))
		NewPart.Color = Color3.new(math.random(0, 255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
		NewPart.Anchored = true
		NewPart.Size = Vector3.new(3, 3, 3)
		wait(1)
	end
	
	local MyRandomPart = math.random(#PartsList)
	--print(MyRandomPart)
	local explodePos = PartsList[MyRandomPart].Position
	--print(explodePos)

	local Explosion = Instance.new("Explosion")
	Explosion.Position = explodePos
	Explosion.Parent = game.Workspace
	
	-- Add sound to explosion --
	local boomSound = Instance.new("Sound", Explosion)
	boomSound.SoundId = "rbxassetid://5801257793"  
	boomSound.Volume = 1
	boomSound:Play()

	PartsList[MyRandomPart]:Destroy()
	wait(2) 
	
	for i, v in ipairs(PartsList) do
		v:Destroy()
	end
	
	PartsList = {}
	
	wait(1)
	
until IsStop