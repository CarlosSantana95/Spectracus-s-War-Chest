AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "P226R"
	SWEP.CSMuzzleFlashes = true
	
	killicon.Add("cw_ber_p226", "vgui/hud/p226r", Color(255, 255, 255, 255))
	SWEP.SelectIcon = surface.GetTextureID("vgui/hud/p226r")
	SWEP.DrawWeaponInfoBox			= true
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = false
	SWEP.SnapToGrip = true
	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.5
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_dber_p226.mdl"
	SWEP.WMPos = Vector(-0.5, -0.1, 0.2)
	SWEP.WMAng = Vector(0, 0, 180)

	SWEP.IronsightPos = Vector(-2.171, 10.5, 0.839)
	SWEP.IronsightAng = Vector(0.28, 0.071, -1.181)

	SWEP.SprintPos = Vector(0, 0, 0)
	SWEP.SprintAng = Vector(-20, 0, 0)

	SWEP.AlternativePos = Vector(-0.561, 0, 0.519)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.CustomizePos = Vector(5.269, -9.233, -5.74)
	SWEP.CustomizeAng = Vector(53.765, 19.518, 20)
	
	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.BoltBone = "Slide"
	SWEP.BoltShootOffset = Vector(0, 2, 0)
	SWEP.HoldBoltWhileEmpty = true
	SWEP.DontHoldWhenReloading = true
	SWEP.DisableSprintViewSimulation = true
	
	SWEP.CustomizationMenuScale = 0.01
	SWEP.BoltBonePositionRecoverySpeed = 25 -- how fast does the bolt bone move back into it's initial position after the weapon has fired
	
	SWEP.AttachmentModelsVM = {
        ["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "weapon_body", pos = Vector(-0.258, 6.2, 0.89), angle = Angle(0, 180, 0), size = Vector(0.746, 0.746, 0.746)},
		["md_anpeq15"] = {model = "models/gageattachments/pistoltribeam.mdl", bone = "weapon_body", pos = Vector(-0.258, 2.201, -0.346), angle = Angle(-0.686, -90.598, 0), size = Vector(0.853, 0.819, 0.975)}
	}
end

SWEP.LaserPosAdjust = Vector( 0.1, -1, 0)
SWEP.LaserAngAdjust = Angle(0, 0.6, 0) 

SWEP.LuaViewmodelRecoil = false
SWEP.CanRestOnObjects = false

SWEP.Attachments = {
        [1] = {header = "Barrel", offset = {300, -100}, atts = {"md_tundra9mm"}},
		[2] = {header = "Rail", offset = {-300, -50}, atts = {"md_anpeq15"}},
	    ["+reload"] = {header = "Ammo", offset = {-400, 400}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {fire = "fire1", "fire2", "Fire3",
	reload = "Reload",
	idle = "Idle",
	draw = "Draw"}
	
SWEP.Sounds = {Draw = {{time = 0.1, sound = "CW_BER_P226_DEPLOY"}},

	Reload = {[1] = {time = 0.5, sound = "CW_BER_P226_MAGOUT"},
	[2] = {time = 1.5, sound = "CW_BER_P226_MAGIN"},
    [3] = {time = 2.4, sound = "CW_BER_P226_SLIDEPULL"}}}

SWEP.SpeedDec = 10

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "Spectracus's War Chest"

SWEP.Author			= "Spectracus"
SWEP.Contact		= ""
SWEP.Purpose		= "A full-sized, service type pistol made by SIG Sauer. Effective at close range. Caliber: 9x19mm Parabellum"
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_dber_p226.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_glock18.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 15
SWEP.Primary.DefaultClip	= 15
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "9x19mm"
SWEP.CaseLength				= 9, 19
SWEP.BulletDiameter			= 9, 19

SWEP.FireDelay = 0.15
SWEP.FireSound = "CW_P226_FIRE"
SWEP.FireSoundSuppressed = "CW_BER_P226_FIRE_SUPPRESSED"
SWEP.Recoil = 1

SWEP.HipSpread = 0.02
SWEP.AimSpread = 0.006
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.009
SWEP.SpreadCooldown = 0.23
SWEP.Shots = 1
SWEP.Damage = 35
SWEP.DeployTime = 1

SWEP.ReloadSpeed = .9
SWEP.ReloadTime = 3.2
SWEP.ReloadTime_Empty = 3.2
SWEP.ReloadHalt = 3.1
SWEP.ReloadHalt_Empty = 3.1