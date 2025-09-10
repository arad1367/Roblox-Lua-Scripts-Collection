-- PartPositionWithCondition --
-- We wanna change the position of a part based on y axis change

local Part = game.Workspace.Part
Part.Anchored = true

repeat
	if Part.Position.Y == 0 or Part.Position.Y == 15 then
		Part.Position = Vector3.new(0, 5, 0)
		Part.Color = Color3.new(0, 1, 0)
		Part.Material = Enum.Material.Neon
		wait(1)
	elseif Part.Position.Y > 0 and Part.Position.Y <=5 then
		Part.Position = Vector3.new(0, 10, 0)
		Part.Color = Color3.new(0, 0.333333, 1)
		Part.Material = Enum.Material.Neon
		wait(1)
	elseif Part.Position.Y > 5 then
		Part.Position = Vector3.new(0, 15, 0)
		Part.Color = Color3.new(0.666667, 0, 0)
		Part.Material = Enum.Material.Neon
		wait(1)
	end
until false

