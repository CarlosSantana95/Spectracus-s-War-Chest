if CLIENT then return end

resource.AddFile("materials/hud/killicons/headshot.vmt")
resource.AddFile("sound/gmplus/headshot.wav")

local function GetDamageHitGroup(Ent, HitGroup)
	if gmp.Enabled:GetBool() and IsValid(Ent) then
		Ent.gmp_LastHitGroup = HitGroup
	end
end
hook.Add("ScalePlayerDamage", "gmp_sv_headshot_GetPlayerDamageHitgroup", GetDamageHitGroup)
hook.Add("ScaleNPCDamage", "gmp_sv_headshot_GetNPCDamageHitgroup", GetDamageHitGroup)

local function CheckHeadshot(Ent)
	if gmp.Enabled:GetBool() and IsValid(Ent) then
		umsg.Start("gmp_headshot_Index")
		umsg.Bool(Ent.gmp_LastHitGroup == HITGROUP_HEAD)
		umsg.End()
	end
end
hook.Add("PlayerDeath", "gmp_sv_headshot_CheckPlayerHeadshot", CheckHeadshot)
hook.Add("OnNPCKilled", "gmp_sv_headshot_CheckNPCHeadshot", CheckHeadshot)