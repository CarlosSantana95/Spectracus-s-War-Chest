if SERVER then return end

gmp.DynaviewEnabled = CreateClientConVar("gmp_dynaview_enabled", 1, true, true)

gmp.DynaviewSmoothEnabled = CreateClientConVar("gmp_dynaview_smooth_enabled", "1", true, true)
gmp.DynaviewSmoothPosStrength = CreateClientConVar("gmp_dynaview_smooth_pos_strength", "0.9", true, true)
gmp.DynaviewSmoothAngStrength = CreateClientConVar("gmp_dynaview_smooth_ang_strength", "0.7", true, true)
gmp.DynaviewSmoothPosAddStrength = CreateClientConVar("gmp_dynaview_smooth_posadd_strength", "0.4", true, true)
gmp.DynaviewSmoothAngAddStrength = CreateClientConVar("gmp_dynaview_smooth_angadd_strength", "0.15", true, true)

gmp.DynaviewSmoothVMEnabled = CreateClientConVar("gmp_dynaview_smooth_vm_enabled", "1", true, true)
gmp.DynaviewSmoothVMPosStrength = CreateClientConVar("gmp_dynaview_smooth_vm_pos_strength", "0.95", true, true)
gmp.DynaviewSmoothVMAngStrength = CreateClientConVar("gmp_dynaview_smooth_vm_ang_strength", "0.5", true, true)
gmp.DynaviewSmoothVMPosAddStrength = CreateClientConVar("gmp_dynaview_smooth_vm_posadd_strength", "0.3", true, true)
gmp.DynaviewSmoothVMAngAddStrength = CreateClientConVar("gmp_dynaview_smooth_vm_angadd_strength", "0.3", true, true)

gmp.DynaviewFreelookEnabled = CreateClientConVar("gmp_dynaview_freelook_enabled", "1", true, true)
gmp.DynaviewFreelookDeadzoneX = CreateClientConVar("gmp_dynaview_freelook_deadzone_x", "40", true, true)
gmp.DynaviewFreelookDeadzoneY = CreateClientConVar("gmp_dynaview_freelook_deadzone_y", "25", true, true)
gmp.DynaviewFreelookVMAngMultiplierX = CreateClientConVar("gmp_dynaview_freelook_vm_angmultiplier_x", "0.5", true, true)
gmp.DynaviewFreelookVMAngMultiplierY = CreateClientConVar("gmp_dynaview_freelook_vm_angmultiplier_y", "0.5", true, true)

gmp.DynaviewIronsightEnabled = CreateClientConVar("gmp_dynaview_ironsight_enabled", "1", true, true)
gmp.DynaviewIronsightSensitivity = CreateClientConVar("gmp_dynaview_ironsight_sensitivity", "0.5", true, true)

gmp.DynaviewVMDynamicsEnabled = CreateClientConVar("gmp_dynaview_vmdynamics_enabled", "1", true, true)
gmp.DynaviewVMDynamicsDisableOnIdle = CreateClientConVar("gmp_dynaview_vmdynamics_disable_onidle", "1", true, true)
gmp.DynaviewVMDynamicsMultiplier = CreateClientConVar("gmp_dynaview_vmdynamics_multiplier", "1", true, true)
gmp.DynaviewVMDynamicsSmoothEnabled = CreateClientConVar("gmp_dynaview_vmdynamics_smooth_enabled", "1", true, true)
gmp.DynaviewVMDynamicsSmoothAngStrength = CreateClientConVar("gmp_dynaview_vmdynamics_smooth_ang_strength", "0.7", true, true)
gmp.DynaviewVMDynamicsCompatHL2Crowbar = CreateClientConVar("gmp_dynaview_vmdynamics_compat_hl2crowbar", "1", true, true)
gmp.DynaviewVMDynamicsCompatHL2SMG1 = CreateClientConVar("gmp_dynaview_vmdynamics_compat_hl2smg1", "1", true, true)
gmp.DynaviewVMDynamicsCompatHL2AR2 = CreateClientConVar("gmp_dynaview_vmdynamics_compat_hl2ar2", "1", true, true)
gmp.DynaviewVMDynamicsCompatHL2Shotgun = CreateClientConVar("gmp_dynaview_vmdynamics_compat_hl2shotgun", "1", true, true)
gmp.DynaviewVMDynamicsCompatHL2Grenade = CreateClientConVar("gmp_dynaview_vmdynamics_compat_hl2grenade", "1", true, true)

gmp.DynaviewRunEnabled = CreateClientConVar("gmp_dynaview_run_enabled", "1", true, true)
gmp.DynaviewRunDisableIncompatible = CreateClientConVar("gmp_dynaview_run_disable_incompatible", "1", true, true)
gmp.DynaviewRunStrengthIn = CreateClientConVar("gmp_dynaview_run_strength_in", "0.1", true, true)
gmp.DynaviewRunStrengthOut = CreateClientConVar("gmp_dynaview_run_strength_out", "0.2", true, true)

gmp.DynaviewBobEnabled = CreateClientConVar("gmp_dynaview_bob_enabled", "1", true, true)
gmp.DynaviewBobOverrideOld = CreateClientConVar("gmp_dynaview_bob_overrideold", "1", true, true)
gmp.DynaviewBobType = CreateClientConVar("gmp_dynaview_bob_type", "2", true, true)
gmp.DynaviewBobMultiplierX = CreateClientConVar("gmp_dynaview_bob_multiplier_x", "1", true, true)
gmp.DynaviewBobMultiplierY = CreateClientConVar("gmp_dynaview_bob_multiplier_y", "1", true, true)
gmp.DynaviewBobMultiplierPos = CreateClientConVar("gmp_dynaview_bob_multiplier_pos", "1", true, true)
gmp.DynaviewBobMultiplierAng = CreateClientConVar("gmp_dynaview_bob_multiplier_ang", "1", true, true)
gmp.DynaviewBobMultiplierPosVM = CreateClientConVar("gmp_dynaview_bob_multiplier_pos_vm", "1", true, true)
gmp.DynaviewBobMultiplierAngVM = CreateClientConVar("gmp_dynaview_bob_multiplier_ang_vm", "1", true, true)
gmp.DynaviewBobType2StrengthCurrentX = CreateClientConVar("gmp_dynaview_bob_type2_strength_current_x", "0.2", true, true)
gmp.DynaviewBobType2StrengthCurrentY = CreateClientConVar("gmp_dynaview_bob_type2_strength_current_y", "0.3", true, true)
gmp.DynaviewBobType2StrengthDesiredX = CreateClientConVar("gmp_dynaview_bob_type2_strength_desired_x", "0.8", true, true)
gmp.DynaviewBobType2StrengthDesiredY = CreateClientConVar("gmp_dynaview_bob_type2_strength_desired_y", "0.3", true, true)

gmp.DynaviewLeanEnabled = CreateClientConVar("gmp_dynaview_lean_enabled", "1", true, true)
gmp.DynaviewLeanMultiplier = CreateClientConVar("gmp_dynaview_lean_multiplier", "1", true, true)

gmp.DynaviewStopEnabled = CreateClientConVar("gmp_dynaview_stop_enabled", "1", true, true)
gmp.DynaviewStopMultiplier = CreateClientConVar("gmp_dynaview_stop_multiplier", "1", true, true)

gmp.DynaviewSwayEnabled = CreateClientConVar("gmp_dynaview_sway_enabled", "1", true, true)
gmp.DynaviewSwayTimeMultiplier = CreateClientConVar("gmp_dynaview_sway_time_multiplier", "1", true, true)
gmp.DynaviewSwayTimeMultiplierVM = CreateClientConVar("gmp_dynaview_sway_time_multiplier_vm", "1", true, true)
gmp.DynaviewSwayMultiplier = CreateClientConVar("gmp_dynaview_sway_multiplier", "1", true, true)
gmp.DynaviewSwayMultiplierVM = CreateClientConVar("gmp_dynaview_sway_multiplier_vm", "1", true, true)

gmp.DynaviewCloseEnabled = CreateClientConVar("gmp_dynaview_close_enabled", "1", true, true)
gmp.DynaviewCloseType = CreateClientConVar("gmp_dynaview_close_type", "1", true, true)
gmp.DynaviewCloseType2Multiplier = CreateClientConVar("gmp_dynaview_close_type0_multiplier", "1", true, true)

gmp.DynaviewVMSwingEnabled = CreateClientConVar("gmp_dynaview_vmswing_enabled", "1", true, true)
gmp.DynaviewVMSwingMultiplierX = CreateClientConVar("gmp_dynaview_vmswing_multiplier_x", "1", true, true)
gmp.DynaviewVMSwingMultiplierY = CreateClientConVar("gmp_dynaview_vmswing_multiplier_y", "1", true, true)
gmp.DynaviewVMSwingMultiplierZ = CreateClientConVar("gmp_dynaview_vmswing_multiplier_z", "1", true, true)

gmp.DynaviewCrouchOffsetEnabled = CreateClientConVar("gmp_dynaview_crouch_offset_enabled", "1", true, true)
gmp.DynaviewCrouchOffsetMultiplier = CreateClientConVar("gmp_dynaview_crouch_offset_multiplier", "1", true, true)
gmp.DynaviewCrouchDampeningEnabled = CreateClientConVar("gmp_dynaview_crouch_dampening_enabled", "1", true, true)
gmp.DynaviewCrouchDampeningMultiplier = CreateClientConVar("gmp_dynaview_crouch_dampening_multiplier", "1", true, true)

gmp.DynaviewPunchEnabled = CreateClientConVar("gmp_dynaview_punch_enabled", "1", true, true)
gmp.DynaviewPunchMultiplier = CreateClientConVar("gmp_dynaview_punch_multiplier", "1", true, true)
gmp.DynaviewPunchOverrideOld = CreateClientConVar("gmp_dynaview_punch_overrideold", "1", true, true)
gmp.DynaviewPunchStrengthCurrent = CreateClientConVar("gmp_dynaview_punch_strength_current", "0.3", true, true)
gmp.DynaviewPunchStrengthDesired = CreateClientConVar("gmp_dynaview_punch_strength_desired", "0.8", true, true)
gmp.DynaviewPunchOnPainEnabled = CreateClientConVar("gmp_dynaview_punch_onpain_enabled", "1", true, true)
gmp.DynaviewPunchOnPainMultiplier = CreateClientConVar("gmp_dynaview_punch_onpain_multiplier", "1", true, true)
gmp.DynaviewPunchOnFallEnabled = CreateClientConVar("gmp_dynaview_punch_onfall_enabled", "1", true, true)
gmp.DynaviewPunchOnFallMultiplier = CreateClientConVar("gmp_dynaview_punch_onfall_multiplier", "1", true, true)

gmp.DynaviewSoundEquipEnabled = CreateClientConVar("gmp_dynaview_sound_equip_enabled", "1", true, true)
gmp.DynaviewSoundLandEnabled = CreateClientConVar("gmp_dynaview_sound_land_enabled", "1", true, true)
gmp.DynaviewSoundIronsightEnabled = CreateClientConVar("gmp_dynaview_sound_ironsight_enabled", "1", true, true)

gmp.DynaviewVehicleEnabled = CreateClientConVar("gmp_dynaview_vehicle_enabled", "1", true, true)
gmp.DynaviewVehicleJumpEnabled = CreateClientConVar("gmp_dynaview_vehicle_jump_enabled", "1", true, true)
gmp.DynaviewVehicleJumpType = CreateClientConVar("gmp_dynaview_vehicle_jump_type", "2", true, true)
gmp.DynaviewVehicleShakeEnabled = CreateClientConVar("gmp_dynaview_vehicle_shake_enabled", "1", true, true)
gmp.DynaviewVehicleShakeMultiplier = CreateClientConVar("gmp_dynaview_vehicle_shake_multiplier", "1", true, true)
gmp.DynaviewVehicleFOVEnabled = CreateClientConVar("gmp_dynaview_vehicle_fov_enabled", "1", true, true)
gmp.DynaviewVehicleFOVMultiplier = CreateClientConVar("gmp_dynaview_vehicle_fov_multiplier", "1", true, true)

