if not IsMounted("dod") then return end
-- Variables that are used on both client and server
SWEP.Gun = ("bb_dod_tnt") -- must be the name of your swep but NO CAPITALS!
if (GetConVar(SWEP.Gun.."_allowed")) != nil then
	if not (GetConVar(SWEP.Gun.."_allowed"):GetBool()) then SWEP.Base = "bobs_blacklisted" SWEP.PrintName = SWEP.Gun return end
end
SWEP.Category				= "Spectracus's War Chest"
SWEP.Author				= "Spectracus"
SWEP.Contact				= ""
SWEP.Purpose				= "Trinitrotoluene-based explosive device."
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellEjectAttachment			= "2" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.PrintName				= "TNT"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 4				-- Slot in the weapon selection menu
SWEP.SlotPos				= 48			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox			= true		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   		= 	false	-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- set false if you want no crosshair
SWEP.Weight				= 30			-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "slam"		-- how others view you carrying the weapon
SWEP.UseHands				= true
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg and ar2 make for good sniper rifles

SWEP.ViewModelFOV			= 60
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_tnt.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/Weapons/w_package.mdl"	-- Weapon world model
SWEP.ShowWorldModel 		= false
SWEP.Base				= "bobs_gun_base"
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater 		= true

SWEP.Primary.Sound			= Sound("")		-- Script that calls the primary fire sound
SWEP.Primary.RPM				= 10		-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 1		-- Size of a clip
SWEP.Primary.DefaultClip		= 1		-- Bullets you start with
SWEP.Primary.KickUp				= 0		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false		-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "dodTNT"				
-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. Use AirboatGun for a metal peircing shotgun slug

SWEP.Primary.Round 			= ("bb_planted_dod_tnt")	--NAME OF ENTITY GOES HERE

SWEP.Secondary.IronFOV			= 0		-- How much you 'zoom' in. Less is more! 

SWEP.Timer				= 10	

SWEP.Primary.NumShots	= 0		-- How many bullets to shoot per trigger pull
SWEP.Primary.Damage		= 0	-- Base damage per bullet
SWEP.Primary.Spread		= 0	-- Define from-the-hip accuracy (1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = 0 -- Ironsight accuracy, should be the same for shotguns
--none of this matters for IEDs and other ent-tossing sweps

-- Enter iron sight info and bone mod info below
SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SightsPos = Vector(0, 0, 0)	-- These are the same as IronSightPos and IronSightAng
SWEP.SightsAng = Vector(0, 0, 0)	-- No, I don't know why
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(0, 0, 0)

SWEP.VElements = {
	["tnt"] = { type = "Model", model = "models/weapons/w_tnt.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5, 5, -2), angle = Angle(-50, 20, 200), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["tnt"] = { type = "Model", model = "models/weapons/w_tnt.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.633, 4.715, -4.261), angle = Angle(-66.364, 20.652, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

--and now to the nasty parts of this swep...

function SWEP:PrimaryAttack()
	if self:CanPrimaryAttack() then
	self.Weapon:SetNextPrimaryFire(CurTime()+1/(self.Primary.RPM/60))

	local tr = {}
	tr.start = self.Owner:GetShootPos()
	tr.endpos = self.Owner:GetShootPos() + 100 * self.Owner:GetAimVector()
	tr.filter = {self.Owner}
	local trace = util.TraceLine(tr)
	
	self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	
	timer.Simple(1.9, function()
	if SERVER and self.Weapon != nil then if self.Weapon:GetOwner():GetActiveWeapon():GetClass() == self.Gun then
		if self:CanPrimaryAttack() then
			self.Weapon:SetNextSecondaryFire(CurTime() + 0.3)
	
			local tr = {}
			tr.start = self.Owner:GetShootPos()
			tr.endpos = self.Owner:GetShootPos() + 100 * self.Owner:GetAimVector()
			tr.filter = {self.Owner}
			local trace = util.TraceLine(tr)

			self:TakePrimaryAmmo(1)

			if (CLIENT) then return end
	
			C4 = ents.Create(self.Primary.Round)
			C4:SetPos(trace.HitPos + trace.HitNormal * 1.7)
			trace.HitNormal.z = -trace.HitNormal.z
			C4:SetAngles(trace.HitNormal:Angle() - Angle(90, 180, 0))
			C4.Owner = self.Owner
			C4.Timer = self.Timer
			C4:Spawn()			
			
			local boxes
			parentme = {}
			parentme[1] = "m9k_ammo_40mm"
			parentme[2] = "m9k_ammo_c4"
			parentme[3] = "m9k_ammo_frags"
			parentme[4] = "m9k_ammo_ieds"
			parentme[5] = "m9k_ammo_nervegas"
			parentme[6] = "m9k_ammo_nuke"
			parentme[7] = "m9k_ammo_proxmines"
			parentme[8] = "m9k_ammo_rockets"
			parentme[9] = "m9k_ammo_stickynades"
			parentme[10] = "m9k_ammo_357"
			parentme[11] = "m9k_ammo_ar2"
			parentme[12] = "m9k_ammo_buckshot"
			parentme[13] = "m9k_ammo_pistol"
			parentme[14] = "m9k_ammo_smg"
			parentme[15] = "m9k_ammo_sniper_rounds"
			parentme[16] = "m9k_ammo_winchester"
			
			if trace.Entity != nil and trace.Entity:IsValid() then
				for k, v in pairs (parentme) do
					if trace.Entity:GetClass() == v then
						boxes = trace.Entity
					end
				end
			end
			
			if trace.Entity and trace.Entity:IsValid() then
				if boxes and trace.Entity:GetPhysicsObject():IsValid() then
				C4:SetParent(trace.Entity)
				trace.Entity.Planted = true
			elseif not trace.Entity:IsNPC() and not trace.Entity:IsPlayer() and trace.Entity:GetPhysicsObject():IsValid() then
					constraint.Weld(C4, trace.Entity)
				end
			else
				C4:SetMoveType(MOVETYPE_NONE)
			end
			
			if not trace.Hit then
				C4:SetMoveType(MOVETYPE_VPHYSICS)
			end

			end
			self.Owner:SetAnimation(PLAYER_ATTACK1)
	end
	end 
	end)
	local wait = self.Owner:GetViewModel():SequenceDuration() 
	self:CheckWeaponsAndAmmo(wait)
end
end

function SWEP:Think()

end

function SWEP:CheckWeaponsAndAmmo(wait)
	timer.Simple(wait, function()
	if  IsValid(self.Owner) and IsValid(self.Weapon) then if self.Weapon:GetOwner():GetActiveWeapon():GetClass() == self.Gun then 
		if self.Weapon:Clip1() == 0 && self.Owner:GetAmmoCount( self.Weapon:GetPrimaryAmmoType() ) == 0 then
			timer.Simple(.01, function() if SERVER then
				if self.Owner == nil then return end
					local stripvar = GetConVarNumber("M9KWeaponStrip")
					if stripvar == nil then 
						self.Owner:StripWeapon(self.Gun)
					end
					if stripvar == 1 then
						self.Owner:StripWeapon(self.Gun)
					end
				end end)
		else timer.Simple(.25, function()
			self.Weapon:DefaultReload( ACT_VM_DRAW ) end)
		end
	end end
	end)
end

if GetConVar("M9KUniqueSlots") != nil then
	if not (GetConVar("M9KUniqueSlots"):GetBool()) then 
		SWEP.SlotPos = 2
	end
end

