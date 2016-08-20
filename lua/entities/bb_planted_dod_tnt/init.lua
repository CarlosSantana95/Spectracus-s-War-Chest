AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

/*---------------------------------------------------------
   Name: ENT:Initialize()
---------------------------------------------------------*/
function ENT:Initialize()

	self.Owner = self.Entity.Owner

	if !(self.Owner:IsValid()) then
		self:Remove()
		return
	end
	
	if ( file.Exists( "models/weapons/w_tnt.mdl", "GAME" ) ) then
	self.Entity:SetModel("models/weapons/w_tnt.mdl") else
	self.Entity:SetModel("models/props_lab/huladoll.mdl")
	end
	self.Entity:PhysicsInit(SOLID_VPHYSICS)
	self.Entity:SetSolid(SOLID_VPHYSICS)
	self.Entity:DrawShadow(false)

	self.Entity:SetCollisionGroup(COLLISION_GROUP_WEAPON)
	
	local phys = self.Entity:GetPhysicsObject()

	if phys:IsValid() then
		phys:Wake()
	end

	self:SetDTInt(0, self.Timer)
	self.ThinkTimer = CurTime() + self:GetDTInt(0)
	self:SpriteSetter()
end

/*---------------------------------------------------------
   Name: ENT:Use()
---------------------------------------------------------*/
function ENT:Use(activator, caller)

end

function ENT:OnRemove()
	--fuseburn:Stop()
end

/*---------------------------------------------------------
   Name: ENT:Think()
---------------------------------------------------------*/
function ENT:Think()

	if self.ThinkTimer < CurTime() then
		self:Explosion()
	end

end

/*---------------------------------------------------------
   Name: ENT:Explosion()
---------------------------------------------------------*/
function ENT:Explosion()

	if not IsValid(self.Owner) then
		self.Entity:Remove()
		return
	end

	local effectdata = EffectData()
		effectdata:SetOrigin(self.Entity:GetPos())
		effectdata:SetRadius(1000)
		effectdata:SetMagnitude(1000)
	util.Effect("HelicopterMegaBomb", effectdata)
	
	local exploeffect = EffectData()
		exploeffect:SetOrigin(self.Entity:GetPos())
		exploeffect:SetStart(self.Entity:GetPos())
	util.Effect("Explosion", exploeffect, true, true)
	
	local effectdata = EffectData()
	effectdata:SetOrigin(self.Entity:GetPos())			// Where is hits
	effectdata:SetNormal(self:Normalizer())		// Direction of particles
	effectdata:SetEntity(self.Entity)		// Who done it?
	effectdata:SetScale(4)			// Size of explosion
	effectdata:SetRadius(67)		// What texture it hits
	effectdata:SetMagnitude(18)			// Length of explosion trails
	util.Effect( "m9k_gdcw_cinematicboom", effectdata )
	--generic default, you are a god among men
	
	util.BlastDamage(self.Entity, (self:OwnerCheck()), self.Entity:GetPos(), 1000, 800)
	
	local shake = ents.Create("env_shake")
		shake:SetOwner(self.Owner)
		shake:SetPos(self.Entity:GetPos())
		shake:SetKeyValue("amplitude", "2000")	// Power of the shake
		shake:SetKeyValue("radius", "1250")		// Radius of the shake
		shake:SetKeyValue("duration", "2.5")	// Time of shake
		shake:SetKeyValue("frequency", "255")	// How har should the screenshake be
		shake:SetKeyValue("spawnflags", "4")	// Spawnflags(In Air)
		shake:Spawn()
		shake:Activate()
		shake:Fire("StartShake", "", 0)
		
	local push = ents.Create("env_physexplosion")
		push:SetOwner(self.Owner)
		push:SetPos(self.Entity:GetPos())
		push:SetKeyValue("magnitude", 100)
		push:SetKeyValue("radius", 1250)
		push:SetKeyValue("spawnflags", 2+16)
		push:Spawn()
		push:Activate()
		push:Fire("Explode", "", 0)
		push:Fire("Kill", "", .25)
		

	self.Entity:EmitSound(Sound("C4.Explode"))

	self.Entity:Remove()

