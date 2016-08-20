if SERVER then return end

gmp.HudEnabled = CreateClientConVar("gmp_hud_enabled", "1", true, true)

gmp.HudVignetteEnabled = CreateClientConVar("gmp_hud_vignette_enabled", "1", true, true)
gmp.HudVignetteMultiplier = CreateClientConVar("gmp_hud_vignette_multiplier", "1", true, true)
gmp.HudVignetteAlpha = CreateClientConVar("gmp_hud_vignette_alpha", "100", true, true)

gmp.HudCrosshairEnabled = CreateClientConVar("gmp_hud_crosshair_enabled", "1", true, true)

gmp.HudCrosshairColorR = CreateClientConVar("gmp_hud_crosshair_color_r", "255", true, true)
gmp.HudCrosshairColorG = CreateClientConVar("gmp_hud_crosshair_color_g", "255", true, true)
gmp.HudCrosshairColorB = CreateClientConVar("gmp_hud_crosshair_color_b", "255", true, true)
gmp.HudCrosshairColorA = CreateClientConVar("gmp_hud_crosshair_color_a", "255", true, true)
gmp.HudCrosshairColorShadowR = CreateClientConVar("gmp_hud_crosshair_color_shadow_r", "0", true, true)
gmp.HudCrosshairColorShadowG = CreateClientConVar("gmp_hud_crosshair_color_shadow_g", "0", true, true)
gmp.HudCrosshairColorShadowB = CreateClientConVar("gmp_hud_crosshair_color_shadow_b", "0", true, true)
gmp.HudCrosshairColorShadowA = CreateClientConVar("gmp_hud_crosshair_color_shadow_a", "50", true, true)

gmp.HudCrosshairCircleEnabled = CreateClientConVar("gmp_hud_crosshair_circle_enabled", "1", true, true)
gmp.HudCrosshairCircleSizeIn = CreateClientConVar("gmp_hud_crosshair_circle_size_in", "7.5", true, true)
gmp.HudCrosshairCircleSizeOut = CreateClientConVar("gmp_hud_crosshair_circle_size_out", "1.25", true, true)
gmp.HudCrosshairCircleSizeShadow = CreateClientConVar("gmp_hud_crosshair_circle_size_shadow", "7", true, true)
gmp.HudCrosshairCircleSizeStrength = CreateClientConVar("gmp_hud_crosshair_circle_size_strength", "0.25", true, true)
gmp.HudCrosshairCircleReloadEnabled = CreateClientConVar("gmp_hud_crosshair_circle_reload_enabled", "1", true, true)
gmp.HudCrosshairCircleReloadSize = CreateClientConVar("gmp_hud_crosshair_circle_reload_size", "4", true, true)
gmp.HudCrosshairCircleReloadStep = CreateClientConVar("gmp_hud_crosshair_circle_reload_step", "10", true, true)
gmp.HudCrosshairCircleMagnitudeEnabled = CreateClientConVar("gmp_hud_crosshair_circle_magnitude_enabled", "1", true, true)
gmp.HudCrosshairCircleMagnitudeStrength = CreateClientConVar("gmp_hud_crosshair_circle_magnitude_strength", "0.3", true, true)

--[[
gmp.HudCrosshairHealthEnabled = CreateClientConVar("gmp_hud_crosshair_health_enabled", "1", true, true)
gmp.HudCrosshairHealthSizeIn = CreateClientConVar("gmp_hud_crosshair_health_size_in", "10", true, true)
gmp.HudCrosshairHealthSizeOut = CreateClientConVar("gmp_hud_crosshair_health_size_out", "4", true, true)
gmp.HudCrosshairHealthSizeShadow = CreateClientConVar("gmp_hud_crosshair_health_size_shadow", "7", true, true)
gmp.HudCrosshairHealthSizeStrength = CreateClientConVar("gmp_hud_crosshair_health_size_strength", "0.15", true, true)
gmp.HudCrosshairHealthMagnitudeEnabled = CreateClientConVar("gmp_hud_crosshair_health_magnitude_enabled", "1", true, true)
gmp.HudCrosshairHealthMagnitudeStrength = CreateClientConVar("gmp_hud_crosshair_health_magnitude_strength", "0.5", true, true)
--]]

