AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "FN HP-DA"
	
	killicon.Add("cw2_browninghp", "vgui/hud/cw2_browninghp", Color(255, 255, 255, 255))
	SWEP.SelectIcon = surface.GetTextureID("vgui/hud/cw2_browninghp")
	
	SWEP.MuzzleEffect = "muzzleflash_pistol"
	SWEP.PosBasedMuz = false

	SWEP.Shell = "smallshell"
	SWEP.ShellScale = 0.8
	SWEP.ShellOffsetMul = 1
	SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
		
	SWEP.IronsightPos = Vector(-2.1, 5, 0.02)
	SWEP.IronsightAng = Vector(1.65, -2.1, 0)

	SWEP.SprintPos = Vector(0, 0, 0)
	SWEP.SprintAng = Vector(-20, 0, 0)

	SWEP.MoveType = 1
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FullAimViewmodelRecoil = false
	SWEP.BoltBone = "slide"
	SWEP.BoltShootOffset = Vector(1.2, 0, 0)
	SWEP.BoltBonePositionRecoverySpeed = 25
	SWEP.OffsetBoltDuringNonEmptyReload = false
	SWEP.BoltReloadOffset = Vector(0, 1.39, 0)
	SWEP.EmptyBoltHoldAnimExclusion = nil
	SWEP.ReloadBoltBonePositionRecoverySpeed = 20
	SWEP.ReloadBoltBonePositionMoveSpeed = 100
	SWEP.StopReloadBoneOffset = 0.8
	SWEP.HoldBoltWhileEmpty = false
	SWEP.DontHoldWhenReloading = false
	SWEP.DisableSprintViewSimulation = true
	SWEP.SightWithRail = true
	SWEP.FOVPerShot = 0.3

	SWEP.AttachmentModelsVM = {
		["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "weapon", pos = Vector(-5.801, -0.801, -0.61), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)}
	}

	SWEP.LuaVMRecoilAxisMod = {vert = 0.25, hor = 0.5, roll = 2, forward = 0, pitch = 1}
	SWEP.CustomizationMenuScale = 0.008
	SWEP.BoltBonePositionRecoverySpeed = 17 -- how fast does the bolt bone move back into it's initial position after the weapon has fired
	
	SWEP.SlideBGs = {main = 1, pm = 0, pb = 1}
	SWEP.SuppressorBGs = {main = 2, pm = 1, pb = 2, none = 0}
	SWEP.MagBGs = {main = 3, regular = 0, extended = 1}
end

SWEP.LuaViewmodelRecoil = true
SWEP.LuaViewmodelRecoilOverride = true
SWEP.CanRestOnObjects = false

SWEP.Attachments = {[1] = {header = "Barrel", offset = {-350, -200}, atts = {"md_tundra9mm"}},
	["+reload"] = {header = "Ammo", offset = {800, 100}, atts = {"am_magnum", "am_matchgrade"}}}

SWEP.Animations = {reload = "reload",
	fire = {"shoot1", "shoot2", "shoot3"},
	fire_dry = nil,
	idle = "idle",
	draw = "draw"}
	
SWEP.Sounds = {draw = {{time = 0, sound = "CW_BROWNING_DRAW"}},

	reload = {{time = 0.40, sound = "CW_BROWNING_MAGOUT"},
	{time = 1.50, sound = "CW_BROWNING_MAGIN"},
	{time = 1.99, sound = "CW_BROWNING_SLIDE"}}
}

SWEP.SpeedDec = 5

SWEP.Slot = 1
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_base"
SWEP.Category = "Spectracus's War Chest"

SWEP.Author			= "Spectracus"
SWEP.Contact		= ""
SWEP.Purpose		= "A semi-automatic pistol developed in the early 1980s at the Belgian Fabrique Nationale arms factory in Herstal. Caliber: 9x19mm Parabellum"
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 90
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/cw2/weapons/v_pist_brhp.mdl"
SWEP.WorldModel		= "models/weapons/w_pist_p228.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 14
SWEP.Primary.DefaultClip	= 14
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "9x19mm"
SWEP.CaseLength				= 9, 19
SWEP.BulletDiameter			= 9, 19

SWEP.FireDelay = 0.15
SWEP.FireSound = "CW_BROWNING_FIRE"
SWEP.FireSoundSuppressed = "CW_BROWNING_FIRE_SUPPRESSED"
SWEP.Recoil = 1.5

SWEP.HipSpread = 0.056
SWEP.AimSpread = 0.013
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.07
SWEP.SpreadPerShot = 0.1
SWEP.SpreadCooldown = 0.23
SWEP.Shots = 1
SWEP.Damage = 35
SWEP.DeployTime = 1
--SWEP.Chamberable = false

SWEP.ReloadSpeed = 0.7
SWEP.ReloadTime = 2.8
SWEP.ReloadHalt = 2.9

SWEP.ReloadTime_Empty = 2.8
SWEP.ReloadHalt_Empty = 2.9

SWEP.SnapToIdlePostReload = false