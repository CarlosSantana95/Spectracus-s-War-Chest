if SERVER then return end

gmp.PPEnabled = CreateClientConVar("gmp_pp_enabled", "1", true, false)
gmp.PPDeathOnly = CreateClientConVar("gmp_pp_deathonly", "0", true, false)
gmp.PPRagModOnly = CreateClientConVar("gmp_pp_ragmodonly", "0", true, false)
gmp.PPAddR = CreateClientConVar("gmp_pp_addr", "0", true, false)
gmp.PPAddG = CreateClientConVar("gmp_pp_addg", "0", true, false)
gmp.PPAddB = CreateClientConVar("gmp_pp_addb", "0", true, false)
gmp.PPBrightness = CreateClientConVar("gmp_pp_brightness", "0.9", true, false)
gmp.PPContrast = CreateClientConVar("gmp_pp_contrast", "1.3", true, false)
gmp.PPColor = CreateClientConVar("gmp_pp_color", "0.4", true, false)
gmp.PPMulR = CreateClientConVar("gmp_pp_mulr", "1", true, false)
gmp.PPMulG = CreateClientConVar("gmp_pp_mulg", "1", true, false)
gmp.PPMulB = CreateClientConVar("gmp_pp_mulb", "1", true, false)
gmp.PPBlurAlpha = CreateClientConVar("gmp_pp_bluralpha", "0.7", true, false)

gmp.PPMotionBlurEnabled = CreateClientConVar("gmp_pp_motionblur_enabled", "1", true, false)
gmp.PPMotionBlurRagModOnly = CreateClientConVar("gmp_pp_motionblur_ragmodonly", "0", true, false)
gmp.PPMotionBlurMultiplier = CreateClientConVar("gmp_pp_motionblur_multiplier", "1", true, false)

gmp.PPTable =
{
	["$pp_colour_addr"] = nil,
	["$pp_colour_addg"] = nil,
	["$pp_colour_addb"] = nil,
	["$pp_colour_brightness"] = nil,
	["$pp_colour_contrast"] = nil,
	["$pp_colour_colour"] = nil,
	["$pp_colour_mulr"] = nil,
	["$pp_colour_mulg"] = nil,
	["$pp_colour_mulb"] = nil
}

hook.Add("RenderScreenspaceEffects", "gmp_cl_pp_Effects", function()
	local PlyLocal = LocalPlayer()
	if IsValid(PlyLocal) then
		local Ragdoll = PlyLocal:GetNetworkedEntity("rm_Ragdoll")
		Ragdoll = IsValid(Ragdoll) and Ragdoll
		if gmp.Enabled:GetBool() and gmp.PPEnabled:GetBool() and GetViewEntity() == PlyLocal and (not gmp.PPRagModOnly:GetBool() or (gmp.PPRagModOnly:GetBool() and Ragdoll)) then
			local Multiplier = nil
			if gmp.PPDeathOnly:GetBool() or not PlyLocal:Alive() then
				Multiplier = PlyLocal:Alive() and 0 or 1
			else
				Multiplier = math.cos(math.cos(math.Clamp(1 - (PlyLocal:Health() / 100), 0, 1) * (math.pi / 2)) * (math.pi / 2))
			end
			if Multiplier > 0.001 then
				gmp.PPTable["$pp_colour_addr"] = gmp.PPAddR:GetFloat() * Multiplier
				gmp.PPTable["$pp_colour_addg"] = gmp.PPAddG:GetFloat() * Multiplier
				gmp.PPTable["$pp_colour_addb"] = gmp.PPAddB:GetFloat() * Multiplier
				gmp.PPTable["$pp_colour_brightness"] = (gmp.PPBrightness:GetFloat() - 1) * Multiplier
				gmp.PPTable["$pp_colour_contrast"] = (1 - Multiplier) + (gmp.PPContrast:GetFloat() * Multiplier)
				gmp.PPTable["$pp_colour_colour"] = (1 - Multiplier) + (gmp.PPColor:GetFloat() * Multiplier)
				gmp.PPTable["$pp_colour_mulr"] = (gmp.PPMulR:GetFloat() - 1) * Multiplier
				gmp.PPTable["$pp_colour_mulg"] = (gmp.PPMulG:GetFloat() - 1) * Multiplier
				gmp.PPTable["$pp_colour_mulb"] = (gmp.PPMulB:GetFloat() - 1) * Multiplier
				DrawColorModify(gmp.PPTable)
				if gmp.PPBlurAlpha:GetFloat() < 1 then
					DrawMotionBlur((1 - Multiplier) + (gmp.PPBlurAlpha:GetFloat() * Multiplier), 0.99, 0)
				end
			end
		end
	end
end)
hook.Add("GetMotionBlurValues", "gmp_cl_pp_MotionBlur", function(x, y, Forward, Spin, ...)
	local PlyLocal = LocalPlayer()
	if IsValid(PlyLocal) then
		local Ragdoll = PlyLocal:GetNetworkedEntity("rm_Ragdoll")
		Ragdoll = IsValid(Ragdoll) and Ragdoll
		if gmp.Enabled:GetBool() and GetViewEntity() == PlyLocal and gmp.PPEnabled:GetBool() and gmp.PPMotionBlurEnabled:GetBool() and ((gmp.PPMotionBlurRagModOnly:GetBool() and Ragdoll) or not Ragdoll) then
			local Velocity = (Ragdoll or PlyLocal):GetVelocity():Angle()
			local Angles = (Ragdoll or PlyLocal):GetAngles()
			local Speed = math.min((Ragdoll or PlyLocal):GetVelocity():Length() / 80000, 1)
			local x2 = math.sin(math.AngleDifference(Velocity.y, Angles.y) / 360) * 4
			local y2 = math.sin(math.AngleDifference(Velocity.p, Angles.p) / 360) * 4
			if x2 > 1 then
				x2 = 1 - (x2 - 1)
			elseif x2 < -1 then
				x2 = -1 - (x2 + 1)
			end
			if y2 > 1 then
				y2 = 1 - (y2 - 1)
			elseif y2 < -1 then
				y2 = -1 - (y2 + 1)
			end
			local Multiplier = gmp.PPMotionBlurMultiplier:GetFloat()
			x = x + x2 * Speed * Multiplier
			y = y + y2 * Speed * Multiplier
			Forward = Forward + Speed * Multiplier
			return x, y, Forward, Spin
		end
	end
end)