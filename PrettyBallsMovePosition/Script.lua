-- Roblox Studio --
-- PrettyBallsMovePosition --
-- PrettyBallsMovePosition: A fun Roblox program featuring 6 balls that continuously shift positions. Three balls move together in alignment, while the other three form a separate aligned group, creating a dynamic and visually engaging motion pattern --
-- Do not use loop here just for practice --
local BallsFolder = workspace.Balls

local Ball1 = Instance.new("Part", BallsFolder)
local Ball2 = Instance.new("Part", BallsFolder)
local Ball3 = Instance.new("Part", BallsFolder)
local Ball4 = Instance.new("Part", BallsFolder)
local Ball5 = Instance.new("Part", BallsFolder)
local Ball6 = Instance.new("Part", BallsFolder)

for i, ball in pairs(BallsFolder:GetChildren()) do
	if ball:IsA("Part") then
		ball.Shape = Enum.PartType.Ball
		ball.Size = Vector3.new(3, 3, 3)
		ball.Anchored = true
		ball.Material = Enum.Material.Neon
		ball.Color = Color3.new(math.random(0, 255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
	end
end

Ball1.Position = Vector3.new(0, 10, 0)
Ball2.Position = Vector3.new(5, 10, 0)
Ball3.Position = Vector3.new(10, 10, 0)
Ball4.Position = Vector3.new(15, 10, 0)
Ball5.Position = Vector3.new(20, 10, 0)
Ball6.Position = Vector3.new(25, 10, 0)

repeat
	for i=1, 9, 1 do
		Ball1.Position = Ball1.Position + Vector3.new(0, 1, 0)
		Ball3.Position = Ball3.Position + Vector3.new(0, 1, 0)
		Ball5.Position = Ball5.Position + Vector3.new(0, 1, 0)
		Ball2.Position = Ball2.Position + Vector3.new(0, -1, 0)
		Ball4.Position = Ball4.Position + Vector3.new(0, -1, 0)
		Ball6.Position = Ball6.Position + Vector3.new(0, -1, 0)
		wait(0.05)
	end
	for i=1, 9, 1 do
		Ball1.Position = Ball1.Position + Vector3.new(0, -1, 0)
		Ball3.Position = Ball3.Position + Vector3.new(0, -1, 0)
		Ball5.Position = Ball5.Position + Vector3.new(0, -1, 0)
		Ball2.Position = Ball2.Position + Vector3.new(0, 1, 0)
		Ball4.Position = Ball4.Position + Vector3.new(0, 1, 0)
		Ball6.Position = Ball6.Position + Vector3.new(0, 1, 0)
		wait(0.05)
	end
until false
