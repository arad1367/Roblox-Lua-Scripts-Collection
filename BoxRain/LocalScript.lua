-- BoxRain --
-- Players click color-specific buttons (Red, Green, Blue, Black) to make matching boxes rain down from the sky --
-- We need LocalScript --
-- Repeat below code 4 times for 4 different buttons --

local BlueButton = script.Parent.Frame.TextButton

BlueButton.MouseButton1Click:Connect(function()
	local Box = Instance.new("Part", game.Workspace)
	Box.Size = Vector3.new(4, 4, 4)
	Box.Position = Vector3.new(math.random(-30, 30), math.random(60, 100), math.random(-30, 30))
	Box.Anchored = false
	Box.Color = Color3.new(0, 0.666667, 1)
	Box.Material = Enum.Material.Neon
end)