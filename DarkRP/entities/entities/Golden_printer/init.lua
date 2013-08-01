-- RRPX Money Printer by philxyz  edited by Ninjarudo
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
 
function ENT:Initialize()
	self:SetModel("models/props_c17/consolebox01a.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then phys:Wake() end
	self.sparking = false
	self.damage = 200
	self.IsMoneyPrinter = true
	timer.Simple(5, self.CreateMoneybag, self)
end
 
function ENT:OnTakeDamage(dmg)
	if self.burningup then return end
 
	self.damage = self.damage - dmg:GetDamage()
	if self.damage <= 0 then
		local rnd = math.random(1, 10)
		if rnd < 3 then
			self:BurstIntoFlames()
		else
			self:Destruct()
			self:Remove()
		end
	end
end
 
function ENT:Destruct()
	local vPoint = self:GetPos()
	local effectdata = EffectData()
	effectdata:SetStart(vPoint)
	effectdata:SetOrigin(vPoint)
	effectdata:SetScale(1)
	util.Effect("Explosion", effectdata)
	Notify(self.dt.owning_ent, 1, 4, "Your Golden Money Printer has exploded!")
end
 
function ENT:Fireball()
	if not self:IsOnFire() then return end
	local dist = math.random(30, 300) -- Explosion radius
	self:Destruct()
	for k, v in pairs(ents.FindInSphere(self:GetPos(), dist)) do
		if not v:IsPlayer() and not v.IsMoneyPrinter then v:Ignite(math.random(5, 22), 0) end
	end
	self:Remove()
end
 
local function PrintMore(ent)
	if ValidEntity(ent) then
		ent.sparking = true
		timer.Simple(1, ent.CreateMoneybag, ent)
	end
end
 
function ENT:CreateMoneybag()
	if not ValidEntity(self) then return end
	if self:IsOnFire() then return end
	local MoneyPos = self:GetPos()
 
	local amount = 1000
	if amount == 0 then
		amount = 1000
	end
 
	DarkRPCreateMoneyBag(Vector(MoneyPos.x + 15, MoneyPos.y, MoneyPos.z + 15), amount)
	self.sparking = false
	timer.Simple(math.random(100, 150), PrintMore, self)
end
 
function ENT:Think()
	if not self.sparking then return end
 
	local effectdata = EffectData()
	effectdata:SetOrigin(self:GetPos())
	effectdata:SetMagnitude(1)
	effectdata:SetScale(1)
	effectdata:SetRadius(2)
	util.Effect("Sparks", effectdata)
end