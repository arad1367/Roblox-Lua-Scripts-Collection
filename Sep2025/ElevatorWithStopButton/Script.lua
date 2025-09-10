-- ElevatorWithStopButton --
-- Let's make everything with code --
local Elevator = Instance.new("Part", game.Workspace)
Elevator.Size = Vector3.new(5,1,5)
Elevator.Material = Enum.Material.Metal
Elevator.Anchored = true
Elevator.Reflectance = 0.5
Elevator.Position = Vector3.new(0,1,0)

local StopButton = Instance.new("Part", game.Workspace)
StopButton.Color = Color3.new(1, 0, 0)
StopButton.Material = Enum.Material.Neon
StopButton.Position = Vector3.new(10, 0, 0)
StopButton.Size = Vector3.new(2,2,2)

local IsContinue = true
local GoingUp = true -- direction control

-- Toggle elevator state when button is touched
StopButton.Touched:Connect(function(TouchPart)
	-- only react to player / character touching
	local Humanoid = TouchPart.Parent:FindFirstChild("Humanoid")
	if Humanoid then
		IsContinue = not IsContinue
		print("Elevator state:", IsContinue and "Running" or "Stopped")
		wait(1)
	end
end)

wait(1)

-- Main loop
while true do
	if IsContinue then
		if GoingUp then
			if Elevator.Position.Y < 10 then
				Elevator.Position += Vector3.new(0,1,0)
				Elevator.Color = Color3.new(math.random(), math.random(), math.random())
			else
				GoingUp = false
			end
		else
			if Elevator.Position.Y > 1 then
				Elevator.Position -= Vector3.new(0,1,0)
				Elevator.Color = Color3.new(math.random(), math.random(), math.random())
			else
				GoingUp = true
			end
		end
	end
	wait(0.1)
end
