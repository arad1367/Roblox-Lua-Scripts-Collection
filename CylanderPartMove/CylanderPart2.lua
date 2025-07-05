-- CylanderPartMove functionality --
-- CylanderPartMove lets players jump onto a moving cylinder as part of the obby challenge --
-- We need to design two separate cylinders, each with its own movement script inside --

local StartPoint = Vector3.new(11, 8.5, 6.465)
local EndPoint = Vector3.new(40, 8.5, 6.465)
local MovePart2 = game.Workspace.MovePart2

repeat
	
	for i=1, 300, 1 do
		
		MovePart2.Position = EndPoint - Vector3.new(i/10, 0, 0)
		wait(0.01)
		
	end
	
	for i=1, 300, 1 do
		
		MovePart2.Position = StartPoint + Vector3.new(i/10, 0, 0)
		wait(0.01)
		
	end
	
until false