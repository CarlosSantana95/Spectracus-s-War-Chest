if SERVER then return end

gmp.FirstPersonEnabled = CreateClientConVar("gmp_firstperson_enabled", "1", true, true)
gmp.FirstPersonVehicleEnabled = CreateClientConVar("gmp_firstperson_vehicle_enabled", "1", true, true)
gmp.FirstPersonPosStrength = CreateClientConVar("gmp_firstperson_pos_strength", "0.6", true, true)
gmp.FirstPersonCompatDynaview = CreateClientConVar("gmp_firstperson_compat_dynaview", "1", true, true)

gmp.FirstPersonModel = gmp.FirstPersonModel or nil
if IsValid(gmp.FirstPersonModel) then
	gmp.FirstPersonModel:Remove()
	gmp.FirstPersonModel = nil
end
gmp.FirstPersonWeapon = nil
gmp.FirstPersonVehicle = nil
gmp.FirstPersonSequence = 0
gmp.FirstPersonFrame = 0
gmp.FirstPersonPosCurrent = nil

hook.Add("UpdateAnimation", "gmp_cl_firstperson_Update", function(Ply, Velocity, MaxSequenceGroundSpeed)
	if Ply == LocalPlayer() then
		local FirstPersonModel = gmp.FirstPersonModel
		if not IsValid(FirstPersonModel) then
			FirstPersonModel = ClientsideModel(Ply:GetModel(), RENDERGROUP_OTHER)
			FirstPersonModel:SetNoDraw(true)
			FirstPersonModel.GetPlayerColor = function()
				return Ply:GetPlayerColor()
			end
			gmp.FirstPersonModel = FirstPersonModel
		end
		local PlyModel = Ply:GetModel()
		if FirstPersonModel:GetModel() ~= PlyModel then
			FirstPersonModel:SetModel(PlyModel)
		end
		FirstPersonModel:SetSkin(Ply:GetSkin())
		FirstPersonModel:SetMaterial(Ply:GetMaterial())

		if Ply:GetActiveWeapon() ~= gmp.FirstPersonWeapon or Ply:GetVehicle() ~= gmp.FirstPersonVehicle then
			gmp.FirstPersonWeapon = Ply:GetActiveWeapon()
			gmp.FirstPersonVehicle = Ply:GetVehicle()
			for i = 0, FirstPersonModel:GetBoneCount() - 1 do
				FirstPersonModel:ManipulateBoneScale(i, Vector(1, 1, 1))
				FirstPersonModel:ManipulateBonePosition(i, vector_origin)
				FirstPersonModel:ManipulateBoneAngles(i, Angle())
			end
			if IsValid(gmp.FirstPersonVehicle) then
				local Bone = FirstPersonModel:LookupBone("ValveBiped.Bip01_Head1")
				if Bone then
					FirstPersonModel:ManipulateBoneScale(Bone, vector_origin)
					FirstPersonModel:ManipulateBonePosition(Bone, Vector(-5, 0, 0))
				end
			else
				local HoldType = "none"
				if IsValid(gmp.FirstPersonWeapon) then
					HoldType = gmp.FirstPersonWeapon.GetHoldType and gmp.FirstPersonWeapon:GetHoldType() or HoldType
				end
				if HoldType == "none" then
					local Bone = FirstPersonModel:LookupBone("ValveBiped.Bip01_Head1")
					if Bone then
						FirstPersonModel:ManipulateBoneScale(Bone, vector_origin)
						FirstPersonModel:ManipulateBonePosition(Bone, Vector(-50, 20, 0))
					end
					Bone = FirstPersonModel:LookupBone("ValveBiped.Bip01_Spine1")
					if Bone then
						FirstPersonModel:ManipulateBonePosition(Bone, Vector(1, -2, 0))
						FirstPersonModel:ManipulateBoneAngles(Bone, Angle(0, -20, 0))
					end
				else
					local Bone = FirstPersonModel:LookupBone("ValveBiped.Bip01_Spine1")
					if Bone then
						FirstPersonModel:ManipulateBonePosition(Bone, Vector(1, -3, 0))
						FirstPersonModel:ManipulateBoneAngles(Bone, Angle(0, -15, 0))
					end
					Bone = FirstPersonModel:LookupBone("ValveBiped.Bip01_Spine2")
					if Bone then
						FirstPersonModel:ManipulateBonePosition(Bone, Vector(2, -2, 0))
						FirstPersonModel:ManipulateBoneAngles(Bone, Angle(0, -30, 0))
					end
					Bone = FirstPersonModel:LookupBone("ValveBiped.Bip01_Spine4")
					if Bone then
						FirstPersonModel:ManipulateBonePosition(Bone, Vector(50, 0, 0))
						FirstPersonModel:ManipulateBoneAngles(Bone, Angle(0, 0, 0))
					end
				end
			end
		end

		local VelocityLength = Ply:GetVelocity():Length()
		local Rate = math.min(VelocityLength > 0.2 and (VelocityLength / MaxSequenceGroundSpeed) or 1, 2)
		if Ply:WaterLevel() >= 2 then
			Rate = math.max(Rate, 0.5)
		elseif not Ply:IsOnGround() and Ply.CalcIdeal == ACT_MP_SWIM then
			Rate = 0.1
		end
		FirstPersonModel:SetPlaybackRate(Rate)
		local Sequence = Ply:GetSequence()
		if Sequence ~= gmp.FirstPersonSequence then
			FirstPersonModel:ResetSequence(Sequence)
			gmp.FirstPersonSequence = Sequence
		end
		FirstPersonModel:FrameAdvance(CurTime() - gmp.FirstPersonFrame)
		gmp.FirstPersonFrame = CurTime()

		if Ply:InVehicle() then
			local Vehicle = Ply:GetVehicle()
			local VehicleForward = Vehicle:GetUp()
			local PosDesired = Ply:GetPos()
			local AngDesired = Ply:GetAngles()
			FirstPersonModel:SetPoseParameter("vertical_velocity", math.max(VehicleForward:Dot(vector_up), 0) + (VehicleForward:Dot(Vehicle:GetVelocity()) * 0.005))
			FirstPersonModel:SetPoseParameter("vehicle_steer", (Ply:GetVehicle():GetPoseParameter("vehicle_steer") * 2) - 1)
			FirstPersonModel:SetPos(PosDesired)
			FirstPersonModel:SetAngles(AngDesired)
			gmp.FirstPersonPosCurrent = vector_origin
		else
			FirstPersonModel:SetPoseParameter("spine_yaw", math.pi * 10 * ((Ply:GetPoseParameter("spine_yaw") * 2) - 1))
			FirstPersonModel:SetPoseParameter("move_x", (Ply:GetPoseParameter("move_x") * 2) - 1)
			FirstPersonModel:SetPoseParameter("move_y", (Ply:GetPoseParameter("move_y") * 2) - 1)
			local AimYaw = math.pi * 25 * ((Ply:GetPoseParameter("aim_yaw") * 2) - 1)
			FirstPersonModel:SetPoseParameter("aim_yaw", AimYaw)
			FirstPersonModel:SetPoseParameter("aim_pitch", AimYaw)

			local AngCurrent = Angle(0, Ply:EyeAngles().y - AimYaw, 0)
			local PosDesired = Vector(0, 0, 3)
			local GlobalOffset = Ply:GetPos() + Vector(0, 0, -3.5)
			local TraceOffset = Vector(0, 0, 20)
			if Ply:GetMoveType() == MOVETYPE_WALK then
				PosDesired = PosDesired + TraceOffset + GlobalOffset
				PosDesired = util.TraceLine(
					{
						start = PosDesired,
						endpos = PosDesired - (AngCurrent:Forward() * 23),
						filter = {Ply, FirstPersonModel}
					}
				).HitPos - TraceOffset - GlobalOffset + (AngCurrent:Forward() * 7)
				local Ducking = Ply:Crouching()
				if Ply:IsOnGround() then
					if Ducking then
						local Weapon = Ply:GetActiveWeapon()
						PosDesired = PosDesired + (AngCurrent:Right() * (Ply:KeyDown(IN_FORWARD) and -2 or 8 * ((IsValid(Weapon) and (Weapon:GetClass() == "weapon_357" or Weapon.HoldType == "revolver")) and 1 or -1))) + (AngCurrent:Forward() * -2)
					end
				else
					if Ducking then
						PosDesired = PosDesired + Vector(0, 0, -21)
					else
						PosDesired = PosDesired + Vector(0, 0, 8)
					end
				end
			else
				PosDesired = PosDesired - (AngCurrent:Forward() * 16)
			end
			local PosCurrent = gmp.FirstPersonPosCurrent or PosDesired
			if PosCurrent ~= PosDesired then
				PosCurrent = PosCurrent + ((PosDesired - PosCurrent) * gmp.FirstPersonPosStrength:GetFloat())
			end

			FirstPersonModel:SetPos(PosCurrent + GlobalOffset)
			FirstPersonModel:SetAngles(AngCurrent)
			gmp.FirstPersonPosCurrent = PosCurrent
		end
	end
end)

