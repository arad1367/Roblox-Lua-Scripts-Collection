-- A small program! Part position will be updated! --
-- This is absolutely not a smart way but just for practice ... always try to train your brain!
local Part = script.Parent.Part
--local PartPosition = Part.Position
local continueLoop = false
local count = 0

repeat
	
	if count < 20 then
		Part.Position += Vector3.new(0, 1, 0)
		count += 1
		wait(0.1)
	end
	if count >= 20 then
		Part.Position -= Vector3.new(0, 1, 0)
		count += 1
		wait(0.1)
		if count == 40 then
			count = 0
		end
	end
	
until continueLoop