-- Roblox Lua Programming --
-- EarthMovement --
warn("This is earth movement, please focus!")

local Earth = Instance.new("Part", workspace)

Earth.Shape = Enum.PartType.Ball
Earth.Material = Enum.Material.Ground
Earth.Color = Color3.new(0.666667, 0.333333, 1)
Earth.Size = Vector3.new(10, 10, 10)
Earth.Anchored = true
Earth.Position = Vector3.new(0, 5, 0)

repeat
	Earth.CFrame = Earth.CFrame * CFrame.Angles(0, math.rad(1), 0) -- Earth natural movement
	wait(0.1)
until false