-- AnchorPartOff --
-- Disables a part's anchor a few seconds after the player touches it --

-- EndPart Script --
local EndPart = script.Parent
local Smoke = EndPart.Smoke
local Light = EndPart.SurfaceLight

EndPart.Touched:Connect(function()
	Smoke.Enabled = true
	Light.Enabled = true
end)