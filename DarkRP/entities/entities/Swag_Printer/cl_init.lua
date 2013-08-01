include("shared.lua")

function ENT:Initialize()
end

function ENT:Draw()
	self:DrawModel()

	local Pos = self:GetPos()
	local Ang = self:GetAngles()

	local owner = self:Getowning_ent()
	owner = (IsValid(owner) and owner:Nick()) or "Nobdy owns this crap lelelel"

	surface.SetFont("HUDNumber5")
	local TextWidth = surface.GetTextSize("Swag printer")
	local TextWidth2 = surface.GetTextSize(owner)

	Ang:RotateAroundAxis(Ang:Up(), 90)

	cam.Start3D2D(Pos + Ang:Up() * 11.5, Ang, 0.11)
		draw.WordBox(2, -TextWidth*0.5, -30, "Silver plated printer", "HUDNumber5", Color(204, 204, 204, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth2*0.5, 18, owner, "HUDNumber5", Color(140, 0, 0, 100), Color(255,255,255,255))
	cam.End3D2D()
end

function ENT:Think()
end
