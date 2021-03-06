include("shared.lua")
 
function ENT:Draw()
	self:DrawModel()
 
	local Pos = self:GetPos()
	local Ang = self:GetAngles()
 
	local owner = self.dt.owning_ent
	owner = (ValidEntity(owner) and owner:Nick()) or "unknown"
 
	surface.SetFont("HUDNumber6")
	local TextWidth = surface.GetTextSize("Golden Money printer")
	local TextWidth2 = surface.GetTextSize(owner)
 
	Ang:RotateAroundAxis(Ang:Up(), 90)
 
	cam.Start3D2D(Pos + Ang:Up() * 11.5, Ang, 0.11)
		draw.WordBox(2, -TextWidth*0.5, -30, "Golden Money printer", "HUDNumber6", Color(140, 0, 0, 100), Color(255,255,255,255))
		draw.WordBox(2, -TextWidth2*0.5, 18, owner, "HUDNumber6", Color(140, 0, 0, 100), Color(255,255,255,255))
	cam.End3D2D()
end