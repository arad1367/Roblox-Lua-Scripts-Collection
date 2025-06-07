-- Elevator --

local elevator = game.Workspace.Part

repeat
	for i=1, 30, 1 do
		elevator.Position += Vector3.new(0, 1, 0)
		wait(0.1)
	end

	for i=1, 30, 1 do
		elevator.Position -= Vector3.new(0, 1, 0)
		wait(0.1)
	end
until false

