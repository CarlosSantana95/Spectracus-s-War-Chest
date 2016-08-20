
//ENT.Base = "base_entity"
ENT.Type = "anim"

ENT.PrintName		= "Fragmentation Grenade"
ENT.Author			= "Spectracus"
ENT.Purpose			= "Standard-issue FDF Fragmentation Grenade."
ENT.Instructions	= nil


/*---------------------------------------------------------
   Name: OnRemove
   Desc: Called just before entity is deleted
---------------------------------------------------------*/
function ENT:OnRemove()
end

function ENT:PhysicsUpdate()
end

function ENT:PhysicsCollide(data,phys)
	if data.Speed > 50 then
		self.Entity:EmitSound(Sound("HEGrenade.Bounce"))
	end
	
	local impulse = -data.Speed * data.HitNormal * .1 + (data.OurOldVelocity * -.1)
	phys:ApplyForceCenter(impulse)
end
