if SERVER then return end

include("autorun/sh_gmplus.lua")

gmp.Ready = false

gmp.HintsEnabled = CreateClientConVar("gmp_hints_enabled", "1", true, true)
gmp.HintsTime = CreateClientConVar("gmp_hints_time", "3", false, false)

gmp.ClientLoadCheckWrapper = function(Code)
	if type(Code) ~= "function" then return end
	local Incursion = 0
	local function Check()
		if not IsValid(LocalPlayer()) or not GAMEMODE then
			Incursion = Incursion + 1
			timer.Simple(0.1, Check)
		else
			Code()
		end
	end
	Check()
end

include("gmplus/client/cl_gmplus_dsp.lua")
include("gmplus/client/cl_gmplus_dynaview.lua")
include("gmplus/client/cl_gmplus_firstperson.lua")
include("gmplus/client/cl_gmplus_headshot.lua")
include("gmplus/client/cl_gmplus_heartbeat.lua")
include("gmplus/client/cl_gmplus_holster.lua")
include("gmplus/client/cl_gmplus_hud.lua")
include("gmplus/client/cl_gmplus_pp.lua")
include("gmplus/client/cl_gmplus_wind.lua")

local function Hint(Text, Time, Delay)
	if gmp.HintsEnabled:GetBool() then
		local function ShowHint()
			if GAMEMODE.IsSandboxDerived and GAMEMODE.AddNotify then --why would you not have AddNotify if you're sandbox derived wtf
				GAMEMODE:AddNotify("[GM+] " ..Text, NOTIFY_GENERIC, Time or rm.HintsTime:GetFloat())
				surface.PlaySound("ambient/water/drip" ..math.random(1, 4).. ".wav")
			else
				chat.AddText("[GM+] " ..Text)
			end
		end
		if Delay then
			timer.Simple(Delay, ShowHint)
		else
			ShowHint()
		end
	end
end

gmp.ClientLoadCheckWrapper(function()
	local function OnSpawn(Ply)
		if Ply and Ply == LocalPlayer() then
			if not gmp.Ready then
				Hint((game.SinglePlayer() and "You're running" or "This server is running").. " GM+ v" ..gmp.Version.. "!", 20)
				--Hint("Type !gmp_help for more information.", 20, 2.5) --whoops
				gmp.Ready = true
			end

			gmp.DynaviewJumpTimer = nil

			gmp.DynaviewLastWeapon = nil
			gmp.DynaviewVMDynamicsMuzzleAngPos = nil

			gmp.DynaviewSmoothPosCurrent = Pos
			gmp.DynaviewSmoothAngCurrent = Ang
			gmp.DynaviewSmoothPosAddCurrent = nil
			gmp.DynaviewSmoothAngAddCurrent = nil

			gmp.DynaviewVMDynamicsSmoothAngCurrent = nil

			gmp.DynaviewSmoothVMPosCurrent = nil
			gmp.DynaviewSmoothVMAngCurrent = nil
			gmp.DynaviewSmoothVMPosAddCurrent = nil
			gmp.DynaviewSmoothVMAngAddCurrent = nil

			gmp.DynaviewIronsightEnabled = false
			gmp.DynaviewIronsightPercent = 0

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
		end
	end
	OnSpawn(LocalPlayer())
	hook.Add("PlayerSpawn", "gmp_cl_PlayerSpawn", OnSpawn)
end)

--[[
rewritten hook module yaaaay
garry your code is ugly
]]
gmp.hook_GetTable = gmp.hook_GetTable or hook.GetTable
gmp.hook_Add = gmp.hook_Add or hook.Add
gmp.hook_Remove = gmp.hook_Remove or hook.Remove
local CompatHookNames =
{
	CalcView = "gmp_cl_dynaview_CalcView",
	--AdjustMouseSensitivity = "gmp_cl_dynaview_IronsightSensitivity",
	--CalcViewModelView = "gmp_cl_dynaview_RemoveBob",
	--GetMotionBlurValues = "gmp_cl_pp_MotionBlur"
}
gmp.CompatHooks = gmp.CompatHooks or {}
function hook.GetTable()
	local HookTable = {}
	for HookType, Hooks in pairs(gmp.hook_GetTable()) do
		if CompatHookNames[HookType] then
			HookTable[HookType] = gmp.CompatHooks[HookType]
		else
			HookTable[HookType] = Hooks
		end
	end
	return HookTable
end
function hook.Add(event_name, name, func, ...)
	if type(func) == "function" and type(event_name) == "string" and CompatHookNames[event_name] and name ~= CompatHookNames[event_name] then
		if not gmp.CompatHooks[event_name] then
			gmp.CompatHooks[event_name] = {}
		end
		gmp.CompatHooks[event_name][name] = func
	else
		gmp.hook_Add(event_name, name, func, ...)
	end
end
function hook.Remove(event_name, name, ...)
	if type(event_name) == "string" and CompatHookNames[event_name] and gmp.CompatHooks[event_name] then
		gmp.CompatHooks[event_name][name] = nil
	else
		gmp.hook_Remove(event_name, name, ...)
	end
end

local function FlushHooks()
	for HookType, Hooks in pairs(gmp.hook_GetTable()) do
		if CompatHookNames[HookType] then
			for HookName, HookAction in pairs(Hooks) do
				if HookName ~= CompatHookNames[HookType] then
					if not gmp.CompatHooks[HookType] then
						gmp.CompatHooks[HookType] = {}
					end
					gmp.CompatHooks[HookType][HookName] = HookAction
					gmp.hook_Remove(HookType, HookName)
					Msg("[GM+] Removed client hook " ..HookName.. " for compatibility.\n")
				end
			end
		end
	end
end
FlushHooks()
hook.Add("Tick", "gmp_cl_HookCompat", function()
	FlushHooks()
end)
--]]

Msg("GM+ v" ..gmp.Version.. " loaded!\n")