gmp.DynaviewData = {}

gmp.DynaviewLastWeapon = nil
gmp.DynaviewJumpTimer = nil
gmp.DynaviewFOVChanged = nil

gmp.DynaviewSmoothPosCurrent = nil
gmp.DynaviewSmoothAngCurrent = nil
gmp.DynaviewSmoothPosAddCurrent = nil
gmp.DynaviewSmoothAngAddCurrent = nil

gmp.DynaviewSmoothVMPosCurrent = nil
gmp.DynaviewSmoothVMAngCurrent = nil
gmp.DynaviewSmoothVMPosAddCurrent = nil
gmp.DynaviewSmoothVMAngAddCurrent = nil

gmp.DynaviewFreelookActive = false
gmp.DynaviewFreelookAng = nil

gmp.DynaviewIronsightActive = false
gmp.DynaviewIronsightPercent = 0

gmp.DynaviewViewModelMuzzleAngPos = nil
gmp.DynaviewVMDynamicsSmoothAngCurrent = nil
if IsValid(gmp.DynaviewViewModel) then
	gmp.DynaviewViewModel:Remove()
	gmp.DynaviewViewModel = nil
end
gmp.DynaviewViewModel = ClientsideModel("models/error.mdl", RENDERGROUP_OTHER)
gmp.DynaviewViewModel:SetNoDraw(true)
gmp.DynaviewVMDynamicsAttachmentNames =
{
	"muzzle",
	"muzzle_flash",
	"muzzleflash",
	"flash",
	"spark",
	"laser",

	"muzzle0",
	"muzzle1",
	"forward",
	"eye",
	"barrel",
	"body",
	"gun",
	"handle",
	"grip",
	"circle01",

	"01",
	"0",
	"1",
	"2",

	"pump",
	"slide",
	"bolt",
	"boltlock",
	"bolt_lock",
	"bolt lock",
	"charger",

	"ValveBiped.Bip01_R_Hand",
	"Bone_Righthand",
	"Bip01 R Hand",
	"R_Hand",
	"R_Wrist",

	"r-rist",
	"v_weapon.Right_Hand",
	"Right_Hand",
	"right_hand",
	"righthand",
	"rhand",
	"hand"
}

gmp.DynaviewRunMultiplier = 0

gmp.DynaviewBobTime = 0
gmp.DynaviewBobTimeLast = 0
gmp.DynaviewBobStepTimeLast = 0
gmp.DynaviewBobStepDirection = 1
gmp.DynaviewBobStepCycleXCurrent = 0
gmp.DynaviewBobStepCycleYCurrent = 0
gmp.DynaviewBobStepCycleXDesired = 0
gmp.DynaviewBobStepCycleYDesired = 0

gmp.DynaviewSwayTime = 0

gmp.DynaviewPunchAngDesired = nil
gmp.DynaviewPunchAngCurrent = nil