gmp.HudCrosshairDotEnabled = CreateClientConVar("gmp_hud_crosshair_dot_enabled", "1", true, true)
gmp.HudCrosshairDotSize = CreateClientConVar("gmp_hud_crosshair_dot_size", "2.5", true, true)
gmp.HudCrosshairDotSizeShadow = CreateClientConVar("gmp_hud_crosshair_dot_size_shadow", "5", true, true)

gmp.HudCrosshairHitEnabled = CreateClientConVar("gmp_hud_crosshair_hit_enabled", "1", true, true)
gmp.HudCrosshairHitSoundEnabled = CreateClientConVar("gmp_hud_crosshair_hit_sound_enabled", "1", true, true)
gmp.HudCrosshairHitSoundPath = CreateClientConVar("gmp_hud_crosshair_hit_sound_path", "gmplus/hit.wav", true, true)
gmp.HudCrosshairHitFadeDelay = CreateClientConVar("gmp_hud_crosshair_hit_fade_delay", "0", true, true)
gmp.HudCrosshairHitFadeMultiplier = CreateClientConVar("gmp_hud_crosshair_hit_fade_multiplier", "1", true, true)
gmp.HudCrosshairHitSize = CreateClientConVar("gmp_hud_crosshair_hit_size", "1", true, true)
gmp.HudCrosshairHitSizeShadow = CreateClientConVar("gmp_hud_crosshair_hit_size_shadow", "5", true, true)
gmp.HudCrosshairHitLengthIn = CreateClientConVar("gmp_hud_crosshair_hit_length_in", "10", true, true)
gmp.HudCrosshairHitLengthOut = CreateClientConVar("gmp_hud_crosshair_hit_length_out", "5", true, true)
gmp.HudCrosshairHitMagnitudeEnabled = CreateClientConVar("gmp_hud_crosshair_hit_magnitude_enabled", "1", true, true)
gmp.HudCrosshairHitMagnitudeStrength = CreateClientConVar("gmp_hud_crosshair_hit_magnitude_multiplier", "0.9", true, true)

gmp.HudCrosshairHidingOld = false
gmp.HudCrosshairFade = 0
gmp.HudCrosshairFadeAlive = false
gmp.HudCrosshairCircleSize = 0
gmp.HudCrosshairReloadStart = nil
gmp.HudCrosshairReloadOldActivityCycle = 0
--gmp.HudCrosshairHealthSize = 0
gmp.HudCrosshairHitTime = 0
gmp.HudCrosshairHitAlpha = 0

function gmp.GetCrosshairFade()
	local CrosshairFade = gmp.HudCrosshairFade
	if CrosshairFade <= 0 then
		return 0
	elseif CrosshairFade >= 1 then
		return 1
	else
		local deg90 = math.pi / 2
		return ((1 - math.cos(CrosshairFade * deg90)) * (1 - CrosshairFade)) + (math.sin(CrosshairFade * deg90) * CrosshairFade)
	end
end

usermessage.Hook("gmp_hud_CrosshairHit", function(Data)
	if gmp.HudCrosshairHitEnabled:GetBool() then
		local Amount = Data:ReadFloat()
		gmp.HudCrosshairHitTime = CurTime() + gmp.HudCrosshairHitFadeDelay:GetFloat() + math.min(Amount / 50, 1)
		gmp.HudCrosshairHitAlpha = 255
		if gmp.HudCrosshairHitSoundEnabled:GetBool() then
			LocalPlayer():EmitSound(Sound(gmp.HudCrosshairHitSoundPath:GetString()), 100, Amount > 50 and math.Rand(50, 60) or math.Rand(90, 110))
		end
	end
end)

