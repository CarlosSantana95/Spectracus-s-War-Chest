AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "RK-95"
	SWEP.CSMuzzleFlashes = true

	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/cw2/weapons/w_rif_rk95.mdl"
	SWEP.WMPos = Vector(-1, 0.5, -0.2)
	SWEP.WMAng = Vector(-10, 1.5, 180)
	
	SWEP.IronsightPos = Vector(3.272, -2, 1.83)
	SWEP.IronsightAng = Vector(0.754, 0.035, 0)

	SWEP.TrijiconPos = Vector(3.258, -4, 0.77)
	SWEP.TrijiconAng = Vector(1.366, 0, 0)
	
	SWEP.EoTechPos = Vector(3.263, -6.632, 0.759)
	SWEP.EoTechAng = Vector(1.967, 0, 0)
	
	SWEP.AimpointPos = Vector(3.286, -2, 0.92)
	SWEP.AimpointAng = Vector(0, 0, 0)
	
	SWEP.ACOGPos = Vector(-2.234, -5.27, -0.635)
	SWEP.ACOGAng = Vector(-0.069, 0.014, 0)
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}

	SWEP.PSO1Pos = Vector(-2.234, -5.27, -0.635)
	SWEP.PSO1Ang = Vector(0, 0, 0)
	SWEP.PSO1AxisAlign = {right = 0, up = 0.4, forward = -90}
	
	SWEP.ShortenedPos = Vector(-2.428, -4.005, 0.815)
	SWEP.ShortenedAng = Vector(0, -0.036, 0)

	SWEP.SprintPos = Vector(1, -1, -2)
	SWEP.SprintAng = Vector(-14.775, -32.362, 30.25)

	SWEP.CustomizePos = Vector(-4.824, -1.005, -1.206)
	SWEP.CustomizeAng = Vector(21.809, -25.327, -21.81)
	
	SWEP.AlternativePos = Vector(-0.24, 0, -0.48)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.ViewModelMovementScale = 1.15
	
	killicon.Add("cw_sako95", "vgui/hud/cw_sako95", Color(255, 255, 255, 255))
	SWEP.SelectIcon = surface.GetTextureID("vgui/hud/cw_sako95")
	
	SWEP.MuzzleEffect = "muzzleflash_ak74"
	SWEP.PosBasedMuz = true
	SWEP.MuzzlePsMod = {x = -2, y = 0, z = -3}
	SWEP.ShellScale = 0.8
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = -2, y = 0, z = -3}
	SWEP.SightWithRail = true
	SWEP.ForeGripOffsetCycle_Draw = 0
	SWEP.ForeGripOffsetCycle_Reload = 0.65
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
	
	SWEP.BoltBone = "Bolt"
	SWEP.BoltShootOffset = Vector(3.5, 0, 0)
	SWEP.OffsetBoltOnBipodShoot = true

	SWEP.BaseArm = "R_Armdummy"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)
	
	SWEP.AttachmentModelsVM = {
		["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "Body", rel = "", pos = Vector(-2.513, -0.727, -0.064), angle = Angle(90, 90, 180), size = Vector(0.899, 0.899, 0.899)},
		["md_trijicon"] = {model = "models/att_trijicon.mdl", bone = "Body", rel = "", pos = Vector(-5, 0.35, 0.15), angle = Angle(90, -90, 0), size = Vector(2.2, 2.2, 2.2)},
		["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", bone = "Body", rel = "", pos = Vector(6.282, 6.23, 0.361), angle = Angle(180, 0, -90), size = Vector(0.8, 0.8, 0.8)},
		["md_aimpoint"] = {model = "models/wystan/attachments/aimpoint.mdl", bone = "Body", rel = "", pos = Vector(2.664, 2.101, -0.076), angle = Angle(90, 0, -90), size = Vector(0.8, 0.8, 0.8)},
		["md_uecw_csgo_acog"] = {model = "models/gmod4phun/csgo/eq_optic_acog.mdl", bone = "Body", rel = "", pos = Vector(0.06, -5.4, -0.58), angle = Angle(-2, -90, 0), size = Vector(0.95, 0.95, 0.95)},
		["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", bone = "Body", pos = Vector(2.664, 2.101, -0.076), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_pbs1"] = {model = "models/cw2/attachments/pbs1.mdl", bone = "Body", rel = "", pos = Vector(-20.859, 0.606, 0.057), angle = Angle(-90, 0, -90), size = Vector(0.699, 0.699, 0.699)},
		["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "Body", pos = Vector(4.151, -0.433, -2.721), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)}
	}

	SWEP.ForeGripHoldPos = {
		["Left12"] = {pos = Vector(0, 0, 0), angle = Angle(19.048, 0, 0) },
		["Left19"] = {pos = Vector(0, 0, 0), angle = Angle(7.56, -5.153, -33.453) },
		["Left3"] = {pos = Vector(0, 0, 0), angle = Angle(0, 98.859, 0) },
		["Left8"] = {pos = Vector(0, 0, 0), angle = Angle(28.447, 0, 0) },
		["Left18"] = {pos = Vector(0, 0, 0), angle = Angle(31.268, 8.871, -34.725) },
		["Left17"] = {pos = Vector(0, 0, 0), angle = Angle(4.524, 0.3, -39.885) },
		["Left11"] = {pos = Vector(0, 0, 0), angle = Angle(17.864, 0, 0) },
		["Left9"] = {pos = Vector(0, 0, 0), angle = Angle(8.972, 0, 0) },
		["Left_L_Arm"] = {pos = Vector(1.231, 2.617, -1.206), angle = Angle(0, 0, 84.377) },
		["Left24"] = {pos = Vector(0, 0, 0), angle = Angle(31.447, -4.021, -22.029) },
		["Left16"] = {pos = Vector(0, 0, 0), angle = Angle(7.047, 11.637, -22.139) },
		["Left14"] = {pos = Vector(0, 0, 0), angle = Angle(14.432, -4.611, 0) },
		["Left2"] = {pos = Vector(0, 0, 0), angle = Angle(0, 40.631, 0) },
		["Left_U_Arm"] = {pos = Vector(2.54, 0.004, 0), angle = Angle(0, 0, 0) }}
		
end

SWEP.LuaViewmodelRecoil = true

SWEP.Attachments = {[1] = {header = "Sight", offset = {800, -500},  atts = {"md_trijicon", "md_eotech", "md_aimpoint", "md_uecw_csgo_acog", "md_pso1"}},
	[2] = {header = "Barrel", offset = {300, -500}, atts = {"md_pbs1"}},
	[3] = {header = "Handguard", offset = {-300, 200}, atts = {"md_foregrip"}},
	["+reload"] = {header = "Ammo", offset = {800, 0}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {fire = {"fire1", "fire2", "fire3"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {	draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},

	reload = {[1] = {time = 0.33, sound = "CW_RK95_MAGOUT"},
	[2] = {time = 1.13, sound = "CW_RK95_MAGIN"},
	[3] = {time = 1.85, sound = "CW_RK95_BOLTPULL"}}}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_base"
SWEP.Category = "Spectracus's War Chest"

SWEP.Author			= "Spectracus"
SWEP.Contact		= ""
SWEP.Purpose		= "The successor to RK 62. Somewhat less reliable but just as accurate a weapon. Caliber: 7.62x39mm"
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 75
SWEP.ViewModelFlip	= true
SWEP.ViewModel		= "models/cw2/weapons/v_rif_rk95.mdl"
SWEP.WorldModel		= "models/cw2/weapons/w_rif_rk95.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x39mm"
SWEP.CaseLength				= 7.62, 39
SWEP.BulletDiameter			= 7.62, 39

SWEP.FireDelay = 0.08
SWEP.FireSound = "CW_RK95_FIRE"
SWEP.FireSoundSuppressed = "CW_RK95_FIRE_SUPPRESSED"
SWEP.Recoil = 0.8

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.002
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 45
SWEP.DeployTime = 0.4

SWEP.ReloadSpeed = 0.7
SWEP.ReloadTime = 1.5
SWEP.ReloadTime_Empty = 2.7
SWEP.ReloadHalt = 1.6
SWEP.ReloadHalt_Empty = 3.0
SWEP.SnapToIdlePostReload = true