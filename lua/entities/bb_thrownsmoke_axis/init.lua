AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include('shared.lua')

function ENT:Initialize()

	self.Owner = self.Entity.Owner
	
	if IsMounted("dod") then
		self.Entity:SetModel("models/weapons/w_smoke_ger.mdl") 
	else
		self.Entity:SetModel("models/Items/grenadeAmmo.mdl") //your model goes here 
	end
	
	self.Entity:PhysicsInit( SOLID_VPHYSICS )
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )
	self.Entity:DrawShadow( false )
	self.Entity:SetCollisionGroup( COLLISION_GROUP_WEAPON )
	
	local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
	phys:Wake()
	phys:AddAngleVelocity(Vector(0, 1200, 0))
	phys:SetMass(6.5)
	end

	self.timeleft = CurTime() + 3.5 -- HOW LONG BEFORE EXPLOSION
	self:Think()
end

 function ENT:Think()
	
	if self.timeleft < CurTime() then
		self:Explosion()	
	end

	self.Entity:NextThink( CurTime() )
	return true
end

function ENT:Explosion()

	pos = self.Entity:GetPos()
	
	local gas = EffectData()
		gas:SetOrigin(pos)
		gas:SetEntity(self.Owner) //i dunno, just use it!
		gas:SetScale(1)
	util.Effect("dod_released_smoke", gas)
	
	self.Entity:EmitSound("BaseSmokeEffect.Sound")

	self.Entity:Remove()
end

/*---------------------------------------------------------
OnTakeDamage
---------------------------------------------------------*/
function ENT:OnTakeDamage( dmginfo )
end


/*---------------------------------------------------------
Use
---------------------------------------------------------*/
function ENT:Use( activator, caller, type, value )
end


/*---------------------------------------------------------
StartTouch
---------------------------------------------------------*/
function ENT:StartTouch( entity )
end


/*---------------------------------------------------------
EndTouch
---------------------------------------------------------*/
function ENT:EndTouch( entity )
end


/*---------------------------------------------------------
Touch
---------------------------------------------------------*/
function ENT:Touch( entity )
end