-- AnchorPartOff --
-- Disables a part's anchor a few seconds after the player touches it --

-- StartPart Script --
local StartPart = script.Parent

repeat
	for i=1, 26, 1 do
		StartPart.Position += Vector3.new(0, 1, 0)
		wait(0.1)
	end
	for i=1, 26, 1 do
		StartPart.Position -= Vector3.new(0, 1, 0)
		wait(0.1)
	end
until false