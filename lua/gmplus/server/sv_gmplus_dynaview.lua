if CLIENT then return end

resource.AddFile("sound/gmplus/ironsight_in1.wav")
resource.AddFile("sound/gmplus/ironsight_in2.wav")
resource.AddFile("sound/gmplus/ironsight_out1.wav")
resource.AddFile("sound/gmplus/ironsight_out2.wav")
resource.AddFile("sound/gmplus/land1.wav")
resource.AddFile("sound/gmplus/land2.wav")
resource.AddFile("sound/gmplus/land3.wav")
resource.AddFile("sound/gmplus/land4.wav")
resource.AddFile("sound/gmplus/land5.wav")
resource.AddFile("sound/gmplus/land6.wav")
resource.AddFile("sound/gmplus/land7.wav")
resource.AddFile("sound/gmplus/land8.wav")
resource.AddFile("sound/gmplus/weapon_equip1.wav")
resource.AddFile("sound/gmplus/weapon_equip2.wav")
resource.AddFile("sound/gmplus/weapon_equip3.wav")
resource.AddFile("sound/gmplus/weapon_equip4.wav")

local PlayerMetaTable = FindMetaTable("Player")
if PlayerMetaTable then
	gmp.DynaviewOldViewPunch = gmp.DynaviewOldViewPunch or PlayerMetaTable.ViewPunch
	function PlayerMetaTable:ViewPunch(PunchAng, PunchDuration)
		umsg.Start("gmp_dynaview_ServerPunch", self)
		umsg.Angle(PunchAng)
		if PunchDuration then
			umsg.Float(PunchDuration)
		end
		umsg.End()
		gmp.DynaviewOldViewPunch(self, PunchAng, PunchDuration)
	end
end

hook.Add("EntityTakeDamage", "gmp_sv_dynaview_DamagePunch", function(Ent, Info)
	if gmp.Enabled:GetBool() and IsValid(Ent) and Ent:IsPlayer() then
		umsg.Start("gmp_dynaview_DamagePunch", Ent)
		umsg.Entity(Info:GetAttacker())
		umsg.Entity(Info:GetInflictor())
		umsg.Short(Info:GetDamageType())
		umsg.Float(Info:GetDamage())
		umsg.Vector(Info:GetDamagePosition())
		umsg.Vector(Info:GetDamageForce())
		umsg.End()
	end
end)

