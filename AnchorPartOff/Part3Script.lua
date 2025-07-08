-- AnchorPartOff --
-- Disables a part's anchor a few seconds after the player touches it --

-- Part3 Script --
local Part3 = script.Parent

Part3.Touched:Connect(function()
	wait(2)
	Part3.Anchored = false
end)