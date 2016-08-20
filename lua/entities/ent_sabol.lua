
AddCSLuaFile()

DEFINE_BASECLASS( "base_anim" )

ENT.PrintName		= "Sarumagic"
ENT.Author			= "Spectracus"
ENT.Purpose			= "Sarumanning"
ENT.Category		= "Spectracus's RnD"

ENT.Editable			= false
ENT.Spawnable			= false
ENT.AdminOnly			= false
ENT.RenderGroup 		= RENDERGROUP_TRANSLUCENT

--[[---------------------------------------------------------
   Name: Initialize
-----------------------------------------------------------]]
function ENT:Initialize()
	if ( SERVER ) then
		local trail = util.SpriteTrail(self, 0, Color(255,255,255,255), true, 15, 115, 15, 225/(225+225)*0.1, "vgui/hud/weapon_sarucann.vmt")
		local size = 1
		self:SetModel( "models/effects/combineball.mdl" )
		--self:SetMaterial("vgui/hud/weapon_sarucann.vmt")
		self:SetColor(Color(150,250,150))
		self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
		self:PhysicsInitSphere(0.1,"metal_bouncy")
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_CUSTOM)
		local phys = self:GetPhysicsObject()
		if (phys:IsValid()) then
			phys:Wake()
			phys:SetMass(1)
			phys:EnableGravity(false)
			phys:EnableDrag(false)
			phys:SetBuoyancyRatio(0)
		end
	end
end

--[[---------------------------------------------------------
   Name: SaruBoom
-----------------------------------------------------------]]
function ENT:PhysicsCollide( data )
	util.BlastDamage(self,self.Owner,self:GetPos(),200,100)
	local boomdata = EffectData()
	boomdata:SetStart(self:GetPos())
	boomdata:SetOrigin(self:GetPos())
	util.Effect("Explosion",boomdata)
	self:Remove()
end