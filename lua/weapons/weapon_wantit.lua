AddCSLuaFile()

SWEP.Author			= "Strafe & Spectracus"
SWEP.Purpose		= "What Stalin wants, He gets."
SWEP.Category		= "Spectracus's War Chest"

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true

SWEP.ViewModel			= "models/weapons/v_pfinger.mdl"
SWEP.WorldModel			= ""
SWEP.BounceWeaponIcon   = false

SWEP.Primary.ClipSize		= -1
SWEP.Primary.DefaultClip	= -1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false
SWEP.ViewModelFOV = 80

SWEP.PrintName			= "''I WANT IT''"
SWEP.Slot				= 1
SWEP.SlotPos			= 2
SWEP.DrawAmmo			= false

if CLIENT then
SWEP.WepSelectIcon = surface.GetTextureID("vgui/entities/weapon_wantit")
end

function SWEP:Reload()
end

function SWEP:Think()
end

function SWEP:PrimaryAttack()
	self:SetNextPrimaryFire( CurTime() + 1.5 )
	self:ShootEffects( self )
	self:SendWeaponAnim(ACT_VM_HITCENTER)
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	self:EmitSound("iwantit"..math.random(1,2)..".wav",400,100)
	if !SERVER then return end
	timer.Simple(0.5, function() self:StealWeapon() end)
	local trace = self.Owner:GetEyeTrace()
	if trace.Hit then
		local ent = trace.Entity
		ent:EmitSound("iwantit"..math.random(1,2)..".wav",400,100)
	end
end

function SWEP:StealWeapon()
	if !SERVER then return end
	if !IsValid(self) then return end
	--[[local trace = util.TraceLine({
		start = self.Owner:GetShootPos(),
		endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector()*128,
		filter = self.Owner
	})]]--
	local trace = self.Owner:GetEyeTrace()
	if trace.Hit then
		local ent = trace.Entity

		if IsValid(ent) and (ent:IsPlayer() or ent:IsNPC()) and IsValid(ent:GetActiveWeapon()) then
			local gun = ent:GetActiveWeapon():GetClass()
			--ent:EmitSound("iwantit"..math.random(1,2)..".wav",400,100)
			if ent:IsPlayer() then
				ent:StripWeapon(gun)
			else
				ent:GetActiveWeapon():Remove()
			end
			self.Owner:EmitSound("igotit"..math.random(1,2)..".wav")
			self.Owner:Give(gun)
			if !self.Owner:HasWeapon(gun) then
				self.Owner:SetActiveWeapon(gun)
			end
		else
			
		end
	else
	end
end

function SWEP:SecondaryAttack()

	-- Right click does nothing..
	
end

function SWEP:ShouldDropOnDie()
	return false
end

function SWEP:Initialize()
	self:SetWeaponHoldType("pistol")
end