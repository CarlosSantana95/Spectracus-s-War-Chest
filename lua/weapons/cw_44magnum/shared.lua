AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = ".44 Magnum"
	SWEP.CSMuzzleFlashes = true
	
	SWEP.SelectIcon = surface.GetTextureID("weaponicons/mr96")
	killicon.Add("CW_44MAG", "weaponicons/mr96", Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_6"
	SWEP.PosBasedMuz = false
	SWEP.NoShells = true

	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/cw2/weapons/w_44_magnum_r.mdl"
	SWEP.WMPos = Vector(0, 0.1, -0.5)
	SWEP.WMAng = Vector(-3, 0, 180)

	SWEP.BoltBone = "Bolt"
	SWEP.BoltShootOffset = Vector(0, 0, -0.5)
	SWEP.OffsetBoltOnBipodShoot = false

	SWEP.DocterPos = Vector(-2.345, -5.108, 0.546)
	SWEP.DocterAng = Vector(-0.593, 0, 0)

	SWEP.CSGOACOGPos = Vector(-2.334, -7.389, 0.145)
	SWEP.CSGOACOGAng = Vector(0, 0.698, 0)

	SWEP.LeupoldPos = Vector(-2.346, -7.146, -0.009)
	SWEP.LeupoldAng = Vector(0, 0, 0)
		
	SWEP.IronsightPos = Vector(-2.33, -2.063, 0.730)
	SWEP.IronsightAng = Vector(-0.352, 0, 0)
	
	SWEP.SprintPos = Vector(0.256, 0.01, 1.2)
	SWEP.SprintAng = Vector(-17.778, 0, 0)
	
	SWEP.AlternativePos = Vector(-0.281, 1.325, -0.52)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.CSGOACOGAxisAlign = {right = 0, up = 0, forward = -40}
	SWEP.LeupoldAxisAlign = {right = -0.010, up = -0.050, forward = 0}

	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.HUD_MagText = "CYLINDER: "

	SWEP.LuaVMRecoilAxisMod = {vert = 1, hor = 1.5, roll = 3, forward = 1, pitch = 4}
	SWEP.CustomizationMenuScale = 0.01
	SWEP.DisableSprintViewSimulation = true

	SWEP.AttachmentModelsVM = {
		["md_docter"] = {model = "models/wystan/attachments/2octorrds.mdl", bone = "Gun", rel = "", pos = Vector(0.184, -0.087, 1.435), angle = Angle(0, 180, 0), size = Vector(0.8, 0.8, 0.8)},
		["md_saker"] = {model = "models/kali/weapons/csgo/eq_suppressor_rifle.mdl", bone = "Gun", rel = "", pos = Vector(-0.005, -8.749, 0.455), angle = Angle(0, 90, 0), size = Vector(0.55, 0.55, 0.55)},
		["md_fas2_leupold"] = {model = "models/v_fas2_leupold.mdl", bone = "Gun", rel = "", pos = Vector(0.004, -2.248, 2.352), angle = Angle(0, 90, 0), size = Vector(1.299, 1.299, 1.299)},
		["md_lasersight"] = {model = "models/rageattachments/pistoltribeam.mdl", bone = "Gun", rel = "", pos = Vector(-0.021, -3.787, -1.122), angle = Angle(0, 90, 0), size = Vector(1, 1, 1)},
		["md_fas2_leupold_mount"] = {model = "models/v_fas2_leupold_mounts.mdl", bone = "Gun", rel = "", pos = Vector(0.008, -2.506, 2.315), angle = Angle(0, 90, 0), size = Vector(1.299, 1.299, 1.299)},
		["md_csgo_acog"] = {model = "models/kali/weapons/csgo/eq_optic_acog.mdl", bone = "Gun", rel = "", pos = Vector(-0.044, 1.457, -1.285), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6)}
	}

	SWEP.LaserPosAdjust = Vector(1, 5, -1)
	SWEP.LaserAngAdjust = Angle(0, 0, 0) 
end

SWEP.LuaViewmodelRecoil = false
SWEP.ADSFireAnim = false
SWEP.CanRestOnObjects = false

SWEP.Attachments = {[1] = {header = "Sight", offset = {-600, -75}, atts = {"md_docter", "md_csgo_acog"}},
	[2] = {header = "I'm like srsly dumb", offset = {-600, -500}, atts = {"md_saker"}},
	[3] = {header = "Still dumb", offset = {500, -500}, atts = {"md_lasersight"}},
	["+reload"] = {header = "Ammo", offset = {500, -75}, atts = {"am_matchgrade"}}}

	if CustomizableWeaponry_KK_HK416 then
		table.insert(SWEP.Attachments[1].atts, 3, "md_fas2_leupold")		
end

SWEP.Animations = {fire = {"shoot1", "shoot2"},
	reload = "reload",
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_44MAG_DEP"}},

	reload = {[1] = {time = 0.1, sound = "CW_44MAG_CYLINDEROPEN"},
	[2] = {time = 0.7, sound = "CW_44MAG_ROUNDSOUT"},
	[3] = {time = 1.1, sound = "CW_44MAG_ROUNDSIN"},
	[4] = {time = 1.5, sound = "CW_44MAG_CYLINDERCLOSE"}}}

SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"double"}
SWEP.Base = "cw_base"
SWEP.Category = "CW 2.0"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 54
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/weapons/v_44_magnum_r.mdl"
SWEP.WorldModel		= "models/cw2/weapons/w_44_magnum_r.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 6
SWEP.Primary.DefaultClip	= 6
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "357"

SWEP.FireDelay = 0.0790513833992095
SWEP.FireSound = "CW_44MAG_FIRE"
SWEP.FireSoundSuppressed = "CW_44MAG_FIRE_SUPPRESSED"
SWEP.Recoil = 2.6

SWEP.HipSpread = 0.039
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.25
SWEP.Shots = 1
SWEP.Damage = 73
SWEP.DeployTime = 0.4
SWEP.Chamberable = false

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.3
SWEP.ReloadHalt = 1.7

SWEP.ReloadTime_Empty = 1.3
SWEP.ReloadHalt_Empty = 1.7