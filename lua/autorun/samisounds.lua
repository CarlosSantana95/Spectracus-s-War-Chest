if SERVER then
function GetSamiPainYea( target,attacker,remain, dmg )
	if !target:IsPlayer() then return end
	if remain-dmg > 0 then
		if tostring(target:GetModel())=="models/player/us_00004.mdl" or tostring(target:GetModel())=="models/player/mw3rangers/us_ranger_02.mdl" or tostring(target:GetModel())=="models/steinman/bf4/us_04.mdl" then
			if target.NextScream==nil or CurTime()>=target.NextScream then
				if remain>50 and remain-dmg<=50 then
					target:EmitSound("miscsounds/hitsounds/ohsnap"..math.random(1,11)..".wav")	
				else
					target:EmitSound("miscsounds/hitsounds/hit"..math.random(1,4)..".wav")					
				end
				target.NextScream = CurTime()+0.5
                target.LastHealthCheck = remain-dmg
			end
		end
	end
    return dmginfo
end
hook.Add("PlayerHurt", "GetSamiPainYea", GetSamiPainYea)

function GetSamiDeathYea( victim, weapon, killer )
	if tostring(victim:GetModel())=="models/player/mw3rangers/us_ranger_01.mdl" or (victim:GetModel())=="models/player/us_00004.mdl" or tostring(victim:GetModel())=="models/player/mw3rangers/us_ranger_02.mdl" or tostring(victim:GetModel())=="models/steinman/bf4/us_04.mdl" then
		sound.Play( "miscsounds/death_screams/death"..math.random(1,8)..".wav", victim:GetPos(), 100, 100 )
	end
end
hook.Add( "PlayerDeath", "playerSamiDeathTest", GetSamiDeathYea )

function GetSamiHappyYea( victim, killer, weapon )
	if killer:IsValid() then
		if killer:GetModel()==nil then return end
		if tostring(killer:GetModel())=="models/player/mw3rangers/us_ranger_01.mdl" or (killer:GetModel())=="models/player/us_00004.mdl" or tostring(killer:GetModel())=="models/player/mw3rangers/us_ranger_02.mdl" or tostring(killer:GetModel())=="models/steinman/bf4/us_04.mdl" then
            if killer:IsPlayer() and killer.NextKill!=nil and CurTime()>killer.NextKill then
                local num = math.random(1,19)
                if SoundDuration("miscsounds/enemydown/enemydown"..num..".wav")!=nil then
                    killer:EmitSound( "miscsounds/enemydown/enemydown"..num..".wav")
                    killer.NextKill = CurTime()+ SoundDuration("miscsounds/enemydown/enemydown"..num..".wav") + 5
                else
                    killer.NextKill = CurTime()+ 5
                end
            else
                killer.NextKill = CurTime()+ 5
            end
		end
	end
end
hook.Add( "OnNPCKilled", "playerSamiHappyTest", GetSamiHappyYea )

function GetSamiReloadYea(v,cmd)
	if v:IsPlayer() then
		--if v:GetModel()==nil then return end
		if tostring(v:GetModel())=="models/player/mw3rangers/us_ranger_01.mdl" or (v:GetModel())=="models/player/mw3rangers/us_ranger_02.mdl" or tostring(v:GetModel())=="models/player/us_00004.mdl" or tostring(v:GetModel())=="models/steinman/bf4/us_04.mdl" then
			local gun = v:GetActiveWeapon()
			if gun.Primary==nil then return end
			if v:KeyPressed(IN_RELOAD) and !v:KeyDown(IN_USE) and gun:Ammo1()>0 and v.Reloading==nil and gun:Clip1()<gun.Primary.ClipSize then
				local num = math.random(1,14)
				v:EmitSound( "miscsounds/reload/reload"..num..".wav")
				v.Reloading = true
			end
			if gun:Clip1()==gun.Primary.ClipSize and v.Reloading then
				v.Reloading = nil
			end
		end
	end
end
hook.Add("PlayerTick","GetSamiReloadYea", GetSamiReloadYea)

function GetSamiBrainYea(p,mv)
	if p:IsPlayer() then
		--if v:GetModel()==nil then return end
		if tostring(p:GetModel())=="models/player/mw3rangers/us_ranger_01.mdl" or (p:GetModel())=="models/player/mw3rangers/us_ranger_02.mdl" or tostring(p:GetModel())=="models/player/us_00004.mdl" or tostring(p:GetModel())=="models/steinman/bf4/us_04.mdl" then
            for k,v in pairs(ents.FindByClass( "npc_grenade_frag" )) do
                if v:GetPos():Distance(p:GetPos())<200 then
                    local tracedata = {}
                    tracedata.start =  v:GetPos()
                    tracedata.endpos = p:EyePos()
                    tracedata.filter = p
                    local trace = util.TraceLine(tracedata)
                    if !trace.HitWorld then
                        if v.ACK == nil and (p.NextNade==nil or CurTime()>=p.NextNade) then
                            v.ACK ="acksed"
                            local num = math.random(1,20)
                            if SoundDuration("miscsounds/warnings/grenadewarn"..num..".wav")!=nil then
                                p:EmitSound( "miscsounds/warnings/grenadewarn"..num..".wav")
                                p.NextNade = CurTime()+ SoundDuration("bf3/grenadewarn"..num..".wav") + 5
                            end
                        end
                    end
                end
            end
		end
	end
end
hook.Add("PlayerTick","GetSamiBrainYea", GetSamiBrainYea)
end