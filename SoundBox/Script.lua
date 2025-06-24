-- Sound interaction --
-- Track sound ID: 98076378627817 
-- Van sound ID: 8880527689 
-- Box Sound ID: 9077168330

local Truck = game.Workspace.Camion.Cabin
local TruckSound = game.Workspace.Camion.Sound
local Van = game.Workspace.Van
local VanSound = Van.Sound
local Box = game.Workspace.crate
local BoxSound = Box.Sound

Truck.Touched:Connect(function()
	TruckSound:Play()
	wait(4)
	TruckSound:Stop()
end)

Box.Touched:connect(function()
	BoxSound:Play()
	wait(5)
	BoxSound:Pause()
end)

Van.Touched:Connect(function()
	VanSound:Play()
	wait(4)
	VanSound:Stop()
end)