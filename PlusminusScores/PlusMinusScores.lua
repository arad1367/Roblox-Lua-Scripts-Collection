-- Plus Minus Scores: A simple Roblox script where touching a green box increases the player's "Cash" leaderstat, and touching a red box decreases it. --
-- We have 2 folders GreenBoxes and RedBoxes --
local GreenBoxes = game.Workspace.GreenBoxes
local RedBoxes = game.Workspace.RedBoxes

game.Players.PlayerAdded:Connect(function(Player)

	local Character = Player.Character or Player.CharacterAdded:Wait()

	local leaderstats = Instance.new("Folder", Player)
	leaderstats.Name = "leaderstats"
	local score = Instance.new("IntValue", leaderstats)
	score.Name = "score"
	score.Value = 0

	for i, box in pairs(GreenBoxes:GetChildren()) do
		if box:IsA("Part") then
			local touched = false
			box.Touched:Connect(function(Hit)
				if not touched then
					touched = true
					score.Value += 10
					box:Destroy()
				end
			end)
		end
	end

	for i, box in pairs(RedBoxes:GetChildren()) do
		if box:IsA("Part") then
			local touched = false
			box.Touched:Connect(function(Hit)
				if not touched then
					touched = true
					score.Value -= 10
					box:Destroy()
				end
			end)
		end
	end

end)
