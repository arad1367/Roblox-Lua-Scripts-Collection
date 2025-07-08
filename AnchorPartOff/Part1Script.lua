-- AnchorPartOff --
-- Disables a part's anchor a few seconds after the player touches it --

-- Part1 Script --
local Part1 = script.Parent

Part1.Touched:Connect(function()
	wait(1)
	Part1.Anchored = false
end)