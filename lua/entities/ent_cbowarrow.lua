
AddCSLuaFile()

DEFINE_BASECLASS( "base_anim" )


ENT.PrintName		= "NIGGER"
ENT.Author			= "ARNOLD YA-KNOW-WHO"
ENT.Information		= "SUCK MY DICK"
ENT.Category		= "FUCKS I GIVE"

ENT.Editable			= false
ENT.Spawnable			= false
ENT.AdminOnly			= false
ENT.RenderGroup 		= RENDERGROUP_TRANSLUCENT
ENT.Damage = 6
ENT.ColorVector	= nil
ENT.Rico	= 1
ENT.Goal	= 0
--[[---------------------------------------------------------
   Name: Initialize
-----------------------------------------------------------]]
function ENT:Initialize()

	if ( SERVER ) then
		local trail = util.SpriteTrail(self, 0, Color(255,255,255), false, 10, 0.1, 0.2, 1 / ( 15 + 0.1 ) * 0.5, "trails/laser.vmt")
		self:SetModel( "models/weapons/arrow.mdl" )
		self:PhysicsInitSphere( 0.1, "metal_bouncy" )
		self:SetCollisionBounds( Vector( -0.1, -0.1, -0.1 ), Vector( 0.1, 0.1, 0.1 ) )
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_CUSTOM)
		self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
		self:SetRenderMode(RENDERMODE_TRANSALPHA)
		--self:SetColor(Color(0,0,0,0))

		local phys = self:GetPhysicsObject()
		if IsValid(phys) then
			phys:Wake()
			phys:SetMass(1)
			phys:EnableDrag(false)
			phys:EnableGravity(false)
			phys:SetBuoyancyRatio(0)
		end
	else 
		self.LightColor = Vector( 0, 0, 0 )
	end
end
function ENT:Think()
	--self:SetAngles(self:GetVelocity():Angle())
end
function ENT:PhysicsCollide( data, physobj )
	self:SetPos(self:GetPos()+data.OurOldVelocity:GetNormalized()*20)
	local trace = util.TraceLine({
		start = self:GetPos(),
		endpos = data.HitPos,
		filter = self
	})
	local bullet = {}
	bullet.Num 		= 1
	bullet.Src 		= self:GetPos()
	bullet.Dir 		= trace.Normal
	bullet.Spread = Vector(0,0,0)
	bullet.Tracer	= 0
	bullet.TracerName = nil
	bullet.Force	= 10
	bullet.Damage	= self.Damage
	bullet.Callback = function(ply,round,dmginfo)
		dmginfo:SetDamageType(DMG_BULLET)
	end
	self.Owner:FireBullets( bullet )
	self:SetMoveType(MOVETYPE_NONE)
	if !IsValid(data.HitEntity) then
		self:Fire("kill","",20)
	else
		self:Remove()
	end
end