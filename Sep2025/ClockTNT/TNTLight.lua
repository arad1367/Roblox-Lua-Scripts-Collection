-- Bomb Light --
-- This is the part for red light of the bomb --

local light = script.Parent
light.Material = Enum.Material.Neon

repeat
	light.Color = Color3.new(1, 0, 0)
	wait(0.5)
	light.Color = Color3.new(1, 1, 1)
	wait(0.5)
until false