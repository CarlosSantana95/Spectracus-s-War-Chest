if SERVER then return end

gmp.HeartbeatEnabled = CreateClientConVar("gmp_heartbeat_enabled", "1", true, true)
gmp.HeartbeatVolumeMultiplier = CreateClientConVar("gmp_heartbeat_volume_multiplier", "1", true, true)

gmp.ClientLoadCheckWrapper(function()
	local Heartbeat = CreateSound(LocalPlayer(), file.Exists("sound/gmplus/heartbeat.wav", "GAME") and Sound("gmplus/heartbeat.wav") or Sound("player/heartbeat1.wav"))
	Heartbeat:PlayEx(0, 0)
	hook.Add("Tick", "gmp_cl_heartbeat_Tick", function()
		local PlyLocal = LocalPlayer()
		if gmp.Enabled:GetBool() and gmp.HeartbeatEnabled:GetBool() and IsValid(PlyLocal) and GetViewEntity() == PlyLocal then
			local Multiplier = math.Clamp(math.cos(math.cos(math.Clamp(1 - (PlyLocal:Health() / 100), 0, 1) * (math.pi / 2)) * (math.pi / 2)), 0, 1)
			if PlyLocal:Alive() then
				Heartbeat:ChangeVolume(Multiplier * gmp.HeartbeatVolumeMultiplier:GetFloat(), 0)
				Heartbeat:ChangePitch(((1 - Multiplier) * 80) + (Multiplier * 150) + math.Rand(-5, 5), 0)
			else
				Heartbeat:ChangeVolume(gmp.HeartbeatVolumeMultiplier:GetFloat(), 0)
				Heartbeat:ChangePitch(math.Rand(0.8, 1.5), 0)
			end
		else
			Heartbeat:ChangeVolume(0, 0)
			Heartbeat:ChangePitch(0, 0)
		end
	end)
end)