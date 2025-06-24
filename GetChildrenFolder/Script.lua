-- GetCholdren() functionality --
-- We have 2 Red and Blue folders and we wanna try to change color of parts inside of them --
local BluBox = game.Workspace.BlueBox
local RedBox = game.Workspace.RedBox

for i, Part in pairs(BluBox:GetChildren()) do
	Part.Color = Color3.new(0, 0, 1)
	Part.Material = Enum.Material.Neon
	wait(1)
end

for i, Part in pairs(RedBox:GetChildren()) do
	Part.Color = Color3.new(1, 0, 0)
	Part.Material = Enum.Material.Neon
	wait(1)
end