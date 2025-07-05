-- CylinderSizeIncDec --
local CylinderPart = script.Parent

wait(2)

repeat
	for i=1, 90, 1 do
		
		CylinderPart.Size += Vector3.new(i/10, 0, 0)
		wait(0.1)
		
	end
	
	for i= 1, 90, 1 do
		
		CylinderPart.Size -= Vector3.new(i/10, 0, 0)
		wait(0.1)
		
	end
until false