if SERVER then return end

gmp.DSPEnabled = CreateClientConVar("gmp_dsp_enabled", "1", true, false)
gmp.DSPRagModOnly = CreateClientConVar("gmp_dsp_ragmodonly", "0", true, false)
gmp.DSPLowHealth = CreateClientConVar("gmp_dsp_lowhealth", "1", true, false)
gmp.DSPDeath = CreateClientConVar("gmp_dsp_death", "0", true, false)

gmp.DSPOld = 0
gmp.DSPCurrent = -1

hook.Add("Tick", "gmp_cl_dsp_Tick", function()
	local PlyLocal = LocalPlayer()
	if IsValid(PlyLocal) then
		local Ragdoll = PlyLocal:GetNetworkedEntity("rm_Ragdoll")
		Ragdoll = IsValid(Ragdoll) and Ragdoll
		if gmp.Enabled:GetBool() and gmp.DSPEnabled:GetBool() and GetViewEntity() == PlyLocal and (not gmp.DSPRagModOnly:GetBool() or (gmp.DSPRagModOnly:GetBool() and Ragdoll)) then
			local DSPNew = tonumber(GetConVarNumber("dsp_current"))
			if DSPNew and gmp.DSPCurrent == -1 and gmp.DSPOld ~= DSPNew and DSPNew ~= nil then
				gmp.DSPOld = DSPNew
			end
			if PlyLocal:Health() <= 0 and gmp.DSPDeath:GetBool() then
				if gmp.DSPCurrent ~= 38 then
					gmp.DSPCurrent = 38
					PlyLocal:SetDSP(38)
				end
			elseif PlyLocal:Health() <= 10 and gmp.DSPLowHealth:GetBool() then
				if gmp.DSPCurrent ~= 31 then
					gmp.DSPCurrent = 31
					PlyLocal:SetDSP(31)
				end
			elseif PlyLocal:Health() <= 25 and gmp.DSPLowHealth:GetBool() then
				if gmp.DSPCurrent ~= 30 then
					gmp.DSPCurrent = 30
					PlyLocal:SetDSP(30)
				end
			elseif gmp.DSPCurrent ~= -1 and gmp.DSPOld then
				gmp.DSPCurrent = -1
				PlyLocal:SetDSP(gmp.DSPOld)
			end
		end
	end
end)