gmp.DynaviewWeaponDataDefault =
{
	Ironsights =
	{
		Pos = Vector(0, 1, 1),
		Ang = Angle(0, 0, 0),
		Fov = 10
	},
	Run =
	{
		Pos = Vector(6, 10, -1),
		Ang = Angle(10, 45, -5)
	}
}
gmp.DynaviewWeaponData =
{
	["c_crowbar.mdl"] =
	{
		Run =
		{
			Pos = Vector(0, 0, 2),
			Ang = Angle(10, 0, 0)
		},
		PosOffset = Vector(5, 0, 0),
		VMDynamicsBoneOverride = "ValveBiped.Bip01_R_Hand"
	},
	["c_stunstick.mdl"] =
	{
		Run =
		{
			Pos = Vector(0, -5, 4),
			Ang = Angle(20, 0, -10)
		}
	},
	["c_physcannon.mdl"] =
	{
		Ironsights =
		{
			Pos = Vector(-10, 11.565, 3.4),
			Ang = Angle(0, 1, 0),
			Fov = 10
		},
		Run =
		{
			Pos = Vector(0, 0, 2),
			Ang = Angle(10, 0, 0)
		}
	},
	["c_superphyscannon.mdl"] =
	{
		Ironsights =
		{
			Pos = Vector(-10, 11.565, 3.4),
			Ang = Angle(0, 1, 0),
			Fov = 10
		},
		Run =
		{
			Pos = Vector(0, 0, 2),
			Ang = Angle(10, 0, 0)
		}
	},
	["c_pistol.mdl"] =
	{
		Ironsights =
		{
			Pos = Vector(-4, 5.91, 3.05),
			Ang = Angle(0, -1.25, 2),
			Fov = 15
		},
		Run =
		{
			Pos = Vector(8, 1, -25),
			Ang = Angle(-70, 0, 0)
		},
		PosOffset = Vector(-1, 0, 0.25)
	},
	["c_357.mdl"] =
	{
		Ironsights =
		{
			Pos = Vector(1, 5.695, 1.65),
			Ang = Angle(-0.2, -0.2, 1.2),
			Fov = 35
		},
		Run =
		{
			Pos = Vector(8, 1, -20),
			Ang = Angle(-80, 0, 0)
		},
		PosOffset = Vector(5, 1, -1)
	},
	["c_smg1.mdl"] =
	{
		Ironsights =
		{
			Pos = Vector(-9, 6.42, 0.455),
			Ang = Angle(-2, 0, 0),
			Fov = 20
		},
		Run = gmp.DynaviewWeaponDataDefault.Run
	},
	["c_irifle.mdl"] =
	{
		Ironsights =
		{
			Pos = Vector(-5, 6.09, 0.77),
			Ang = Angle(-1.5, -1, 0),
			Fov = 25
		},
		Run =
		{
			Pos = Vector(-2, 10, -1),
			Ang = Angle(10, 45, -5)
		},
		PosOffset = Vector(-3, 0, 0),
	},
	["c_shotgun.mdl"] =
	{
		Ironsights =
		{
			Pos = Vector(-8, 7.925, 5.25),
			Ang = Angle(0.16, 0.09, 0),
			Fov = 15
		},
		Run = gmp.DynaviewWeaponDataDefault.Run,
		PosOffset = Vector(2, -1, -1)
	},
	["c_rpg.mdl"] =
	{
		Run =
		{
			Pos = Vector(0, 18.5, 0),
			Ang = Angle(15, 30, -15)
		}
	},
	["c_crossbow.mdl"] =
	{
		Run = gmp.DynaviewWeaponDataDefault.Run
	},
	["c_grenade.mdl"] =
	{
		Run =
		{
			Pos = Vector(0, -3, 0),
			Ang = Angle(10, -20, 0)
		},
		PosOffset = Vector(1, 0.5, 0)
	},
	["weapon_fists"] =
	{
		VMDynamicsDisabled = true
	},
	-- COMPAT: M9K
	["v_dot_ak47.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_minigunvulcan.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_mach_russ_pkm.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_pist_python.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_jackhammer2.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_ex41.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_psg1_snipe.mdl"] =
	{
		VMDynamicsAngMultiplier = Angle(1.2, 0, 0.2)
	},
	["v_remington_7615p.mdl"] =
	{
		VMDynamicsAngMultiplier = Angle(2, 1, 1)
	},
	-- COMPAT: CSS Weapons on M9K Base
	["2_pist_usp.mdl"] =
	{
		VMDynamicsAngMultiplier = Angle(1.5, 1, 1)
	},
	-- COMPAT: Doktor's SWEPs
	["v_trhpkm.mdl"] = -- Same model as M9K's PKM
	{
		VMDynamicsDisabled = true
	},
	-- COMPAT: Pablo's SWEPs
	["v_rif_r_ak47.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	-- COMPAT: TF2
	["v_models/v_minigun_heavy.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	-- COMPAT: Return to Castle Wolfenstein
	["rtcw/v_fg42.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	-- COMPAT: Iron Man Swep
	["c_arms_citizen.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	-- COMPAT: GAU-2B/A
	["v_deat_m249para.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	-- COMPAT: CS:S?
	["v_pist_deagle.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	-- COMPAT: REE
	["v_knife_ree_spoon.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_rif_ree_scar.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_pist_deagle.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_rif_ree_m14.mdl"] =
	{
		VMDynamicsDisabled = true
	},
	["v_snip_ree_amr50.mdl"] =
	{
		VMDynamicsDisabled = true
	}
}

function gmp.DynaviewGetIronsightPercent()
	local IronsightPercent = gmp.DynaviewIronsightPercent
	if IronsightPercent == 0 then
		return 0
	elseif IronsightPercent == 1 then
		return 1
	else
		return ((1 - math.cos(IronsightPercent * math.pi / 2)) * (1 - IronsightPercent)) + (math.sin(IronsightPercent * math.pi / 2) * IronsightPercent)
	end
end

function gmp.DynaviewGetWeaponData(ViewModelModel, WeaponClass)
	local WeaponData = gmp.DynaviewWeaponData[ViewModelModel]
	if not WeaponData and WeaponClass then
		WeaponData = gmp.DynaviewWeaponData[WeaponClass]
	end
	if not WeaponData and ViewModelModel then
		local SearchPath = "models/weapons/"
		if ViewModelModel:lower():sub(1, SearchPath:len()) == SearchPath then
			ViewModelModel = ViewModelModel:sub(SearchPath:len() + 1)
			WeaponData = gmp.DynaviewWeaponData[ViewModelModel]
		end
	end
	if not WeaponData then
		WeaponData = gmp.DynaviewWeaponDataDefault
	end
	return WeaponData
end

local function DynaviewViewModelRefreshMuzzleAngPos(AngOffset)
	gmp.DynaviewViewModelMuzzleAngPos = nil
	local WeaponData = gmp.DynaviewGetWeaponData(gmp.DynaviewViewModel:GetModel(), gmp.DynaviewViewModel.WeaponClass)
	local Attachment = 0
	local Bone = nil
	local AngPos = nil
	if WeaponData.VMDynamicsDisabled == nil then
		if WeaponData.VMDynamicsAttachmentOverride then
			gmp.DynaviewViewModelMuzzleAngPos = gmp.DynaviewViewModel:GetAttachment(type(WeaponData.VMDynamicsAttachmentOverride) == "string" and gmp.DynaviewViewModel:LookupAttachment(WeaponData.VMDynamicsAttachmentOverride) or WeaponData.VMDynamicsAttachmentOverride)
		elseif WeaponData.VMDynamicsBoneOverride then
			Bone = type(WeaponData.VMDynamicsBoneOverride) == "string" and gmp.DynaviewViewModel:LookupBone(WeaponData.VMDynamicsBoneOverride) or WeaponData.VMDynamicsBoneOverride
			local Pos, Ang = gmp.DynaviewViewModel:GetBonePosition(Bone)
			if Pos and Ang then
				gmp.DynaviewViewModelMuzzleAngPos = {Ang = Ang, Pos = Pos}
			end
		else
			for i = 1, #gmp.DynaviewVMDynamicsAttachmentNames do
				Attachment = gmp.DynaviewViewModel:LookupAttachment(gmp.DynaviewVMDynamicsAttachmentNames[i])
				if Attachment > 0 then
					AngPos = gmp.DynaviewViewModel:GetAttachment(Attachment)
				end
				Bone = gmp.DynaviewViewModel:LookupBone(gmp.DynaviewVMDynamicsAttachmentNames[i])
				if Bone then
					local Pos, Ang = gmp.DynaviewViewModel:GetBonePosition(Bone)
					if Pos and Ang then
						gmp.DynaviewViewModelMuzzleAngPos = {Ang = Ang, Pos = Pos}
					end
				end
				if AngPos and (math.abs(AngPos.Ang.p) ~= 0 or math.abs(AngPos.Ang.y) ~= 0 or math.abs(AngPos.Ang.r) ~= 0) and (math.abs(AngPos.Pos.x) ~= 0 or math.abs(AngPos.Pos.y) ~= 0 or math.abs(AngPos.Pos.z) ~= 0) then
					break
				else
					AngPos = nil
				end
			end
			if AngPos then
				gmp.DynaviewViewModelMuzzleAngPos = AngPos
			end
		end
		if gmp.DynaviewViewModelMuzzleAngPos and AngOffset then
			gmp.DynaviewViewModelMuzzleAngPos.Ang = gmp.DynaviewViewModelMuzzleAngPos.Ang - AngOffset
		end
	end
end

function gmp.DynaviewHandleEarlyValues(Pos, Ang, HitGround)
	if HitGround then
		gmp.DynaviewJumpTimer = nil
	end

	gmp.DynaviewLastWeapon = nil
	gmp.DynaviewViewModelMuzzleAngPos = nil

	gmp.DynaviewSmoothPosCurrent = Pos
	gmp.DynaviewSmoothAngCurrent = Ang
	gmp.DynaviewSmoothPosAddCurrent = nil
	gmp.DynaviewSmoothAngAddCurrent = nil

	gmp.DynaviewSmoothVMPosCurrent = nil
	gmp.DynaviewSmoothVMAngCurrent = nil
	gmp.DynaviewSmoothVMPosAddCurrent = nil
	gmp.DynaviewSmoothVMAngAddCurrent = nil

	gmp.DynaviewFreelookActive = false
	gmp.DynaviewFreelookAng = nil

	gmp.DynaviewIronsightActive = false
	gmp.DynaviewIronsightPercent = 0

	gmp.DynaviewVMDynamicsSmoothAngCurrent = nil

	gmp.DynaviewRunMultiplier = 0
end

concommand.Add("gmp_dynaview_ironsights", function(Ply, Command, Args)
	gmp.DynaviewIronsightActive = not gmp.DynaviewIronsightActive
end)

concommand.Add("+gmp_dynaview_ironsights", function(Ply, Command, Args)
	gmp.DynaviewIronsightActive = true
end)

concommand.Add("-gmp_dynaview_ironsights", function(Ply, Command, Args)
	gmp.DynaviewIronsightActive = false
end)

concommand.Add("gmp_dynaview_freelook", function(Ply, Command, Args)
	gmp.DynaviewFreelookActive = not gmp.DynaviewFreelookActive
end)

concommand.Add("+gmp_dynaview_freelook", function(Ply, Command, Args)
	gmp.DynaviewFreelookActive = true
end)

concommand.Add("-gmp_dynaview_freelook", function(Ply, Command, Args)
	gmp.DynaviewFreelookActive = false
end)

usermessage.Hook("gmp_dynaview_DamagePunch", function(Data)
	local PlyLocal = LocalPlayer()
	if gmp.Enabled:GetBool() and gmp.DynaviewEnabled:GetBool() and gmp.DynaviewPunchEnabled:GetBool() and gmp.DynaviewPunchOnPainEnabled:GetBool() and IsValid(PlyLocal) then
		local Attacker = Data:ReadEntity()
		Attacker = IsValid(Attacker) and Attacker or nil
		local Inflictor = Data:ReadEntity()
		Inflictor = IsValid(Inflictor) and Inflictor or nil
		local Type = Data:ReadShort()
		local Amount = Data:ReadFloat()
		local Position = Data:ReadVector()
		local Velocity = Data:ReadVector()
		if Type ~= DMG_FALL then
			if Position == vector_origin then
				local Source = Attacker
				if Attacker and Attacker.GetActiveWeapon then
					Source = Attacker:GetActiveWeapon()
				end
				if not IsValid(Source) and Inflictor then
					Source = Inflictor
				end
				if IsValid(Source) then
					Position = Source.EyePos and Source:EyePos() or Source:GetPos()
				else
					Position = PlyLocal:EyePos() - Vector(0, 0, -1)
				end
			end
			local PosAim = (Position - PlyLocal:EyePos() + Velocity):Angle()
			PosAim = PosAim - PlyLocal:EyeAngles()
			if PosAim.p > 180 then
				PosAim.p = PosAim.p - 360
			end
			if PosAim.y > 180 then
				PosAim.y = PosAim.y - 360
			end
			PosAim.p = -math.Clamp(PosAim.p + math.Clamp(PosAim.p * ((1 - math.abs(PosAim.y) / 180) * 10), -50, 50), -80, 80)
			if math.abs(PosAim.y) > 30 and math.abs(PosAim.y) < 300 then
				local Multiplier = math.sin((math.abs(PosAim.y) - 30) / (300 - 30) * math.pi * 2)
				PosAim.r = PosAim.r - ((PosAim.y - 30) * 0.75 * Multiplier)
				PosAim.y = (PosAim.y - ((PosAim.y - 30) * Multiplier))
			end
			PosAim.y = PosAim.y * math.min(1 - math.abs(PosAim.y) / 180, 1)
			PosAim = PosAim * 0.1 * (Amount * 0.25 + 1) * gmp.DynaviewPunchOnPainMultiplier:GetFloat()
			gmp.DynaviewPunchAngDesired = (gmp.DynaviewPunchAngDesired or Angle()) * 0.4 + PosAim
		end
	end
end)

usermessage.Hook("gmp_dynaview_ServerPunch", function(Data)
	if gmp.Enabled:GetBool() and gmp.DynaviewEnabled:GetBool() and gmp.DynaviewPunchEnabled:GetBool() then
		gmp.DynaviewPunchAngDesired = (gmp.DynaviewPunchAngDesired or Angle()) * 0.4 + Data:ReadAngle() * gmp.DynaviewPunchMultiplier:GetFloat()
	end
end)
local PlayerMetaTable = FindMetaTable("Player")
if PlayerMetaTable then
	gmp.DynaviewOldViewPunch = gmp.DynaviewOldViewPunch or PlayerMetaTable.ViewPunch
	function PlayerMetaTable:ViewPunch(PunchAng, PunchDuration)
		gmp.DynaviewPunchAngDesired = (gmp.DynaviewPunchAngDesired or Angle()) * 0.4 + PunchAng * gmp.DynaviewPunchMultiplier:GetFloat()
		if not gmp.DynaviewPunchOverrideOld:GetBool() then
			gmp.DynaviewOldViewPunch(self, PunchAng, PunchDuration)
		end
	end
end

hook.Add("UpdateAnimation", "gmp_cl_dynaview_Update", function()
	gmp.DynaviewViewModelMuzzleAngPos = nil
	local PlyLocal = LocalPlayer()
	if gmp.Enabled:GetBool() and gmp.DynaviewEnabled:GetBool() and IsValid(PlyLocal) then
		local Weapon = PlyLocal:GetActiveWeapon()
		local ViewModel = Weapon.Wep or PlyLocal:GetViewModel() -- COMPAT: Weapon.Wep from FA:S 2.0 Alpha
		if IsValid(Weapon) and IsValid(ViewModel) then
			local ViewModelModel = (not Weapon.Wep and Weapon.ViewModel) and Weapon.ViewModel or ViewModel:GetModel() -- HACK: some SWeps don't actually use the same viewmodel that they say they do; COMPAT: FA:S 2.0 Alpha sets Weapon.ViewModel but doesn't actually use it
			if ViewModelModel then
				local WeaponClass = Weapon:GetClass()
				local WeaponData = gmp.DynaviewGetWeaponData(ViewModelModel, WeaponClass)
				if gmp.DynaviewViewModel:GetModel() ~= ViewModelModel then
					gmp.DynaviewViewModel:SetModel(ViewModelModel)
				end
				if gmp.DynaviewViewModel.WeaponClass ~= WeaponClass then
					gmp.DynaviewViewModel.WeaponClass = WeaponClass
				end
				if gmp.DynaviewViewModel:GetModel() ~= "models/error.mdl" then
					if Weapon.gmp_DynaviewViewModelIdleMuzzleAng == nil then
						gmp.DynaviewViewModel:ResetSequence(gmp.DynaviewViewModel:SelectWeightedSequence(ACT_VM_IDLE))
						gmp.DynaviewViewModel:SetAnimTime(CurTime())
						gmp.DynaviewViewModel:SetCycle(0)
						DynaviewViewModelRefreshMuzzleAngPos()
						if gmp.DynaviewViewModelMuzzleAngPos then
							Weapon.gmp_DynaviewViewModelIdleMuzzleAng = gmp.DynaviewViewModelMuzzleAngPos.Ang
						end
					end
					if gmp.DynaviewViewModel:GetSequence() ~= ViewModel:GetSequence() or ViewModel:GetAnimTime() > gmp.DynaviewViewModel:GetAnimTime() then
						gmp.DynaviewViewModel:SetSequence(ViewModel:GetSequence())
					end
					gmp.DynaviewViewModel:SetAnimTime(ViewModel:GetAnimTime())
					gmp.DynaviewViewModel:SetPlaybackRate(ViewModel:GetPlaybackRate())
					gmp.DynaviewViewModel:FrameAdvance()
					if gmp.DynaviewViewModel:GetCycle() ~= ViewModel:GetCycle() then
						gmp.DynaviewViewModel:SetCycle(ViewModel:GetCycle())
					end
					DynaviewViewModelRefreshMuzzleAngPos(Weapon.gmp_DynaviewViewModelIdleMuzzleAng)
					if gmp.DynaviewViewModelMuzzleAngPos and Weapon.ViewModelFlip then
						gmp.DynaviewViewModelMuzzleAngPos.Ang.y = -gmp.DynaviewViewModelMuzzleAngPos.Ang.y
						gmp.DynaviewViewModelMuzzleAngPos.Ang.r = -gmp.DynaviewViewModelMuzzleAngPos.Ang.r
					end
				end
			end
		end
	end
end)

hook.Add("AdjustMouseSensitivity", "gmp_cl_dynaview_IronsightSensitivity", function() -- NOTE: arg 1 (fDefault) doesn't seem to do anything, omitted
	local Multiplier = gmp.DynaviewGetIronsightPercent()
	if Multiplier > 0 then
		return (1 * (1 - Multiplier)) + (gmp.DynaviewIronsightSensitivity:GetFloat() * Multiplier) -- TODO: add to CompatHooks system, just in case
	end
end)

hook.Add("CalcView", "gmp_cl_dynaview_CalcView", function(Ply, origin, angles, fov, znear, zfar)
	-- load order: other hooks, vehicle, drive, player_manager, weapon, GM+
	-- GM+ can run over top of other hooks, and weapon calls, but not vehicles (with some small exceptions), drive, or the player_manager.
	-- NOTE: there are some Dynaview-related code snippets outside of the main Dynaview block; these snippets just set values that Dynaview uses, and don't actually do anything on their own
	if IsValid(Ply) then
		-- this motherfucker requiring me to add specific code to fix his shit
		-- UNDO: doesn't even work anymore fuck this
		--[[
		if pk_pills and IsValid(pk_pills.getMappedEnt(Ply)) then
			gmp.DynaviewHandleEarlyValues(Ply:EyePos(), Ply:EyeAngles(), true)
			return
		end
		--]]
		-- original global values
		origin = origin or Ply:EyePos()
		angles = angles or Ply:EyeAngles()
		fov = fov or GetConVarNumber("fov_desired") or 75
		local vm_origin = origin
		local vm_angles = angles
		local drawviewer = Ply:ShouldDrawLocalPlayer()

		gmp.DynaviewCompat = false
		if gmp.CompatHooks.CalcView then
			for HookName, HookAction in pairs(gmp.CompatHooks.CalcView) do
				local NewData = nil
				if type(HookName) == "string" then
					NewData = HookAction(Ply, origin, angles, fov, znear, zfar)
				else
					if IsValid(HookName) then
						NewData = HookAction(Ply, origin, angles, fov, znear, zfar)
					else
						gmp.CompatHooks.CalcView[HookName] = nil
					end
				end
				if NewData then
					gmp.DynaviewCompat = true
					origin = NewData.origin or origin
					angles = NewData.angles or angles
					fov = NewData.fov or fov
					znear = NewData.znear or znear
					zfar = NewData.zfar or zfar
					vm_origin = NewData.vm_origin or vm_origin
					vm_angles = NewData.vm_angles or vm_angles
					drawviewer = NewData.drawviewer or drawviewer
				end
			end
		end

		local Vehicle = Ply:GetVehicle()
		if not IsValid(Vehicle) then
			Vehicle = nil
		end
		local Velocity = (Vehicle or Ply):GetVelocity()
		local Speed = Velocity:Length2D()

		local OnGround = nil
		if Vehicle then
			if gmp.Enabled:GetBool() and gmp.DynaviewEnabled:GetBool() and gmp.DynaviewVehicleEnabled:GetBool() and gmp.DynaviewVehicleJumpEnabled:GetBool() then
				if gmp.DynaviewVehicleJumpType:GetInt() == 2 then
					local OldPos = Vehicle.gmp_OldPos
					local CurrentPos = Vehicle:GetPos()
					if OldPos then
						OnGround = CurrentPos.z + 2 > OldPos.z
					end
					Vehicle.gmp_OldPos = CurrentPos
				else
					local Trace = util.TraceLine(
						{
							start = Vehicle:GetPos(),
							endpos = Vehicle:GetPos() + Vector(0, 0, -70),
							filter = {Ply, Vehicle}
						}
					)
					OnGround = Trace.Hit
				end
			else
				OnGround = true
			end
		else
			OnGround = (Ply:Alive() and Ply:IsOnGround()) or Ply:GetMoveType() ~= MOVETYPE_WALK or Ply.rm_Ragdoll ~= nil
		end
		local GroundEntity = nil
		if OnGround then
			GroundEntity = Ply:GetGroundEntity()
			if not IsValid(GroundEntity) then
				GroundEntity = nil
			end
		end
		local HitGround = false
		if gmp.DynaviewJumpTimer ~= nil then
			if OnGround then
				HitGround = true
				if gmp.Enabled:GetBool() and gmp.DynaviewEnabled:GetBool() and gmp.DynaviewSoundLandEnabled:GetBool() then
					Ply:EmitSound(Sound("gmplus/land" ..math.random(1, 8).. ".wav"), 15 + (math.min(gmp.DynaviewJumpTimer, 2) * (85 / 2)), math.Rand(70, 100))
				end
			else
				gmp.DynaviewJumpTimer = gmp.DynaviewJumpTimer + FrameTime()
			end
		elseif not OnGround then
			gmp.DynaviewJumpTimer = 0
		end

		local MoveState = -1
		if not Vehicle then
			local Speed = Ply:KeyDown(IN_SPEED)
			local Duck = Ply:Crouching() or Ply:KeyDown(IN_DUCK)
			local Walk = Ply:GetCanWalk() and Ply:KeyDown(IN_WALK)
			if not Speed and not Duck and not Walk then
				MoveState = 0 -- RUN
			elseif Speed and not Duck then
				MoveState = 1 -- SPEED
			elseif not Duck and Walk then
				MoveState = 2 -- WALK
			elseif Duck and ((Walk and Speed) or not Walk) then
				MoveState = 3 -- DUCK
			elseif Duck and Walk then
				MoveState = 4 -- DUCK + WALK
			end
		end

		local CrouchDampening = Vehicle and 1 or ((gmp.DynaviewCrouchDampeningEnabled:GetBool() and MoveState > 2) and ((MoveState == 3 and 0.6 or 0.8) / gmp.DynaviewCrouchDampeningMultiplier:GetFloat())) or 1

		if gmp.DynaviewPunchEnabled:GetBool() then
			local PunchAngDesired = gmp.DynaviewPunchAngDesired or Angle()
			if math.abs(PunchAngDesired.p) > 90 then
				PunchAngDesired.p = math.Clamp(PunchAngDesired.p, -80, 80)
			end
			if math.abs(PunchAngDesired.y) > 90 then
				PunchAngDesired.y = math.Clamp(PunchAngDesired.y, -80, 80)
			end
			if math.abs(PunchAngDesired.r) > 90 then
				PunchAngDesired.r = math.Clamp(PunchAngDesired.r, -80, 80)
			end
			if gmp.DynaviewPunchOnFallEnabled:GetBool() then
				if HitGround then
					local Value = math.min(gmp.DynaviewJumpTimer, 4)
					PunchAngDesired = PunchAngDesired + Angle(Value * 10 + math.Rand(5, 10), math.Rand(-Value, Value) * 5, math.Rand(-Value, Value) * 20) * gmp.DynaviewPunchOnFallMultiplier:GetFloat()
				elseif gmp.DynaviewJumpTimer == 0 then
					PunchAngDesired = PunchAngDesired + Angle(math.Rand(3, 5), math.Rand(-2, 2), math.Rand(-1, 1)) * gmp.DynaviewPunchOnFallMultiplier:GetFloat()
				end
			end
			local PunchAngCurrent = gmp.DynaviewPunchAngCurrent or Angle()
			PunchAngCurrent = PunchAngCurrent + ((PunchAngDesired - PunchAngCurrent) * gmp.DynaviewPunchStrengthCurrent:GetFloat())
			gmp.DynaviewPunchAngDesired = PunchAngDesired * gmp.DynaviewPunchStrengthDesired:GetFloat()
			gmp.DynaviewPunchAngCurrent = PunchAngCurrent
			angles = angles + (PunchAngCurrent + (PunchAngCurrent * gmp.DynaviewPunchStrengthCurrent:GetFloat())) * CrouchDampening * (1 - (gmp.DynaviewGetIronsightPercent() * 0.7))
		else
			gmp.DynaviewPunchAngCurrent = nil
			gmp.DynaviewPunchAngDesired = nil
		end

		-- save to table for returns
		-- use these values later on so we can use the globals as originals
		gmp.DynaviewData.origin =		origin
		gmp.DynaviewData.angles =		angles
		gmp.DynaviewData.fov =			fov
		gmp.DynaviewData.znear =		znear
		gmp.DynaviewData.zfar =			zfar
		gmp.DynaviewData.vm_origin =	vm_origin
		gmp.DynaviewData.vm_angles =	vm_angles
		gmp.DynaviewData.drawviewer =	drawviewer

		if IsValid(Vehicle) then
			local NewData = nil
			if not gmp.DynaviewCompat then -- NOTE: CalcView hooks normally override CalcVehicleView calls
				NewData = hook.Call("CalcVehicleView", GAMEMODE, Vehicle, Ply, gmp.DynaviewData)
			end
			if NewData or gmp.DynaviewCompat then
				NewData = NewData or gmp.DynaviewData
				if gmp.DynaviewVehicleEnabled:GetBool() then
					local VelocityLength = Velocity:Length() / 2500
					if gmp.DynaviewVehicleShakeEnabled:GetBool() then
						NewData.angles = NewData.angles + Angle(math.Rand(-VelocityLength, VelocityLength) + (Velocity.z / 80), math.Rand(-VelocityLength, VelocityLength), math.Rand(-VelocityLength, VelocityLength)) * gmp.DynaviewVehicleShakeMultiplier:GetFloat()
					end
					if gmp.DynaviewVehicleFOVEnabled:GetBool() then
						NewData.fov = NewData.fov + ((1 - math.cos((1 - (1 / ((VelocityLength * 10) + 1))) * math.pi / 2)) * 15) * gmp.DynaviewVehicleFOVMultiplier:GetFloat()
					end
				end
				gmp.DynaviewHandleEarlyValues(NewData.origin, NewData.angles, HitGround)
				gmp.DynaviewData = NewData
				return gmp.DynaviewData
			end
		end
		if drive.CalcView(Ply, gmp.DynaviewData) then
			gmp.DynaviewHandleEarlyValues(gmp.DynaviewData.origin, gmp.DynaviewData.angles, HitGround)
			return gmp.DynaviewData
		end
		if player_manager.RunClass(Ply, "CalcView", gmp.DynaviewData) then
			gmp.DynaviewHandleEarlyValues(gmp.DynaviewData.origin, gmp.DynaviewData.angles, HitGround)
			return gmp.DynaviewData
		end

		local Weapon = Ply:GetActiveWeapon()
		local ViewModel = Weapon.Wep or Ply:GetViewModel() -- COMPAT: same as in UpdateAnimation
		local HasValidWeapon = IsValid(Weapon) and IsValid(ViewModel)
		if HasValidWeapon and not gmp.DynaviewCompat then -- NOTE: CalcView hooks normally override weapon CalcView calls
			if Weapon.CalcView then
				local _origin, _angles, _fov = Weapon:CalcView(Ply, origin, angles, fov)
				gmp.DynaviewCompat = gmp.DynaviewCompat or _origin ~= nil or _angles ~= nil or _fov ~= nil
				if _origin then
					origin = _origin
					gmp.DynaviewData.origin = origin
				end
				if _angles then
					angles = _angles
					gmp.DynaviewData.angles = angles
				end
				if _fov then
					fov = _fov
					gmp.DynaviewData.fov = fov
				end
			end
		end

		gmp.DynaviewFOVChanged = fov ~= (GetConVarNumber("fov_desired") or 75) -- NOTE: fov is always valid and equals what it was last tick, so we compare to our own values just in case

		if gmp.Enabled:GetBool() and gmp.DynaviewEnabled:GetBool() and Ply:Alive() and Ply:GetViewEntity() == Ply and Ply:GetObserverMode() == OBS_MODE_NONE then
			local PunchAngle = Ply:GetViewPunchAngles() -- DEPRECATED: Ply:GetPunchAngle()
			if gmp.DynaviewPunchEnabled:GetBool() and gmp.DynaviewPunchOverrideOld:GetBool() and PunchAngle then
				--TODO: vm ang is different from this? maybe? sometimes?
				angles = angles - PunchAngle
				gmp.DynaviewData.angles = angles
			end

			local ViewModelModel = nil
			local WeaponData = nil
			local Activity = nil
			local ActivityName = nil
			local ActivityDraw = nil
			local ActivityLowered = nil
			local ActivityIdle = nil
			local ActivityAttack = nil
			local ActivityReload = nil
			if Weapon ~= gmp.DynaviewLastWeapon then
				gmp.DynaviewSmoothVMPosCurrent = gmp.DynaviewData.origin
				gmp.DynaviewSmoothVMAngCurrent = gmp.DynaviewData.angles
				gmp.DynaviewSmoothVMPosAddCurrent = vector_origin
				gmp.DynaviewSmoothVMAngAddCurrent = Angle(50, -30, 0)
				gmp.DynaviewViewModelMuzzleAngPos = nil
				if gmp.DynaviewSoundEquipEnabled:GetBool() and HasValidWeapon then
					Ply:EmitSound(Sound("gmplus/weapon_equip" ..math.random(1, 4).. ".wav"), 100, math.Rand(90, 110))
				end
			end
			if HasValidWeapon then
				if gmp.DynaviewPunchEnabled:GetBool() and gmp.DynaviewPunchOverrideOld:GetBool() and PunchAngle then
					vm_angles = vm_angles - PunchAngle
					gmp.DynaviewData.vm_angles = vm_angles
				end
				ViewModelModel = (not Weapon.Wep and Weapon.ViewModel) and Weapon.ViewModel or ViewModel:GetModel() -- COMPAT: same as in UpdateAnimation
				WeaponData = gmp.DynaviewGetWeaponData(ViewModelModel, Weapon:GetClass())
				if WeaponData.PosOffset then
					gmp.DynaviewData.vm_origin = gmp.DynaviewData.vm_origin + (gmp.DynaviewData.vm_angles:Forward() * WeaponData.PosOffset.x) + (gmp.DynaviewData.vm_angles:Right() * WeaponData.PosOffset.y) + (gmp.DynaviewData.vm_angles:Up() * WeaponData.PosOffset.z)
				end
				if WeaponData.AngOffset then
					gmp.DynaviewData.vm_angles = AddAngles(gmp.DynaviewData.vm_angles, WeaponData.AngOffset)
				end
				Activity = ViewModel:GetSequenceActivity(ViewModel:GetSequence())
				ActivityName = ViewModel:GetSequenceActivityName(ViewModel:GetSequence())
				ActivityDraw = ActivityName:sub(1, 11) == "ACT_VM_DRAW"
				ActivityLowered = Activity == ACT_VM_IDLE_TO_LOWERED or Activity == ACT_VM_IDLE_LOWERED or ActivityName:sub(1, 13) == "ACT_VM_SPRINT"
				ActivityIdle = not ActivityLowered and (ActivityName:sub(1, 11) == "ACT_VM_IDLE" or ActivityName:sub(1, 12) == "ACT_VM_IIDLE" or Activity == ACT_VM_DEPLOYED_IDLE or Activity == ACT_VM_DEPLOYED_IRON_IDLE)
				ActivityAttack = ActivityName:sub(1, 20) == "ACT_VM_PRIMARYATTACK" or ActivityName:sub(1, 22) == "ACT_VM_SECONDARYATTACK" or ActivityName:sub(1, 13) == "ACT_VM_ISHOOT" or ActivityName:sub(1, 13) == "ACT_VM_RECOIL" or Activity == ACT_VM_FIRE_TO_EMPTY or ActivityName:sub(1, 10) == "ACT_VM_HIT" or ActivityName:sub(1, 11) == "ACT_VM_MISS" or Activity == ACT_VM_HAULBACK or ActivityName:sub(1, 12) == "ACT_VM_SWING"
				ActivityReload = ActivityName:sub(1, 13) == "ACT_VM_RELOAD" or ActivityName:sub(1, 10) == "ACT_RELOAD" or ActivityName:sub(1, 18) == "ACT_SHOTGUN_RELOAD" or Activity == ACT_SHOTGUN_PUMP
			end
			if (gmp.DynaviewRunDisableIncompatible:GetBool() and WeaponData == gmp.DynaviewWeaponDataDefault) or Weapon ~= gmp.DynaviewLastWeapon or not ActivityIdle then
				gmp.DynaviewRunMultiplier = 0
			elseif Weapon == gmp.DynaviewLastWeapon and ActivityIdle and (not gmp.DynaviewFreelookEnabled:GetBool() or not gmp.DynaviewFreelookActive) and Ply:KeyDown(IN_FORWARD) and Speed >= Ply:GetWalkSpeed() and ((Ply:KeyDown(IN_SPEED) and Speed >= Ply:GetWalkSpeed()) or (not OnGround and Speed >= Ply:GetRunSpeed() - 10)) then
				gmp.DynaviewRunMultiplier = math.Clamp(gmp.DynaviewRunMultiplier + gmp.DynaviewRunStrengthIn:GetFloat() * (ActivityDraw and 0.5 or 1), 0, 1)
			else
				gmp.DynaviewRunMultiplier = math.Clamp(gmp.DynaviewRunMultiplier - gmp.DynaviewRunStrengthOut:GetFloat(), 0, 1)
			end

			if not gmp.DynaviewFreelookEnabled:GetBool() or gmp.DynaviewFOVChanged or not HasValidWeapon then
				gmp.DynaviewFreelookActive = false
			end

			local IronsightPercent = 0
			if not HasValidWeapon or Weapon ~= gmp.DynaviewLastWeapon or not WeaponData.Ironsights then
				gmp.DynaviewIronsightActive = false
				gmp.DynaviewIronsightPercent = 0
			else
				IronsightPercent = gmp.DynaviewGetIronsightPercent()
			end

			local CloseHit = false
			local CloseFraction = 1
			if gmp.DynaviewCloseEnabled:GetBool() then
				local Pos = gmp.DynaviewSmoothVMPosCurrent or (ViewModel and ViewModel:GetPos() or origin)
				local Ang = gmp.DynaviewSmoothAngCurrent or gmp.DynaviewData.angles
				if gmp.DynaviewIronsightActive and WeaponData.Ironsights then
					local IronsightPos = WeaponData.Ironsights.Pos * IronsightPercent
					IronsightPos:Rotate(Ang)
					Pos = Pos - IronsightPos
				end
				local Forward = Ang:Forward()
				local Trace = util.TraceLine(
					{
						start = Pos,
						endpos = Pos + Forward * 20,
						filter = Ply
					}
				)
				if Trace.Hit then
					CloseHit = true
					CloseFraction = 0
				else
					Trace = util.TraceLine(
						{
							start = Pos + Forward * 20,
							endpos = Pos + Forward * 50,
							filter = Ply
						}
					)
					if Trace.Hit then
						CloseHit = true
						CloseFraction = Trace.Fraction
					end
				end
			end

			if HasValidWeapon and WeaponData.Ironsights then
				if MoveState == 1 or Ply:KeyDown(IN_ZOOM) or gmp.DynaviewFOVChanged or not OnGround or CloseFraction < 0.8 or (gmp.DynaviewFreelookEnabled:GetBool() and gmp.DynaviewFreelookActive) then
					gmp.DynaviewIronsightActive = false
				end
				if gmp.DynaviewIronsightActive and not ActivityLowered and not ActivityReload then
					if ActivityIdle then
						Weapon:SendWeaponAnim(ACT_VM_IDLE)
					end
					if gmp.DynaviewSoundIronsightEnabled:GetBool() and gmp.DynaviewIronsightPercent <= 0 then
						Ply:EmitSound(Sound("gmplus/ironsight_in" ..math.random(1, 2).. ".wav"), 20 + (math.min(WeaponData.Ironsights.Fov, 35) / 35 * 60), 40 + (35 - math.min(WeaponData.Ironsights.Fov, 35)) / 35 * 60)
					end
					gmp.DynaviewIronsightPercent = math.min(gmp.DynaviewIronsightPercent + (0.1 * math.min(1.5, 1 / (WeaponData.Ironsights.Fov / 15))), 1)
				else
					if gmp.DynaviewSoundIronsightEnabled:GetBool() and gmp.DynaviewIronsightPercent >= 1 then
						Ply:EmitSound(Sound("gmplus/ironsight_out" ..math.random(1, 2).. ".wav"), 5 + (math.min(WeaponData.Ironsights.Fov, 35) / 35 * 95), 55 + (35 - math.min(WeaponData.Ironsights.Fov, 35)) / 35 * 60)
					end
					if gmp.DynaviewIronsightActive then
						gmp.DynaviewIronsightPercent = math.max(gmp.DynaviewIronsightPercent - (0.075 * math.min(1.5, 1 / (WeaponData.Ironsights.Fov / 15))), 0.3)
					else
						gmp.DynaviewIronsightPercent = math.max(gmp.DynaviewIronsightPercent - (0.15 * math.min(1.5, 1 / (WeaponData.Ironsights.Fov / 15))), 0)
					end
				end
				IronsightPercent = gmp.DynaviewGetIronsightPercent()
			end

			local BobType = gmp.DynaviewBobType:GetInt()
			local BobCycleMultiplier = 0
			local BobCycleX = 0
			local BobCycleY = 0
			if BobType ~= 2 then
				gmp.DynaviewBobTime = gmp.DynaviewBobTime + (CurTime() - gmp.DynaviewBobTimeLast) * (Speed > 0 and (Speed / Ply:GetWalkSpeed()) or 0)
				gmp.DynaviewBobTimeLast = CurTime()
			end
			if gmp.DynaviewBobEnabled:GetBool() then
				BobCycleMultiplier = (Speed * (MoveState > 2 and 1.5 or 1)) / Ply:GetRunSpeed()
				BobCycleMultiplier = (BobCycleMultiplier > 1 and math.min(1 + ((BobCycleMultiplier - 1) * 0.2), 5) or BobCycleMultiplier)
				if BobType == 2 then
					local BobStepTime = Ply:GetNetworkedInt("m_flStepSoundTime")
					BobCycleX = gmp.DynaviewBobStepCycleXCurrent
					BobCycleY = gmp.DynaviewBobStepCycleYCurrent
					local BobCycleXDesired = gmp.DynaviewBobStepCycleXDesired
					local BobCycleYDesired = gmp.DynaviewBobStepCycleYDesired
					if BobStepTime > gmp.DynaviewBobStepTimeLast then
						gmp.DynaviewBobStepDirection = -gmp.DynaviewBobStepDirection
						BobCycleXDesired = 2 * gmp.DynaviewBobMultiplierX:GetFloat() * gmp.DynaviewBobStepDirection
						BobCycleYDesired = -2 * gmp.DynaviewBobMultiplierY:GetFloat()
					end
					BobCycleX = (BobCycleX + ((BobCycleXDesired - BobCycleX) * math.max(BobCycleMultiplier, 0.4) * gmp.DynaviewBobType2StrengthCurrentX:GetFloat()))
					BobCycleY = (BobCycleY + ((BobCycleYDesired - BobCycleY) * math.max(BobCycleMultiplier, 0.4) * gmp.DynaviewBobType2StrengthCurrentY:GetFloat()))
					BobCycleXDesired = BobCycleXDesired * (OnGround and gmp.DynaviewBobType2StrengthDesiredX:GetFloat() or 0.85)
					BobCycleYDesired = BobCycleYDesired * (OnGround and gmp.DynaviewBobType2StrengthDesiredY:GetFloat() or 0.7)
					gmp.DynaviewBobStepTimeLast = BobStepTime
					gmp.DynaviewBobStepCycleXCurrent = BobCycleX
					gmp.DynaviewBobStepCycleYCurrent = BobCycleY
					gmp.DynaviewBobStepCycleXDesired = BobCycleXDesired
					gmp.DynaviewBobStepCycleYDesired = BobCycleYDesired
					BobCycleY = BobCycleY + 2 * gmp.DynaviewBobMultiplierY:GetFloat() * BobCycleMultiplier * gmp.DynaviewBobType2StrengthCurrentY:GetFloat()
				elseif OnGround and BobCycleMultiplier > 0.01 then
					BobCycleX = math.sin(gmp.DynaviewBobTime * 0.5 % 1 * math.pi * 2) * gmp.DynaviewBobMultiplierY:GetFloat() * BobCycleMultiplier
					BobCycleY = math.sin(gmp.DynaviewBobTime % 1 * math.pi * 2) * gmp.DynaviewBobMultiplierX:GetFloat() * BobCycleMultiplier
				end
			else
				gmp.DynaviewBobStepCycleXCurrent = 0
				gmp.DynaviewBobStepCycleYCurrent = 0
				gmp.DynaviewBobStepCycleXDesired = 0
				gmp.DynaviewBobStepCycleYDesired = 0
			end

			local SwayMultiplier = 0
			if gmp.DynaviewSwayEnabled:GetBool() then
				SwayMultiplier = math.max((Speed / Ply:GetWalkSpeed()) + ((1 - (math.Clamp(Ply:Health(), 1, 100) / 100)) * 2), 1) * CrouchDampening
				gmp.DynaviewSwayTime = gmp.DynaviewSwayTime + FrameTime() * SwayMultiplier * math.Clamp(CrouchDampening * 2, 0.5, 1)
			end

			local PosDesired = gmp.DynaviewData.origin
			local PosCurrent = gmp.DynaviewSmoothPosCurrent or PosDesired
			if PosCurrent ~= PosDesired then
				if gmp.DynaviewSmoothEnabled:GetBool() then
					PosCurrent = PosCurrent + ((PosDesired - PosCurrent) * gmp.DynaviewSmoothPosStrength:GetFloat())
				else
					PosCurrent = PosDesired
				end
			end
			gmp.DynaviewSmoothPosCurrent = PosCurrent

			local PosAddDesired = vector_origin
			if gmp.DynaviewBobEnabled:GetBool() then
				if BobType == 2 then
					PosAddDesired = Vector(0, BobCycleX * 0.9, -BobCycleY * 0.6)
				else
					PosAddDesired = Vector(BobCycleY * 1.25, 0, 0)
				end
				PosAddDesired = PosAddDesired * gmp.DynaviewBobMultiplierPos:GetFloat() * (1 - (IronsightPercent * 0.4)) * (gmp.DynaviewFOVChanged and 0.6 or 1)
			end
			PosAddDesired:Rotate(Angle(0, gmp.DynaviewData.angles.y, 0))
			local PosAddCurrent = gmp.DynaviewSmoothPosAddCurrent or PosAddDesired
			if HitGround then
				local Value = math.min(gmp.DynaviewJumpTimer * 2.5, 5)
				PosAddCurrent = PosAddCurrent + Vector(math.Rand(-Value, Value) / 2, math.Rand(-Value, Value) / 2, -Value * 3)
			end
			if PosAddCurrent ~= PosAddDesired then
				if gmp.DynaviewSmoothEnabled:GetBool() then
					PosAddCurrent = PosAddCurrent + ((PosAddDesired - PosAddCurrent) * gmp.DynaviewSmoothPosAddStrength:GetFloat())
				else
					PosAddCurrent = PosAddDesired
				end
			end
			gmp.DynaviewSmoothPosAddCurrent = PosAddCurrent
			gmp.DynaviewData.origin = PosCurrent + PosAddCurrent

			local AngDesired = gmp.DynaviewData.angles
			local AngCurrent = gmp.DynaviewSmoothAngCurrent or AngDesired
			if gmp.DynaviewFreelookEnabled:GetBool() and gmp.DynaviewFreelookAng and not gmp.DynaviewFreelookActive then
				AngCurrent = gmp.DynaviewFreelookAng
				gmp.DynaviewFreelookAng = nil
			end
			if AngCurrent ~= AngDesired then
				if gmp.DynaviewSmoothEnabled:GetBool() then
					if AngDesired.p > 260 and AngCurrent.p < 260 then
						AngCurrent.p = AngCurrent.p + 360
					elseif AngDesired.p < 260 and AngCurrent.p > 260 then
						AngCurrent.p = AngCurrent.p - 360
					end
					if AngDesired.y > 90 and AngCurrent.y < -90 and AngCurrent.y + 360 - AngDesired.y < 90 then
						AngCurrent.y = AngCurrent.y + 360
					elseif AngDesired.y < -90 and AngCurrent.y > 90 and AngDesired.y + 360 - AngCurrent.y < 90 then
						AngCurrent.y = AngCurrent.y - 360
					end
					if IronsightPercent == 1 then
						AngCurrent = AngDesired
					else
						AngCurrent = AngCurrent + ((AngDesired - AngCurrent) * (IronsightPercent + (gmp.DynaviewSmoothAngStrength:GetFloat() * (1 - IronsightPercent))))
					end
				else
					AngCurrent = AngDesired
				end
			end
			gmp.DynaviewSmoothAngCurrent = AngCurrent

			local AngAddDesired = Angle()
			if gmp.DynaviewLeanEnabled:GetBool() then
				--[[ part of the CreateMove fix for Freelook, unused/buggy
				local LeanAng = nil
				if gmp.DynaviewFreelookEnabled:GetBool() and gmp.DynaviewFreelookActive and gmp.DynaviewFreelookAng then
					local LeanVelocity = Velocity
					LeanVelocity:Rotate(-gmp.DynaviewFreelookAng)
					LeanAng = LeanVelocity.y * 0.03 * gmp.DynaviewLeanMultiplier:GetFloat()
				else
					LeanAng = -Ply:WorldToLocal(Ply:GetPos() + Velocity).y * 0.03 * gmp.DynaviewLeanMultiplier:GetFloat()
				end
				--]]
				AngAddDesired = Angle(0, 0, math.Clamp(-Ply:WorldToLocal(Ply:GetPos() + Velocity).y * 0.03 * gmp.DynaviewLeanMultiplier:GetFloat(), -60, 60))
			end
			if gmp.DynaviewStopEnabled:GetBool() then
				local OldSpeed = (Ply.gmp_OldVelocity or Velocity):Length2D()
				if Speed + 10 < OldSpeed then --and not gmp.DynaviewFOVChanged then
					local LocalVelocity = Ply:WorldToLocal(Ply:GetPos() + Velocity)
					AngAddDesired = AngAddDesired + Angle(math.Clamp(LocalVelocity.x, -40, 40), 0, math.Clamp(LocalVelocity.y * (gmp.DynaviewLeanEnabled:GetBool() and (8 * gmp.DynaviewLeanMultiplier:GetFloat()) or 3), -70, 70)) * (OldSpeed - Speed - 10) * 0.002 * gmp.DynaviewStopMultiplier:GetFloat()
				end
				Ply.gmp_OldVelocity = Velocity
			end
			if gmp.DynaviewSwayEnabled:GetBool() and not gmp.DynaviewFOVChanged then
				AngAddDesired = AngAddDesired + Angle(
					math.sin((gmp.DynaviewSwayTime * 0.88 * gmp.DynaviewSwayTimeMultiplier:GetFloat()) % (math.pi * 2)) * 0.8,
					math.sin((gmp.DynaviewSwayTime * 1.13 * gmp.DynaviewSwayTimeMultiplier:GetFloat()) % (math.pi * 2)) * 0.8,
					math.sin((gmp.DynaviewSwayTime * 0.53 * gmp.DynaviewSwayTimeMultiplier:GetFloat()) % (math.pi * 2)) * 0.4
				) * SwayMultiplier * gmp.DynaviewSwayMultiplier:GetFloat() * (((1 - IronsightPercent) * 0.95) + 0.05)
			end
			if gmp.DynaviewBobEnabled:GetBool() and not gmp.DynaviewFOVChanged then
				AngAddDesired = AngAddDesired + Angle(BobCycleY * (BobType == 2 and 6 or 2), BobCycleX * 2.5, BobCycleX * 1.25) * gmp.DynaviewBobMultiplierAng:GetFloat() * (1 - (IronsightPercent * 0.85)) * (gmp.DynaviewFOVChanged and 0.15 or 1)
			end
			local AngAddCurrent = gmp.DynaviewSmoothAngAddCurrent or AngAddDesired
			if GroundEntity then
				local Random = (Velocity - (GroundEntity:GetVelocity() * 0.5)):Length() / 8000
				AngAddCurrent = AngAddCurrent + Angle(math.Rand(-Random, Random), math.Rand(-Random, Random), math.Rand(-Random, Random)) * CrouchDampening
			else
				local Random = Velocity:Length() / (OnGround and 8500 or 4000)
				AngAddCurrent = AngAddCurrent + Angle((OnGround and math.Rand(-Random, Random) or (Velocity.z / 800)), math.Rand(-Random, Random), math.Rand(-Random, Random))
			end
			if AngAddCurrent ~= AngAddDesired then
				if gmp.DynaviewSmoothEnabled:GetBool() and not gmp.DynaviewFOVChanged then
					AngAddCurrent = AngAddCurrent + ((AngAddDesired - AngAddCurrent) * gmp.DynaviewSmoothAngAddStrength:GetFloat())
				else
					AngAddCurrent = AngAddDesired
				end
			end
			gmp.DynaviewSmoothAngAddCurrent = AngAddCurrent
			if gmp.DynaviewFreelookEnabled:GetBool() and gmp.DynaviewFreelookActive then
				if not gmp.DynaviewFreelookAng then
					gmp.DynaviewFreelookAng = gmp.DynaviewData.angles
				end
				local DeadzoneX = gmp.DynaviewFreelookDeadzoneX:GetInt()
				local DeadzoneY = gmp.DynaviewFreelookDeadzoneY:GetInt()
				local Offset = angles - gmp.DynaviewFreelookAng
				if Offset.y > 180 then
					Offset.y = Offset.y - 360
				elseif Offset.y < -180 then
					Offset.y = Offset.y + 360
				end
				if Offset.y > DeadzoneX then
					gmp.DynaviewFreelookAng.y = gmp.DynaviewFreelookAng.y + (Offset.y - DeadzoneX)
				elseif Offset.y < -DeadzoneX then
					gmp.DynaviewFreelookAng.y = gmp.DynaviewFreelookAng.y + (Offset.y + DeadzoneX)
				end
				if Offset.p > DeadzoneY then
					gmp.DynaviewFreelookAng.p = gmp.DynaviewFreelookAng.p + (Offset.p - DeadzoneY)
				elseif Offset.p < -DeadzoneY then
					gmp.DynaviewFreelookAng.p = gmp.DynaviewFreelookAng.p + (Offset.p + DeadzoneY)
				end
				gmp.DynaviewData.angles = gmp.DynaviewFreelookAng + AngAddCurrent
			else
				gmp.DynaviewData.angles = AngCurrent + AngAddCurrent
			end

			if HasValidWeapon then
				if gmp.DynaviewVMDynamicsEnabled:GetBool() then
					local VMDynamicsAngDesired = Angle()
					if gmp.DynaviewViewModelMuzzleAngPos and not ActivityLowered and (not ActivityIdle or not gmp.DynaviewVMDynamicsDisableOnIdle:GetBool()) then
						local Offset = gmp.DynaviewViewModelMuzzleAngPos.Ang
						local UseRoll = false
						local Default = false
						if Offset.p >= 180 then
							Offset.p = Offset.p - 360
						elseif Offset.p <= -180 then
							Offset.p = Offset.p + 360
						end
						if Offset.y >= 180 then
							Offset.y = Offset.y - 360
						elseif Offset.y <= -180 then
							Offset.y = Offset.y + 360
						end
						if Offset.r >= 180 then
							Offset.r = Offset.r - 360
						elseif Offset.r <= -180 then
							Offset.r = Offset.r + 360
						end
						if (ViewModelModel == "models/weapons/c_crowbar.mdl" or ViewModelModel == "models/weapons/v_crowbar.mdl") and gmp.DynaviewVMDynamicsCompatHL2Crowbar:GetBool() then
							if Activity == ACT_VM_MISSCENTER then
								Offset.p = Offset.p * 0.07
								Offset.y = Offset.y * 0.09
							elseif Activity == ACT_VM_HITCENTER then
								Offset.p = Offset.p * 0.3
								Offset.y = Offset.y * 0.1
							else
								Default = true
							end
						elseif (ViewModelModel == "models/weapons/c_smg1.mdl" or ViewModelModel == "models/weapons/v_smg1.mdl") and gmp.DynaviewVMDynamicsCompatHL2SMG1:GetBool() then
							if Activity == ACT_VM_PRIMARYATTACK and Weapon:Clip1() > 0 then
								Offset.p = Offset.p + (math.Rand(-0.8, 0.3) * (Speed / Ply:GetRunSpeed()))
								Offset.y = Offset.y + math.Rand(-0.2, 0.2) + (math.Rand(-0.4, 0.4) * (Speed / Ply:GetRunSpeed()))
								Offset.r = Offset.r + math.Rand(-0.3, 0.3) + (math.Rand(-1.5, 1.5) * (Speed / Ply:GetRunSpeed()))
								UseRoll = true
							else
								Default = true
							end
						elseif (ViewModelModel == "models/weapons/c_irifle.mdl" or ViewModelModel == "models/weapons/v_irifle.mdl") and gmp.DynaviewVMDynamicsCompatHL2AR2:GetBool() then
							if Activity == ACT_VM_PRIMARYATTACK and Weapon:Clip1() > 0 then
								Offset.p = Offset.p + math.Rand(-0.4, 0.1) + (math.Rand(-2, 0.5) * (Speed / Ply:GetRunSpeed()))
								Offset.y = Offset.y + math.Rand(-0.05, 0.05) + (math.Rand(-1, 1) * (Speed / Ply:GetRunSpeed()))
								Offset.r = Offset.r + math.Rand(-0.1, 0.1) + (math.Rand(-4, 4) * (Speed / Ply:GetRunSpeed()))
								UseRoll = true
							elseif Activity == ACT_VM_SECONDARYATTACK then
								Offset.p = Offset.p * 2
								Offset.r = Offset.r * 4
								UseRoll = true
							elseif Activity == ACT_VM_FIDGET then
								Offset.r = Offset.r * 4
								UseRoll = true
							else
								Default = true
							end
						elseif (ViewModelModel == "models/weapons/c_shotgun.mdl" or ViewModelModel == "models/weapons/v_shotgun.mdl") and gmp.DynaviewVMDynamicsCompatHL2Shotgun:GetBool() then
							if ActivityAttack then
								Offset.p = Offset.p * 0.7
								Offset.y = Offset.y * 0.7
								Offset.r = Offset.r * 0.3
								UseRoll = true
							elseif ActivityReload then
								Offset.p = -Offset.p * 0.5
								Offset.y = -Offset.y
								Offset.r = -Offset.r * 0.8
								UseRoll = true
							else
								Default = true
							end
						elseif (ViewModelModel == "models/weapons/c_grenade.mdl" or ViewModelModel == "models/weapons/v_grenade.mdl") and gmp.DynaviewVMDynamicsCompatHL2Grenade:GetBool() then
							if Activity == ACT_VM_PULLBACK_HIGH then
								Offset.p = Offset.p * 0.3
								Offset.y = Offset.y * 0.3
							elseif Activity == ACT_VM_THROW then
								Offset.p = Offset.p * 0.4
								Offset.y = Offset.y * 0.4
							elseif Activity == ACT_VM_PULLBACK_LOW or Activity == ACT_VM_HAULBACK then
								Offset.p = Offset.p * 0.1
								Offset.y = Offset.y * 0.2
							elseif Activity == ACT_VM_SECONDARYATTACK then
								Offset.p = Offset.p * 0.5
								Offset.y = Offset.y * 0.2
							else
								Default = true
							end
						else
							Default = true
						end
						if Default then
							if ActivityAttack then
								Offset.p = Offset.p * 0.4
								Offset.y = Offset.y * 0.4
							elseif ActivityReload or Activity == ACT_VM_FIDGET then
								if Offset.p > 0 then
									Offset.p = Offset.p * 0.1
								else
									Offset.p = -Offset.p * 0.15
								end
								Offset.y = -Offset.y * 0.2
								Offset.r = Offset.r * 0.1
								UseRoll = true
							else
								Offset.p = Offset.p * 0.15
								Offset.y = Offset.y * 0.15
							end
						end
						if not UseRoll then
							Offset.r = 0
						end
						VMDynamicsAngDesired = Offset * (((1 - IronsightPercent) * 0.25) + 0.75) * gmp.DynaviewVMDynamicsMultiplier:GetFloat() * CrouchDampening
					end
					local VMDynamicsAngCurrent = gmp.DynaviewVMDynamicsSmoothAngCurrent or VMDynamicsAngDesired
					if VMDynamicsAngCurrent ~= VMDynamicsAngDesired then
						if gmp.DynaviewVMDynamicsSmoothEnabled:GetBool() then
							VMDynamicsAngCurrent = VMDynamicsAngCurrent + ((VMDynamicsAngDesired - VMDynamicsAngCurrent) * gmp.DynaviewVMDynamicsSmoothAngStrength:GetFloat())
						else
							VMDynamicsAngCurrent = VMDynamicsAngDesired
						end
					end
					gmp.DynaviewVMDynamicsSmoothAngCurrent = VMDynamicsAngCurrent
					if WeaponData.VMDynamicsAngMultiplier then
						VMDynamicsAngCurrent.p = VMDynamicsAngCurrent.p * WeaponData.VMDynamicsAngMultiplier.p -- lol garry not implimenting angle mult
						VMDynamicsAngCurrent.y = VMDynamicsAngCurrent.y * WeaponData.VMDynamicsAngMultiplier.y
						VMDynamicsAngCurrent.r = VMDynamicsAngCurrent.r * WeaponData.VMDynamicsAngMultiplier.r
					end
					gmp.DynaviewData.angles = gmp.DynaviewData.angles + VMDynamicsAngCurrent
				end

				local VMPosDesired = vector_origin
				if gmp.DynaviewBobEnabled:GetBool() then
					if BobType == 2 then
						VMPosDesired = Vector(BobCycleX * 0.5, 0, 0) * (1 - (IronsightPercent * 0.7)) * gmp.DynaviewBobMultiplierPosVM:GetFloat() * (gmp.DynaviewFOVChanged and 0.3 or 1)
					else
						VMPosDesired = Vector(BobCycleY / 2, BobCycleX * 1.5, BobCycleY * 1) * (1 - (IronsightPercent * 0.85)) * gmp.DynaviewBobMultiplierPosVM:GetFloat() * (gmp.DynaviewFOVChanged and 0.15 or 1)
					end
				end
				if WeaponData.Ironsights then
					VMPosDesired = VMPosDesired + WeaponData.Ironsights.Pos * IronsightPercent
					gmp.DynaviewData.fov = gmp.DynaviewData.fov - (IronsightPercent * WeaponData.Ironsights.Fov)
				end
				VMPosDesired:Rotate(AngCurrent)
				VMPosDesired = VMPosDesired + PosCurrent
				local VMPosCurrent = gmp.DynaviewSmoothVMPosCurrent or VMPosDesired
				if VMPosCurrent ~= VMPosDesired then
					if gmp.DynaviewSmoothVMEnabled:GetBool() and IronsightPercent ~= 1 then
						VMPosCurrent = VMPosCurrent + ((VMPosDesired - VMPosCurrent) * (IronsightPercent + (gmp.DynaviewSmoothVMPosStrength:GetFloat() * (1 - IronsightPercent))))
					else
						VMPosCurrent = VMPosDesired
					end
				end
				gmp.DynaviewSmoothVMPosCurrent = VMPosCurrent

				local VMPosAddDesired = vector_origin
				local RunPos = nil
				if WeaponData.Run and (not gmp.DynaviewRunDisableIncompatible:GetBool() or (gmp.DynaviewRunDisableIncompatible:GetBool() and WeaponData ~= gmp.DynaviewWeaponDataDefault)) then
					RunPos = (AngCurrent:Forward() * WeaponData.Run.Pos.x) + (AngCurrent:Right() * WeaponData.Run.Pos.y) + (AngCurrent:Up() * WeaponData.Run.Pos.z)
				end
				if gmp.DynaviewRunEnabled:GetBool() and RunPos and ActivityIdle and gmp.DynaviewRunMultiplier > 0 then
					VMPosAddDesired = RunPos * gmp.DynaviewRunMultiplier
				elseif CloseHit then
					if gmp.DynaviewCloseType:GetInt() == 1 and RunPos and ActivityIdle then
						VMPosAddDesired = VMPosAddDesired - AngCurrent:Forward() * 5 * (1 - CloseFraction) + RunPos * (1 - CloseFraction)
					else
						VMPosAddDesired = VMPosAddDesired - (AngCurrent:Forward() * 5 * gmp.DynaviewCloseType2Multiplier:GetFloat()) * (1 - CloseFraction)
					end
				end
				if gmp.DynaviewCrouchOffsetEnabled:GetBool() and OnGround and (Ply:Crouching() or MoveState > 2) and not gmp.DynaviewFOVChanged then
					VMPosAddDesired = VMPosAddDesired - ((AngCurrent:Forward() * 2) + (AngCurrent:Right() * 0.5) + Vector(0, 0, -2)) * gmp.DynaviewCrouchOffsetMultiplier:GetFloat() * (1 - IronsightPercent)
				end
				if gmp.DynaviewVMSwingEnabled:GetBool() and not gmp.DynaviewFOVChanged then
					local SwingAng = angles - AngCurrent
					--[[
					if gmp.DynaviewFreelookAng then
						SwingAng = gmp.DynaviewFreelookAng - AngCurrent
						SwingAng.p = SwingAng.p * 0.75
						SwingAng.y = -SwingAng.y * 0.25
						SwingAng.r = -SwingAng.r * 2
					end
					--]]
					if Weapon.ViewModelFlip then
						SwingAng.y = -SwingAng.y
					end
					local SwingPos = Vector(-math.abs(SwingAng.p) * 0.3 * gmp.DynaviewVMSwingMultiplierX:GetFloat(), SwingAng.y * 0.4 * gmp.DynaviewVMSwingMultiplierY:GetFloat(), (SwingAng.p * 0.3 + SwingAng.y * 0.05) * gmp.DynaviewVMSwingMultiplierZ:GetFloat()) * CrouchDampening * (1 - (IronsightPercent * 0.7))
					if (gmp.DynaviewSmoothEnabled:GetBool() and gmp.DynaviewSmoothVMEnabled:GetBool() and gmp.DynaviewSmoothVMAngStrength:GetFloat() > gmp.DynaviewSmoothAngStrength:GetFloat()) or (gmp.DynaviewSmoothEnabled:GetBool() and not gmp.DynaviewSmoothVMEnabled:GetBool()) then
						SwingPos.y = -SwingPos.y
					end
					SwingPos:Rotate(AngCurrent)
					VMPosAddDesired = VMPosAddDesired + SwingPos
				end
				local VMPosAddCurrent = gmp.DynaviewSmoothVMPosAddCurrent or VMPosAddDesired
				if HitGround then
					local Value = math.min(gmp.DynaviewJumpTimer * 2, 4)
					VMPosAddCurrent = VMPosAddCurrent + Vector(math.Rand(-Value, Value) / 2, math.Rand(-Value, Value) / 2, -Value * 2)
				end
				if VMPosAddCurrent ~= VMPosAddDesired then
					if gmp.DynaviewSmoothVMEnabled:GetBool() then
						VMPosAddCurrent = VMPosAddCurrent + ((VMPosAddDesired - VMPosAddCurrent) * gmp.DynaviewSmoothVMPosAddStrength:GetFloat())
					else
						VMPosAddCurrent = VMPosAddDesired
					end
				end
				gmp.DynaviewSmoothVMPosAddCurrent = VMPosAddCurrent
				if Weapon.ViewModelFlip then -- BUG: Z value is still mirrored
					local VMPosCurrentFlip = VMPosCurrent - gmp.DynaviewData.origin
					local AngDelta = gmp.DynaviewData.angles - VMPosCurrentFlip:Angle()
					AngDelta.p = 0
					AngDelta.r = 0
					VMPosCurrentFlip:Rotate(AngDelta * 2)
					gmp.DynaviewData.vm_origin = gmp.DynaviewData.origin + VMPosCurrentFlip + VMPosAddCurrent + (gmp.DynaviewData.vm_origin - origin)
				else
					gmp.DynaviewData.vm_origin = VMPosCurrent + VMPosAddCurrent + (gmp.DynaviewData.vm_origin - origin)
				end

				local VMAngDesired = angles
				if gmp.DynaviewFreelookEnabled:GetBool() and gmp.DynaviewFreelookActive and gmp.DynaviewFreelookAng then
					local Offset = VMAngDesired - gmp.DynaviewFreelookAng
					if Offset.y < -180 then
						Offset.y = Offset.y + 360
					elseif Offset.y > 180 then
						Offset.y = Offset.y - 360
					end
					Offset.p = Offset.p * gmp.DynaviewFreelookVMAngMultiplierY:GetFloat()
					Offset.y = Offset.y * gmp.DynaviewFreelookVMAngMultiplierX:GetFloat()
					VMAngDesired = gmp.DynaviewFreelookAng + Offset
				end
				if gmp.DynaviewPunchEnabled:GetBool() then
					VMAngDesired = VMAngDesired + gmp.DynaviewPunchAngDesired * 0.1 * CrouchDampening
				end
				if gmp.DynaviewBobEnabled:GetBool() then
					if BobType == 2 then
						VMAngDesired = AddAngles(VMAngDesired, Angle(-BobCycleY * 0.75, BobCycleX * 1.75, -BobCycleX * 1.5) * gmp.DynaviewBobMultiplierAngVM:GetFloat() * (1 - (IronsightPercent * 0.8)) * (gmp.DynaviewFOVChanged and 0.2 or 1))
					else
						VMAngDesired = AddAngles(VMAngDesired, Angle(BobCycleX * 2, 0, BobCycleY * 5) * gmp.DynaviewBobMultiplierAngVM:GetFloat() * (1 - IronsightPercent * 0.95) * (gmp.DynaviewFOVChanged and 0.05 or 1))
					end
				end
				if gmp.DynaviewSwayEnabled:GetBool() and not gmp.DynaviewFOVChanged then
					VMAngDesired = VMAngDesired - Angle(
						math.sin((gmp.DynaviewSwayTime * 0.22 * gmp.DynaviewSwayTimeMultiplierVM:GetFloat()) % (math.pi * 2)) * 0.8,
						math.sin((gmp.DynaviewSwayTime * 0.17 * gmp.DynaviewSwayTimeMultiplierVM:GetFloat()) % (math.pi * 2)) * 2,
						math.sin((gmp.DynaviewSwayTime * 0.31 * gmp.DynaviewSwayTimeMultiplierVM:GetFloat()) % (math.pi * 2)) * 1.25
					) * SwayMultiplier * gmp.DynaviewSwayMultiplierVM:GetFloat() * (1 - IronsightPercent)
				end
				if WeaponData.Ironsights then
					if gmp.DynaviewIronsightActive then
						VMAngDesired = AddAngles(VMAngDesired, (WeaponData.Ironsights.Ang * IronsightPercent) + (Angle(math.min(WeaponData.Ironsights.Pos.y, 2.5) * 0.5, math.min(WeaponData.Ironsights.Pos.x, 4) * 0.3, math.min(WeaponData.Ironsights.Pos.z, 2) * 2.5) * math.sin(IronsightPercent * math.pi)))
					else
						VMAngDesired = AddAngles(VMAngDesired, (WeaponData.Ironsights.Ang * IronsightPercent) + (Angle(math.min(WeaponData.Ironsights.Pos.y, 2.5) * 0.3, math.min(WeaponData.Ironsights.Pos.x, 4) * 0.1, math.min(WeaponData.Ironsights.Pos.z, 2) * 0.5) * -math.sin(IronsightPercent * math.pi)))
					end
				end
				local VMAngCurrent = gmp.DynaviewSmoothVMAngCurrent or VMAngDesired
				if VMAngCurrent ~= VMAngDesired then
					if gmp.DynaviewSmoothVMEnabled:GetBool() and not gmp.DynaviewFOVChanged then
						if VMAngDesired.p > 260 and VMAngCurrent.p < 260 then
							VMAngCurrent.p = VMAngCurrent.p + 360
						elseif VMAngDesired.p < 260 and VMAngCurrent.p > 260 then
							VMAngCurrent.p = VMAngCurrent.p - 360
						end
						if VMAngDesired.y > 90 and VMAngCurrent.y < -90 and VMAngCurrent.y + 360 - VMAngDesired.y < 90 then
							VMAngCurrent.y = VMAngCurrent.y + 360
						elseif VMAngDesired.y < -90 and VMAngCurrent.y > 90 and VMAngDesired.y + 360 - VMAngCurrent.y < 90 then
							VMAngCurrent.y = VMAngCurrent.y - 360
						end
						VMAngCurrent = VMAngCurrent + ((VMAngDesired - VMAngCurrent) * ((IronsightPercent * 0.95) + (gmp.DynaviewSmoothVMAngStrength:GetFloat() * (1 - IronsightPercent))))
					else
						VMAngCurrent = VMAngDesired
					end
				end
				gmp.DynaviewSmoothVMAngCurrent = VMAngCurrent

				local VMAngAddDesired = Angle()
				local RunAng = nil
				if WeaponData.Run and (not gmp.DynaviewRunDisableIncompatible:GetBool() or (gmp.DynaviewRunDisableIncompatible:GetBool() and WeaponData ~= gmp.DynaviewWeaponDataDefault)) then
					RunAng = AddAngles(AngDesired, WeaponData.Run.Ang) -- BUG: Strange local roll/global yaw 360 when run ang pitch is > ~90 and points behind the player when they look up
					if AngDesired.p > 260 and RunAng.p < 260 then
						RunAng.p = RunAng.p + 360
					elseif AngDesired.p < 260 and RunAng.p > 260 then
						RunAng.p = RunAng.p - 360
					end
					if AngDesired.y > 90 and RunAng.y < -90 and RunAng.y + 360 - AngDesired.y < 90 then
						RunAng.y = RunAng.y + 360
					elseif AngDesired.y < -90 and RunAng.y > 90 and AngDesired.y + 360 - RunAng.y < 90 then
						RunAng.y = RunAng.y - 360
					end
					RunAng = RunAng - AngDesired
				end
				if gmp.DynaviewRunEnabled:GetBool() and RunAng and ActivityIdle and gmp.DynaviewRunMultiplier > 0 then
					VMAngAddDesired = VMAngAddDesired + (RunAng * gmp.DynaviewRunMultiplier)
				elseif CloseHit and gmp.DynaviewCloseType:GetInt() == 1 and RunAng and ActivityIdle then
					VMAngAddDesired = VMAngAddDesired + RunAng * math.Clamp(gmp.DynaviewCloseType2Multiplier:GetFloat(), 0, 1) * (1 - CloseFraction)
				end
				local VMAngAddCurrent = gmp.DynaviewSmoothVMAngAddCurrent or VMAngAddDesired
				if VMAngAddCurrent ~= VMAngAddDesired then
					if gmp.DynaviewSmoothVMEnabled:GetBool() then
						if VMAngAddDesired.p > 260 and VMAngAddCurrent.p < 260 then
							VMAngAddCurrent.p = VMAngAddCurrent.p + 360
						elseif VMAngAddDesired.p < 260 and VMAngAddCurrent.p > 260 then
							VMAngAddCurrent.p = VMAngAddCurrent.p - 360
						end
						if VMAngAddDesired.y > 90 and VMAngAddCurrent.y < -90 and VMAngAddCurrent.y + 360 - VMAngAddDesired.y < 90 then
							VMAngAddCurrent.y = VMAngAddCurrent.y + 360
						elseif VMAngAddDesired.y < -90 and VMAngAddCurrent.y > 90 and VMAngAddDesired.y + 360 - VMAngAddCurrent.y < 90 then
							VMAngAddCurrent.y = VMAngAddCurrent.y - 360
						end
						VMAngAddCurrent = VMAngAddCurrent + ((VMAngAddDesired - VMAngAddCurrent) * gmp.DynaviewSmoothVMAngAddStrength:GetFloat())
					else
						VMAngAddCurrent = VMAngAddDesired
					end
				end
				gmp.DynaviewSmoothVMAngAddCurrent = VMAngAddCurrent
				local VMAngOffset = gmp.DynaviewData.vm_angles - angles
				if Weapon.ViewModelFlip then
					local VMAngCurrentFlip = VMAngCurrent - gmp.DynaviewData.angles
					VMAngCurrentFlip.y = -VMAngCurrentFlip.y
					VMAngCurrentFlip.r = -VMAngCurrentFlip.r
					gmp.DynaviewData.vm_angles = gmp.DynaviewData.angles + VMAngCurrentFlip + VMAngOffset
				else
					gmp.DynaviewData.vm_angles = VMAngCurrent + VMAngAddCurrent + VMAngOffset
				end
			end
		elseif not gmp.DynaviewCompat then
			gmp.DynaviewData.origin =		nil
			gmp.DynaviewData.angles =		nil
			gmp.DynaviewData.fov =			nil
			gmp.DynaviewData.znear =		nil
			gmp.DynaviewData.zfar =			nil
			gmp.DynaviewData.vm_origin =	nil
			gmp.DynaviewData.vm_angles =	nil
			gmp.DynaviewData.drawviewer =	nil
		end
		if HitGround then
			gmp.DynaviewJumpTimer = nil
		end
		gmp.DynaviewLastWeapon = Weapon
	end
	return gmp.DynaviewData
end)

hook.Add("CalcViewModelView", "gmp_cl_dynaview_RemoveBob", function(Weapon, ViewModel, OldPos, OldAng, Pos, Ang) -- TODO: add override
	-- NOTE: despite the fact that CalcViewModelView is called BEFORE CalcView, the values used here offset the ones given by CalcView.
	-- NOTE: apparently CalcView no longer accepts vm_origin and vm_angles, great
	if IsValid(Weapon) then
		local vm_origin = Pos
		local vm_angles = Ang
		if gmp.Enabled:GetBool() and gmp.DynaviewEnabled:GetBool() and gmp.DynaviewBobEnabled:GetBool() and gmp.DynaviewBobOverrideOld:GetBool() then
			vm_origin = OldPos
			vm_angles = OldAng
			Pos = OldPos
			Ang = OldAng
		end
		if Weapon.GetViewModelPosition then
			local _vm_origin, _vm_angles = Weapon:GetViewModelPosition(Pos, Ang)
			if _vm_origin then
				vm_origin = _vm_origin
			end
			if _vm_angles then
				vm_angles = _vm_angles
			end
		end
		if Weapon.CalcViewModelView then
			local _vm_origin, _vm_angles = Weapon:CalcViewModelView(ViewModel, OldPos, OldAng, Pos, Ang)
			if _vm_origin then
				vm_origin = _vm_origin
			end
			if _vm_angles then
				vm_angles = _vm_angles
			end
		end
		-- NOTE: hotfix for new stuff aufsdgfdsfgh
		if gmp.DynaviewData.vm_origin then
			vm_origin = vm_origin + (gmp.DynaviewData.vm_origin - OldPos)
		end
		if gmp.DynaviewData.vm_angles then
			vm_angles = vm_angles + (gmp.DynaviewData.vm_angles - OldAng)
		end
		return vm_origin, vm_angles
	end
end)