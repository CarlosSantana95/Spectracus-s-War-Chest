if ( !CustomizableWeaponry ) then return end
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")
CustomizableWeaponry:registerAmmo("7.62x54mmR", "7.62x54mmR Rounds", 7.62, 54)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "PKM"
	SWEP.CSMuzzleFlashes = true
	
	killicon.Add("cw_pkm", "vgui/hud/cw_pkm", Color(255, 255, 255, 255))
	SWEP.SelectIcon = surface.GetTextureID("vgui/hud/cw_pkm")
	
	SWEP.IronsightPos = Vector(-2.217, 7, 0.381)
	SWEP.IronsightAng = Vector(-0.426, 0.02, 0)
	
	SWEP.AimpointPos = Vector(-2.221, -6.1, -0.301)
	SWEP.AimpointAng = Vector(-0.068, 0.014, 0)
	
	SWEP.EoTechPos = Vector(-2.215, -5.803, -0.78)
	SWEP.EoTechAng = Vector(-0.069, 0.014, 0)
	
	SWEP.MicroT1Pos = Vector(-2.211, -6.271, -0.364)
	SWEP.MicroT1Ang = Vector(0, 0.005, 0)
	
	SWEP.CmorePos = Vector(-2.25, -5.823, -0.38)
	SWEP.CmoreAng = Vector(-1.13, -0.058, 0)
	
	SWEP.ReflexPos = Vector(-2.211, -5.823, -0.101)
	SWEP.ReflexAng = Vector(-1.13, 0.057, 0)
	
	SWEP.ACOGPos = Vector(-2.234, -5.27, -0.635)
	SWEP.ACOGAng = Vector(-0.069, 0.014, 0)
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(-0.24, 0, -0.48)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.SprintPos = Vector(0, 0, 0)
	SWEP.SprintAng = Vector(-20, 20, 0)

	SWEP.ViewModelMovementScale = 1
	

	
	SWEP.MuzzleEffect = "muzzleflash_ak47"
	SWEP.PosBasedMuz = false
	SWEP.ShellScale = 0.7
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 3, y = -6, z = -2}
	
	SWEP.BoltBone = "bolt"
	SWEP.BoltShootOffset = Vector(-3.6, 0, 0)
	SWEP.OffsetBoltOnBipodShoot = true
	
	SWEP.SightWithRail = true
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/alraekinn/weapons/pkm/pkm.mdl"
	SWEP.WMPos = Vector(2, 11, -14.5)
	SWEP.WMAng = Vector(-13, 1, 180)
	
	SWEP.AttachmentModelsVM = {
		["md_rail"] = {model = "models/wystan/attachments/rail.mdl", bone = "back", pos = Vector(-0.027, 3.04, -0.315), angle = Angle(0, 90, 0), size = Vector(0.537, 0.949, 0.75)},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "back", pos = Vector(-0.52, 13.728, -9.604), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "back", pos = Vector(-0.055, 7.493, -3.145), angle = Angle(0, 180, 0), size = Vector(0.75, 0.75, 0.75)},
		["md_bipod"] = {model = "models/wystan/attachments/bipod.mdl", bone = "PKM", pos = Vector(0.449, -11.905, -0.7), angle = Angle(0, 180, 0), size = Vector(1, 1, 1)},
		["md_reflex"] = { type = "Model", model = "models/attachments/kascope.mdl", bone = "back", rel = "", pos = Vector(-0.234, 0.666, 1.21), angle = Angle(0, 180, 0), size = Vector(0.55, 0.55, 0.55), color = Color(255, 255, 255, 0)},
		["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", bone = "back", pos = Vector(0.039, 6.934, -3.188), angle = Angle(0, 180, 0), size = Vector(0.75, 0.75, 0.75)}
	}
end

SWEP.LuaViewmodelRecoil = false
SWEP.ADSFireAnim = false
SWEP.BipodFireAnim = true

SWEP.Attachments = {[1] = {header = "Sight", offset = {300, -400},  atts = {"md_reflex", "md_eotech", "md_aimpoint", "md_acog"}},
	[2] = {header = "Barrel", offset = {-600, 300}, atts = {"md_bipod"}},
	["+reload"] = {header = "Ammo", offset = {1500, 400}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {fire = {"shoot1", "shoot2"},
	reload = "reload",
	idle = "idle1",
	draw = "draw"}
	
SWEP.Sounds = {	draw = {{time = 0, sound = ""}},

	reload = {[1] = {time = 0.6, sound = "CW_PKM_COVEROPEN"},
	[2] = {time = 0.8, sound = "CW_PKM_BELTOUT"},
	[3] = {time = 0.8, sound = "CW_FOLEY_LIGHT"},
	[4] = {time = 1.4, sound = "CW_PKM_BELTMOVE"},
	[5] = {time = 2.4, sound = "CW_PKM_MAGOUT"},
	[6] = {time = 2.6, sound = "CW_FOLEY_MEDIUM"},
	[7] = {time = 3.3, sound = "CW_PKM_MAGIN"},
	[8] = {time = 3.8, sound = "CW_PKM_BELTOUT"},
	[9] = {time = 4.0, sound = "CW_PKM_BELTMOVE"},
	[10] = {time = 4.8, sound = "CW_PKM_COVERCLOSE"},
	[11] = {time = 5.2, sound = "CW_PKM_COVERSMACK"},
	[12] = {time = 5.8, sound = "CW_PKM_BOLT"},
	[13] = {time = 6.0, sound = "CW_FOLEY_MEDIUM"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto"}
SWEP.Base = "cw_base"
SWEP.Category = "Spectracus's War Chest"

SWEP.Author			= "Spectracus"
SWEP.Contact		= ""
SWEP.Purpose		= "General-purpose machine gun made in Soviet Union. High stopping power, good for suppressing enemy infantry. Caliber: 7.62x54mmR"
SWEP.Instructions	= ""

SWEP.IronFOV		= 70
SWEP.ViewModelFOV	= 85
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_lmg_weaponrpk.mdl"
SWEP.WorldModel		= "models/weapons/w_mach_pkm1para.mdl"
SWEP.DrawWeaponInfoBox			= true

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 100
SWEP.Primary.DefaultClip	= 100
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x54mmR"
SWEP.Chamberable			= false
SWEP.CaseLength				= 7.62, 54
SWEP.BulletDiameter			= 7.62, 54

SWEP.FireDelay = 0.09
SWEP.FireSound = "PKMFIRE"
SWEP.Recoil = 1.5

SWEP.HipSpread = 1.000
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 45
SWEP.DeployTime = 1

SWEP.ReloadSpeed = 1.0
SWEP.ReloadTime = 6.0
SWEP.ReloadTime_Empty = 6.0
SWEP.ReloadHalt = 6.2
SWEP.ReloadHalt_Empty = 6.2
SWEP.SnapToIdlePostReload = false