end

function ENT:OwnerCheck()
	if IsValid(self.Owner) then
		return (self.Owner)
	else
		return (self.Entity)
	end
end

function ENT:Normalizer()

	local startpos = self.Entity:GetPos()
	
	local downtrace = {}
	downtrace.start = startpos
	downtrace.endpos = startpos + self.Entity:GetUp()*-5
	downtrace.filter = self.Entity
	tracedown = util.TraceLine(downtrace) 
	
	if (tracedown.Hit) then
		return (tracedown.HitNormal)
	else return (Vector(0,0,1))
	end
	
end

function ENT:SpriteSetter()
	
	local tip = ents.Create("env_sprite")
	tip:SetPos(self.Entity:GetPos() + self.Entity:GetForward() * 12.4 + (self.Entity:GetRight() * -4))
	tip:SetParent(self.Entity)
	tip:SetKeyValue("model", "light_glow01.vmt")
	tip:SetKeyValue("rendercolor", "255 93 0")
	tip:SetKeyValue("scale", ".1")
	tip:SetKeyValue("rendermode", "9")
	tip:Spawn()
	tip:Activate()
	tip:Fire("Kill", "", 2)

	timer.Simple(2, function() if IsValid(self.Entity) then self:Middle1() end end)
end

function ENT:Middle1()

	local middle1 = ents.Create("env_sprite")
	middle1:SetPos(self.Entity:GetPos() + self.Entity:GetForward() * 11.5 + (self.Entity:GetRight() * -2.7))
	middle1:SetParent(self.Entity)
	middle1:SetKeyValue("model", "light_glow01.vmt")
	middle1:SetKeyValue("rendercolor", "255 93 0")
	middle1:SetKeyValue("scale", ".1")
	middle1:SetKeyValue("rendermode", "9")
	middle1:Spawn()
	middle1:Activate()
	middle1:Fire("Kill", "", 2)
	
	timer.Simple(2, function() if IsValid(self.Entity) then self:Middle2() end end)

end

function ENT:Middle2()

	local middle2 = ents.Create("env_sprite")
	middle2:SetPos(self.Entity:GetPos() + self.Entity:GetForward() * 10 + (self.Entity:GetRight() * -1.4))
	middle2:SetParent(self.Entity)
	middle2:SetKeyValue("model", "light_glow01.vmt")
	middle2:SetKeyValue("rendercolor", "255 93 0")
	middle2:SetKeyValue("scale", ".1")
	middle2:SetKeyValue("rendermode", "9")
	middle2:Spawn()
	middle2:Activate()
	middle2:Fire("Kill", "", 2)
	
	timer.Simple(2, function() if IsValid(self.Entity) then self:Middle3() end end)

end

function ENT:Middle3()

	local middle3 = ents.Create("env_sprite")
	middle3:SetPos(self.Entity:GetPos() + self.Entity:GetForward() * 8.5 + (self.Entity:GetRight() * -.7))
	middle3:SetParent(self.Entity)
	middle3:SetKeyValue("model", "light_glow01.vmt")
	middle3:SetKeyValue("rendercolor", "255 93 0")
	middle3:SetKeyValue("scale", ".1")
	middle3:SetKeyValue("rendermode", "9")
	middle3:Spawn()
	middle3:Activate()
	middle3:Fire("Kill", "", 2)
	
	timer.Simple(2, function() if IsValid(self.Entity) then self:Bingo() end end)

end

function ENT:Bingo()

	local bingo = ents.Create("env_sprite")
	bingo:SetPos(self.Entity:GetPos() + self.Entity:GetForward() * 7)
	bingo:SetParent(self.Entity)
	bingo:SetKeyValue("model", "light_glow01.vmt")
	bingo:SetKeyValue("rendercolor", "255 93 0")
	bingo:SetKeyValue("scale", ".1")
	bingo:SetKeyValue("rendermode", "9")
	bingo:Spawn()
	bingo:Activate()
	bingo:Fire("Kill", "", 2)
	
end