hook.Add("PostDrawOpaqueRenderables", "gmp_cl_firstperson_Draw", function()
	local PlyLocal = LocalPlayer()
	if gmp.Enabled:GetBool() and gmp.FirstPersonEnabled:GetBool() and ((gmp.FirstPersonCompatDynaview:GetBool() and not gmp.DynaviewCompat) or not gmp.FirstPersonCompatDynaview:GetBool()) and IsValid(PlyLocal) and PlyLocal:Alive() and PlyLocal:GetViewEntity() == PlyLocal and PlyLocal:GetObserverMode() == OBS_MODE_NONE and ((PlyLocal.IsPlayingTaunt and not PlyLocal:IsPlayingTaunt()) or not PlyLocal.IsPlayingTaunt) and ((gmp.DynaviewEnabled:GetBool() and gmp.DynaviewData.drawviewer ~= true) or not gmp.DynaviewEnabled:GetBool()) and (gmp.FirstPersonVehicleEnabled:GetBool() or (not gmp.FirstPersonVehicleEnabled:GetBool() and not IsValid(gmp.FirstPersonVehicle))) then
		local FirstPersonModel = gmp.FirstPersonModel
		if IsValid(FirstPersonModel) then
			local Pos = nil
			local Ang = nil
			if gmp.DynaviewEnabled:GetBool() and gmp.DynaviewData.angles then
				Pos = (gmp.DynaviewSmoothPosCurrent and gmp.DynaviewSmoothPosCurrent or PlyLocal:EyePos()) + (gmp.DynaviewSmoothPosAddCurrent and gmp.DynaviewSmoothPosAddCurrent or vector_origin)
				Ang = gmp.DynaviewData.angles
			else
				Pos = PlyLocal:EyePos()
				Ang = PlyLocal:EyeAngles()
				if IsValid(gmp.FirstPersonVehicle) then
					Ang = Ang + Angle(0, -gmp.FirstPersonVehicle:GetAngles().y, 0)
				end
			end
			if fr and fr.Enabled:GetBool() and fr.RollEnabled:GetBool() and PlyLocal.fr_RollTimerClient then
				Ang = Ang - fr.RollViewHookCalc(PlyLocal)
			end
			cam.Start3D(Pos, Ang)
			local RenderColor = FirstPersonModel:GetColor()
			render.ModelMaterialOverride(FirstPersonModel:GetMaterial())
			render.SetColorModulation(RenderColor.r / 255, RenderColor.g / 255, RenderColor.b / 255)
			render.SetBlend(RenderColor.a / 255)
			if IsValid(gmp.FirstPersonWeapon) and not IsValid(gmp.FirstPersonVehicle) then
				render.EnableClipping(true)
				if PlyLocal:Crouching() then
					render.PushCustomClipPlane(Vector(0, 0, -1), -Pos.z + 5)
				else
					render.PushCustomClipPlane(Vector(0, 0, -1), -Pos.z + 12.5)
				end
			else
				render.EnableClipping(false)
			end
			FirstPersonModel:DrawModel()
			render.SetBlend(1)
			render.SetColorModulation(1, 1, 1)
			render.ModelMaterialOverride()
			hook.Call("gmp_cl_firstperson_PostDraw")
			if IsValid(gmp.FirstPersonWeapon) then
				render.PopCustomClipPlane()
				render.EnableClipping(false)
			end
			cam.End3D()
		end
	else
		FirstPersonPosCurrent = nil
	end
end)