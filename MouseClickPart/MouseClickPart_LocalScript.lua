-- MoseClickPart --
-- MouseClickPart: With every mouse click a colorful anchored box is produced. --
local ScreenGui = script.Parent
local TextButton = ScreenGui.Frame.TextButton

TextButton.MouseButton1Click:Connect(function()
	
	local Part = Instance.new("Part", game.Workspace)
	Part.Anchored = true
	Part.Material = Enum.Material.Wood
	Part.Color = Color3.new(math.random(0, 255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
	Part.Size = Vector3.new(5, 5, 5)
	Part.Position = Vector3.new(math.random(-40, 40), math.random(1, 60), math.random(-40, 40))
	Part.Transparency = math.random(0, 0.8)
	
end)