hook.Add("HUDPaint", "gmp_cl_hud_Draw", function()
	local PlyLocal = LocalPlayer()
	if IsValid(PlyLocal) then
		if gmp.Enabled:GetBool() and gmp.HudEnabled:GetBool() and PlyLocal:GetViewEntity() == PlyLocal and PlyLocal:GetObserverMode() == OBS_MODE_NONE then
			local IronsightPercent = 0
			if gmp.DynaviewEnabled:GetBool() then
				if gmp.DynaviewFOVChanged then
					IronsightPercent = 1
				else
					IronsightPercent = gmp.DynaviewGetIronsightPercent()
				end
			end
			if gmp.HudVignetteEnabled:GetBool() then
				local Size = 256 * gmp.HudVignetteMultiplier:GetFloat() * (gmp.DynaviewFOVChanged and 1 or (1 + (IronsightPercent * 0.2))) + ((gmp.DynaviewEnabled:GetBool() and gmp.DynaviewPunchEnabled:GetBool() and gmp.DynaviewPunchAngDesired and PlyLocal:Alive()) and ((math.abs(gmp.DynaviewPunchAngDesired.p) + math.abs(gmp.DynaviewPunchAngDesired.y) + math.abs(gmp.DynaviewPunchAngDesired.r)) * 7.5) or 0)
				local Width, Height = ScrW() - Size, ScrH() - Size
				surface.SetDrawColor(255, 255, 255, math.min(gmp.HudVignetteAlpha:GetFloat() + (Size / 256 / gmp.HudVignetteMultiplier:GetFloat() * 10), 255))
				surface.SetTexture(surface.GetTextureID("vgui/gmplus/vignette_topleft"))
				surface.DrawTexturedRect(0, 0, Size, Size)
				surface.SetTexture(surface.GetTextureID("vgui/gmplus/vignette_topright"))
				surface.DrawTexturedRect(Width, 0, Size, Size)
				surface.SetTexture(surface.GetTextureID("vgui/gmplus/vignette_bottomleft"))
				surface.DrawTexturedRect(0, Height, Size, Size)
				surface.SetTexture(surface.GetTextureID("vgui/gmplus/vignette_bottomright"))
				surface.DrawTexturedRect(Width, Height, Size, Size)
			end
			if gmp.HudCrosshairEnabled:GetBool() and (not fr or not fr.Enabled:GetBool() or not fr.RollEnabled:GetBool() or PlyLocal:GetNetworkedFloat("fr_RollTimer") <= 0) and PlyLocal:Alive() and not PlyLocal:InVehicle() and (not PlyLocal.IsPlayingTaunt or not PlyLocal:IsPlayingTaunt()) then
				surface.SetTexture(0)
				if not gmp.HudCrosshairCircleEnabled:GetBool() and not gmp.HudCrosshairDotEnabled:GetBool() then
					if gmp.HudCrosshairHidingOld then
						RunConsoleCommand("gmp_hud_crosshair_sendclientdata", "1")
						gmp.HudCrosshairHidingOld = false
					end
				elseif not gmp.HudCrosshairHidingOld then
					RunConsoleCommand("gmp_hud_crosshair_sendclientdata", "0")
					gmp.HudCrosshairHidingOld = true
				end
				if gmp.HudCrosshairHitTime < CurTime() then
					gmp.HudCrosshairHitAlpha = gmp.HudCrosshairHitAlpha - (FrameTime() * 300 * gmp.HudCrosshairHitFadeMultiplier:GetFloat())
				end

				local Trace = PlyLocal:GetEyeTrace()
				local TraceIsAlive = Trace.Entity:IsNPC() or Trace.Entity:IsPlayer()
				if IsValid(Trace.Entity) and (TraceIsAlive or Trace.Entity:Health() > 0 or Trace.Entity.rm_IsRagdoll) then
					gmp.HudCrosshairFade = math.min(gmp.HudCrosshairFade + 0.25, 1)
					gmp.HudCrosshairFadeAlive = TraceIsAlive and Trace.Entity:Health() > 0
				else
					gmp.HudCrosshairFade = math.max(gmp.HudCrosshairFade - 0.1, 0)
				end
				local CrosshairFade = gmp.GetCrosshairFade()
				local r = (gmp.HudCrosshairColorR:GetFloat() * (1 - CrosshairFade)) + (CrosshairFade * 255)
				local g = (gmp.HudCrosshairColorG:GetFloat() * (1 - CrosshairFade)) + (CrosshairFade * (gmp.HudCrosshairFadeAlive and 50 or 255))
				local b = (gmp.HudCrosshairColorB:GetFloat() * (1 - CrosshairFade)) + (CrosshairFade * 50)
				local a = (gmp.HudCrosshairColorA:GetFloat() / 255)
				a = (a * (1 - CrosshairFade)) + (((math.sin((CurTime() % 1) * math.pi) * a * 0.75) + (a * 0.25)) * CrosshairFade)
				local ia = a * (1 - IronsightPercent)
				local sr = gmp.HudCrosshairColorShadowR:GetFloat()
				local sg = gmp.HudCrosshairColorShadowG:GetFloat()
				local sb = gmp.HudCrosshairColorShadowB:GetFloat()
				local sa = (gmp.HudCrosshairColorShadowA:GetFloat() / 255)
				sa = (sa * (1 - CrosshairFade)) + (((math.sin((CurTime() % 1) * math.pi) * sa * 0.75) + (sa * 0.25)) * CrosshairFade)
				local isa = sa * (1 - IronsightPercent)

				local Pos = Trace.HitPos:ToScreen(PlyLocal)
				local PosX = Pos.x
				local PosY = Pos.y
				local CenterPosX = ScrW() / 2
				local CenterPosY = ScrH() / 2
				if gmp.DynaviewEnabled:GetBool() and gmp.DynaviewFreelookEnabled:GetBool() and gmp.DynaviewFreelookActive and gmp.DynaviewFreelookAng then
					local Forward = gmp.DynaviewSmoothAngCurrent + gmp.DynaviewSmoothAngAddCurrent
					if gmp.DynaviewVMDynamicsEnabled:GetBool() then
						Forward = Forward + gmp.DynaviewVMDynamicsSmoothAngCurrent
					end
					local Trace2 = util.TraceLine(
						{
							start = PlyLocal:EyePos(),
							endpos = PlyLocal:EyePos() + Forward:Forward() * 1024,
							filter = PlyLocal
						}
					)
					local Pos2 = Trace2.HitPos:ToScreen(PlyLocal)
					CenterPosX = Pos2.x
					CenterPosY = Pos2.y
				end

				local DesiredCircleSize = PlyLocal:GetVelocity():Length() / 50
				if gmp.DynaviewEnabled:GetBool() and gmp.DynaviewSmoothAngCurrent and gmp.DynaviewSmoothAngAddCurrent then
					DesiredCircleSize = DesiredCircleSize +
					(math.abs(gmp.DynaviewSmoothAngCurrent.p + gmp.DynaviewSmoothAngAddCurrent.p - PlyLocal:EyeAngles().p) + math.abs(gmp.DynaviewSmoothAngCurrent.y + gmp.DynaviewSmoothAngAddCurrent.y - PlyLocal:EyeAngles().y) + ((gmp.DynaviewVMDynamicsEnabled:GetBool() and gmp.DynaviewVMDynamicsSmoothAngCurrent) and (math.abs(gmp.DynaviewVMDynamicsSmoothAngCurrent.p) + math.abs(gmp.DynaviewVMDynamicsSmoothAngCurrent.y)) or 0)) * 2
				end

				if IronsightPercent ~= 1 then
					if gmp.HudCrosshairCircleEnabled:GetBool() then
						local CirclePosX = CenterPosX
						local CirclePosY = CenterPosY
						if gmp.HudCrosshairCircleMagnitudeEnabled:GetBool() then
							local MagnitudeStrength = gmp.HudCrosshairCircleMagnitudeStrength:GetFloat()
							CirclePosX = CirclePosX * (1 - MagnitudeStrength) + PosX * MagnitudeStrength
							CirclePosY = CirclePosY * (1 - MagnitudeStrength) + PosY * MagnitudeStrength
						end
						local CurrentCircleSize = gmp.HudCrosshairCircleSize
						CurrentCircleSize = CurrentCircleSize + ((DesiredCircleSize - CurrentCircleSize) * gmp.HudCrosshairCircleSizeStrength:GetFloat())
						gmp.HudCrosshairCircleSize = CurrentCircleSize
						local CircleSizeIn = gmp.HudCrosshairCircleSizeIn:GetFloat()
						CircleSizeIn = (gmp.HudCrosshairDotSize:GetFloat() + CircleSizeIn) + (CircleSizeIn * IronsightPercent) + CurrentCircleSize
						local CircleSizeOut = gmp.HudCrosshairCircleSizeOut:GetFloat()
						CircleSizeOut = (CircleSizeIn + CircleSizeOut) + (CircleSizeOut * IronsightPercent)
						local CircleSizeShadow = gmp.HudCrosshairCircleSizeShadow:GetFloat() * (1 - IronsightPercent)
						local ViewModel = gmp.DynaviewViewModel
						local ActivityTime = nil
						local ActivityDuration = nil
						local ActivityReload = gmp.HudCrosshairCircleReloadEnabled:GetBool() and ViewModel:GetSequenceActivityName(ViewModel:GetSequence()):sub(1, 13) == "ACT_VM_RELOAD"
						local ActivityCycle = ViewModel:GetCycle()
						if ActivityReload then
							if gmp.HudCrosshairReloadStart == nil then
								gmp.HudCrosshairReloadStart = CurTime()
							end
							ActivityDuration = ViewModel:SequenceDuration()
							ActivityTime = CurTime() - gmp.HudCrosshairReloadStart
							if ActivityTime >= ActivityDuration or ActivityCycle == gmp.HudCrosshairReloadOldActivityCycle then
								ActivityReload = false
								gmp.HudCrosshairReloadStart = nil
							end
						else
							gmp.HudCrosshairReloadStart = nil
						end
						gmp.HudCrosshairReloadOldActivityCycle = ActivityCycle
						local ReloadSizeOut = nil
						local ReloadSizeOutAdd = gmp.HudCrosshairCircleReloadSize:GetFloat()
						local ReloadStep = ActivityReload and math.Clamp(gmp.HudCrosshairCircleReloadStep:GetFloat(), 1, 15) or 15
						for c = 0, 1, 0.1 do
							if c < 0.9 then
								surface.SetDrawColor(sr, sg, sb, 255 * c * isa)
							else
								surface.SetDrawColor(r, g, b, 255 * ia)
							end
							local iSizeShadow = (1 - c) * CircleSizeShadow
							for i = 0, math.pi * 2, math.rad(ReloadStep) do
								ReloadSizeOut = CircleSizeOut
								if ActivityReload then
									local Time = i / (math.pi * 2)
									if Time < ActivityTime / ActivityDuration then
										ReloadSizeOut = CircleSizeOut + ReloadSizeOutAdd
									end
								end
								local i2 = i + math.rad(ReloadStep)
								if i2 < math.pi * 2 then
									surface.DrawPoly(
										{
											{
												x = CirclePosX + (math.sin(i) * CircleSizeIn) + (math.sin(i) * -iSizeShadow),
												y = CirclePosY + (math.cos(i) * CircleSizeIn) + (math.cos(i) * -iSizeShadow)
											},
											{
												x = CirclePosX + (math.sin(i) * ReloadSizeOut) + (math.sin(i) * iSizeShadow),
												y = CirclePosY + (math.cos(i) * ReloadSizeOut) + (math.cos(i) * iSizeShadow)
											},
											{
												x = CirclePosX + (math.sin(i2) * ReloadSizeOut) + (math.sin(i2) * iSizeShadow),
												y = CirclePosY + (math.cos(i2) * ReloadSizeOut) + (math.cos(i2) * iSizeShadow)
											},
											{
												x = CirclePosX + (math.sin(i2) * CircleSizeIn) + (math.sin(i2) * -iSizeShadow),
												y = CirclePosY + (math.cos(i2) * CircleSizeIn) + (math.cos(i2) * -iSizeShadow)
											}
										}
									)
								end
							end
						end
					end
				end

				if IronsightPercent ~= 1 and  gmp.HudCrosshairDotEnabled:GetBool() then
					local DotSize = gmp.HudCrosshairDotSize:GetFloat()
					local DotSizeShadow = gmp.HudCrosshairDotSizeShadow:GetFloat() * (1 - IronsightPercent)
					for c = 0, 1, 0.1 do
						if c < 0.9 then
							surface.SetDrawColor(sr, sg, sb, 255 * c * isa)
						else
							surface.SetDrawColor(r, g, b, 255 * ia)
						end
						local iSizeShadow = (1 - c) * DotSizeShadow
						local Data = {}
						for i = 0, math.pi * 2, math.rad(10) do
							table.insert(Data,
								{
									x = PosX + (math.sin(i) * DotSize) + (math.sin(i) * iSizeShadow),
									y = PosY + (math.cos(i) * DotSize) + (math.cos(i) * iSizeShadow)
								}
							)
						end
						surface.DrawPoly(Data)
					end
				end

				if gmp.HudCrosshairHitEnabled:GetBool() and gmp.HudCrosshairHitAlpha > 0 then
					local HitPosX = CenterPosX
					local HitPosY = CenterPosY
					if gmp.HudCrosshairHitMagnitudeEnabled:GetBool() then
						local MagnitudeStrength = gmp.HudCrosshairHitMagnitudeStrength:GetFloat()
						HitPosX = HitPosX * (1 - MagnitudeStrength) + PosX * MagnitudeStrength
						HitPosY = HitPosY * (1 - MagnitudeStrength) + PosY * MagnitudeStrength
					end
					local HitSizeAdd = 0
					local HitLengthAdd = 0
					local HitSize = gmp.HudCrosshairHitSize:GetFloat()
					local HitSizeShadow = gmp.HudCrosshairHitSizeShadow:GetFloat()
					local HitLengthIn = gmp.HudCrosshairHitLengthIn:GetFloat()
					local HitLengthOut = HitLengthIn + gmp.HudCrosshairHitLengthOut:GetFloat()
					for c = 0, 1, 0.1 do
						if c < 0.9 then
							surface.SetDrawColor(sr, sg, sb, gmp.HudCrosshairHitAlpha * c * sa)
						else
							surface.SetDrawColor(r, g, b, gmp.HudCrosshairHitAlpha * a)
						end
						for x = -1, 1, 2 do
							for y = -1, 1, 2 do
								HitSizeAdd = (HitSize + (HitSizeShadow * (1 - c))) / 2
								HitLengthAdd = (HitSizeShadow * (1 - c)) / 2
								surface.DrawPoly(
									{
										{x = HitPosX + (HitLengthIn  - HitSizeAdd - HitLengthAdd) * x, y = HitPosY + (HitLengthIn  + HitSizeAdd - HitLengthAdd) * y},
										{x = HitPosX + (HitLengthOut - HitSizeAdd + HitLengthAdd) * x, y = HitPosY + (HitLengthOut + HitSizeAdd + HitLengthAdd) * y},
										{x = HitPosX + (HitLengthOut + HitSizeAdd + HitLengthAdd) * x, y = HitPosY + (HitLengthOut - HitSizeAdd + HitLengthAdd) * y},
										{x = HitPosX + (HitLengthIn  + HitSizeAdd - HitLengthAdd) * x, y = HitPosY + (HitLengthIn  - HitSizeAdd - HitLengthAdd) * y}
									}
								)
							end
						end
					end
				end
				return
			end
		end
		if gmp.HudCrosshairHidingOld then
			RunConsoleCommand("gmp_hud_crosshair_sendclientdata", "1")
			gmp.HudCrosshairHidingOld = false
		end
	end
end)