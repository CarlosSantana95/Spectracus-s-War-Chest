if SERVER then

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