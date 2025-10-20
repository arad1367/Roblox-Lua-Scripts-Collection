-- FireSizeColor --
-- Increase and decrease Fire attributes --
-- Color, Heat, Size --

local Fire = game.Workspace.Part.Fire

repeat
	wait(0.1)
	Fire.Color = Color3.new(math.random(0,255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
	Fire.Heat += 1
	Fire.Size += 1
	
	if Fire.Size > 20 then
		Fire.Size = 1
		Fire.Heat = 1
	end
until false
