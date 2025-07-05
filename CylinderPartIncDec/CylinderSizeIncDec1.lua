-- CylinderSizeIncDec --
local CylinderPart = script.Parent

repeat
	for i=1, 100, 1 do
		
		CylinderPart.Size += Vector3.new(i/10, 0, 0)
		wait(0.1)
		
	end
	
	for i= 1, 100, 1 do
		
		CylinderPart.Size -= Vector3.new(i/10, 0, 0)
		wait(0.1)
		
	end
until false