if CustomizableWeaponry then
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("5.56x30mm", "5.56x30mm Rounds", 5.56, 24)

SWEP.magType = "arMag"
if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "SPAS-12"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 0.8
	SWEP.SelectIcon = surface.GetTextureID("VGUI/hud/hud_mw3_spas12")
	killicon.Add("mw3_spas12", "VGUI/hud/hud_mw3_spas12_kill", Color(255, 0, 255, 0))

	SWEP.MuzzleEffect = "muzzleflash_shotgun"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = false
	SWEP.ShellScale = 0.7
	SWEP.Shell = "shotshell"
	SWEP.ShellOffsetMul = 1
	SWEP.ShellDelay = 0.7
	SWEP.ShellPosOffset = {x = 3.5, y = 0, z = -0}
	
	SWEP.ForeGripOffsetCycle_Draw = 0.4
	SWEP.ForeGripOffsetCycle_Reload = 0.75
	SWEP.ForeGripOffsetCycle_Reload_Empty = .84
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_ma85_mw3_spas12.mdl"
	SWEP.WMPos = Vector( -35, -0.3, 3.6)
	SWEP.WMAng = Vector(-5, 86, 180)



	SWEP.IronsightPos = Vector(-3.9543, 3, 1.5985)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.MW3HOLOPos = Vector(-3.9495, -1.9424, 0.6898)
	SWEP.MW3HOLOAng = Vector(0, 0, 0)

	SWEP.MW3RDSPos = Vector(-3.9441, -4.5015, 1.1135)
	SWEP.MW3RDSAng = Vector(0, 0, 0)



SWEP.SprintPos = Vector(0.92, 0, -1.48)
SWEP.SprintAng = Vector(-8.5, 40.4, -12.4)
	
SWEP.CustomizePos = Vector(8.72, -6.432, -1.4)
SWEP.CustomizeAng = Vector(14.9, 64.2, 0)

	SWEP.AlternativePos = Vector(-0.32, 0, -0.64)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	--SWEP.BoltBone = "j_reload"
	SWEP.BoltShootOffset = Vector(-4, 0, 0)
	SWEP.HoldBoltWhileEmpty = false
	SWEP.DontHoldWhenReloading = true
	SWEP.BoltBonePositionRecoverySpeed = 25
	
	
	SWEP.AttachmentModelsVM = {
	["md_reflex"] = { type = "Model", model = "models/mw3_attachments/scopes/mw3_att_reflex.mdl", bone = "tag_weapon", rel = "", pos = Vector(4, 0, 2.3), angle = Angle(0, -90, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_eotech"] = { type = "Model", model = "models/mw3_attachments/scopes/mw3_att_holographic.mdl", bone = "tag_weapon", rel = "", pos = Vector(3.5, 0, 2.5), angle = Angle(0, -90, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_saker"] = { type = "Model", model = "models/mw3_attachments/mods/mw3_att_silencer_large.mdl", bone = "tag_weapon", rel = "", pos = Vector(27, 0, 1.65), angle = Angle(0, -90, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.ForegripOverridePos = {}


SWEP.LaserPosAdjust = Vector(0, 0, 0)
SWEP.LaserAngAdjust = Angle(0, 0, 0) 

 SWEP.LuaVMRecoilAxisMod = {vert = 0, hor = 0, roll = 0, forward = 2, pitch = 2}
 

end



SWEP.Animations = {fire = {"fire"},
	reload_start = "reload_start",
	insert = "reload_loop",
	reload_end = "reload_end",
	idle = "idle",
	draw = "draw"}

SWEP.SightBGs = {main = 1, none = 1}
SWEP.LuaViewmodelRecoil = false
SWEP.FullAimViewmodelRecoil = true


SWEP.Attachments = {[1] = {header = "Sight", offset = {1200, -200}, atts = {"md_reflex", "md_eotech"}},
	[2] = {header = "Barrel", offset = {300,200}, atts = {"md_saker"}}}


SWEP.Sounds = {	reload_start = {[1] = {time = 0.1, sound = "MW3_SPAS12_LIFT"},
	[2] = {time = 2.5, sound = "MW3_SPAS12_SHELL"}},
		
	reload_loop = {[1] = {time = 0.2, sound = "MW3_SPAS12_SHELL"}},
	
	reload_end = {[1] = {time = 0.3, sound = "MW3_SPAS12_OPEN"},
	[2] = {time = 0.5, sound = "MW3_SPAS12_CLOSE"}},
	
	fire = {[1] = {time = 0.6, sound = "MW3_SPAS12_OPEN"},
	[2] = {time = 0.8, sound = "MW3_SPAS12_CLOSE"}},
	
	reload_start_grip = {[1] = {time = 0.1, sound = "MW3_SPAS12_LIFT"},
	[2] = {time = 2.5, sound = "MW3_SPAS12_SHELL"}},
		
	reload_loop_grip = {[1] = {time = 0.2, sound = "MW3_SPAS12_SHELL"}},
	
	reload_end_grip = {[1] = {time = 0.3, sound = "MW3_SPAS12_OPEN"},
	[2] = {time = 0.5, sound = "MW3_SPAS12_CLOSE"}},
	
	fire_grip = {[1] = {time = 0.6, sound = "MW3_SPAS12_OPEN"},
	[2] = {time = 0.8, sound = "MW3_SPAS12_CLOSE"}}}
		

SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pump"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0"

SWEP.Author			= "Moka_Akashiya85"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_ma85_mw3_spas12.mdl"
SWEP.WorldModel		= "models/weapons/w_ma85_mw3_spas12.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 8
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 60/45
SWEP.FireSound = "MW3_spas12_FIRE"
SWEP.FireSoundSuppressed = "MW3_spas12_FIRESIL"
SWEP.Recoil = 2
SWEP.ADSFireAnim 			= true
SWEP.ReticleInactivityPostFire = 1.4

SWEP.HipSpread = 0.1
SWEP.AimSpread = 0.05
SWEP.VelocitySensitivity = 1
SWEP.MaxSpreadInc = 0.05
SWEP.ClumpSpread = 0.02
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 8
SWEP.Damage = 20
SWEP.DeployTime = 1

SWEP.ReloadStartTime = 0.5
SWEP.InsertShellTime = 0.66
SWEP.ReloadFinishWait = 1.1
SWEP.ShotgunReload = true
SWEP.SnapToIdlePostReload = false
SWEP.Chamberable = false
end