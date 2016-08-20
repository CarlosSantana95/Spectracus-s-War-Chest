if SERVER then return end

gmp.WindEnabled = CreateClientConVar("gmp_wind_enabled", "1", true, false)
gmp.WindVolume = CreateClientConVar("gmp_wind_volume_multiplier", "1", true, false)

gmp.ClientLoadCheckWrapper(function()
	local Wind = CreateSound(LocalPlayer(), Sound("ambient/levels/canals/windmill_wind_loop1.wav"))
	Wind:PlayEx(0, 0)
	local WindHit1 = CreateSound(LocalPlayer(), Sound("ambient/wind/wind_hit1.wav"))
	local WindHit2 = CreateSound(LocalPlayer(), Sound("ambient/wind/wind_hit2.wav"))
	local WindHit3 = CreateSound(LocalPlayer(), Sound("ambient/wind/wind_hit3.wav"))
	hook.Add("Tick", "gmp_cl_wind_Tick", function()
		local PlyLocal = LocalPlayer()
		if gmp.Enabled:GetBool() and gmp.WindEnabled:GetBool() and IsValid(PlyLocal) then
			local Speed = (PlyLocal.Ragdoll and PlyLocal.Ragdoll or PlyLocal):GetVelocity():Length()
			Wind:ChangeVolume(1 - math.cos(math.Clamp(Speed / 2000, 0, math.pi / 2)), 0.1)
			Wind:ChangePitch(math.Clamp(60 + (Speed / 20), 0, 255) * gmp.WindVolume:GetFloat(), 1)
			local Chance = 1 / (Speed / 40000)
			if Chance < 100 then
				if math.random(0, Chance) == 0 then
					local Sound = math.random(1, 3)
					if Sound == 1 then
						Sound = WindHit1
					elseif Sound == 2 then
						Sound = WindHit2
					elseif Sound == 3 then
						Sound = WindHit3
					end
					Sound:ChangeVolume(math.Clamp(1 - math.cos(math.Clamp(Speed / 1250, 0, math.pi / 2)), 0, 1), 0.25)
					Sound:ChangePitch(math.Clamp(150 + (Speed / 25), 0, 255) * gmp.WindVolume:GetFloat(), 0.25)
					timer.Simple(0.25, function()
						Sound:ChangePitch(100, math.Rand(0.5, 2.3))
						Sound:ChangeVolume(0, math.Rand(1, 2.3))
					end)
				end
			end
		else
			Wind:ChangeVolume(0, 0)
			Wind:ChangePitch(0, 0)
		end
	end)
end)