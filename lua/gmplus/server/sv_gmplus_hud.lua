if CLIENT then return end

resource.AddFile("sound/gmplus/hit.wav")
resource.AddFile("materials/vgui/gmplus/vignette_bottomleft.vmt")
resource.AddFile("materials/vgui/gmplus/vignette_bottomright.vmt")
resource.AddFile("materials/vgui/gmplus/vignette_topleft.vmt")
resource.AddFile("materials/vgui/gmplus/vignette_topright.vmt")

concommand.Add("gmp_hud_crosshair_sendclientdata", function(Ply, Command, Args)
	if Args[1] == "1" or not gmp.Enabled:GetBool() then
		Ply:CrosshairEnable()
	elseif Args[1] == "0" then
		Ply:CrosshairDisable()
	end
end)

hook.Add("EntityTakeDamage", "gmp_sv_hud_CrosshairHit", function(Ent, Info)
	if gmp.Enabled:GetBool() and IsValid(Ent) then
		local Attacker = Info:GetAttacker()
		if IsValid(Attacker) and Attacker:IsPlayer() and Attacker ~= Ent and not Info:IsFallDamage() and (Ent:IsPlayer() or Ent:IsNPC() or (Ent.Health and Ent:Health() > 0) or Ent.rm_IsRagdoll) then
			umsg.Start("gmp_hud_CrosshairHit", Attacker)
			umsg.Float(Info:GetDamage())
			umsg.End()
		end
	end
end)

hook.Add("Tick", "gmp_sv_hud_HideCrosshair", function()
	for _, Ply in pairs(player.GetAll()) do
		Ply:SetNetworkedInt("m_flStepSoundTime", Ply:GetSaveTable().m_flStepSoundTime)
	end
end)