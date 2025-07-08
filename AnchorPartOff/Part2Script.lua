-- AnchorPartOff --
-- Disables a part's anchor a few seconds after the player touches it --

-- Part2 Script --
local Part2 = script.Parent

Part2.Touched:Connect(function()
	wait(2)
	Part2.Anchored = false
end)