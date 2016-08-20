if SERVER then return end

gmp.HolsterEnabled = CreateClientConVar("gmp_holster_enabled", "1", true, true)
gmp.HolsterFirstPersonEnabled = CreateClientConVar("gmp_holster_firstperson_enabled", "1", true, true)
gmp.HolsterVehicleEnabled = CreateClientConVar("gmp_holster_vehicle_enabled", "1", true, true)

local PhysgunGlow1 = Material("sprites/physg_glow1")
local PhysgunGlow2 = Material("sprites/physg_glow2")

gmp.HolsterData =
{
	["weapon_physgun"] =
	{
		"ValveBiped.Bip01_Spine1",
		Vector(15, -3, -8),
		Angle(0, 185, -120),
		function(Ent, Ply, Weapon, HolsterData, Override)
			local MuzzleAngPos = Ent:GetAttachment(1)
			if MuzzleAngPos then
				local WeaponColor = Ply:GetWeaponColor()
				WeaponColor = Color(WeaponColor.x * 255, WeaponColor.y * 255, WeaponColor.z * 255, 60)
				render.SetMaterial(PhysgunGlow1)
				local Size1 = math.Rand(30, 60)
				render.DrawSprite(MuzzleAngPos.Pos, Size1, Size1, WeaponColor)
				render.SetMaterial(PhysgunGlow2)
				local Size2 = math.Rand(30, 60)
				render.DrawSprite(MuzzleAngPos.Pos + MuzzleAngPos.Ang:Forward() * 8, Size2, Size2, WeaponColor)
			end
		end,
		function(Ent, Ply, Weapon, HolsterData, Override)
			Ent:SetSkin(1)
		end
	},
	["w_physics.mdl"] =
	{
		"ValveBiped.Bip01_Spine1",
		Vector(15, -3, -8),
		Angle(0, 185, -120),
	},
	["w_smg1.mdl"] =
	{
		"ValveBiped.Bip01_Pelvis",
		Vector(6.5, 0, -4),
		Angle(0, -90, -25),
	},
	["w_irifle.mdl"] =
	{
		"ValveBiped.Bip01_Spine1",
		Vector(12, -6, -3),
		Angle(0, 190, 25),
	},
	["w_shotgun.mdl"] =
	{
		"ValveBiped.Bip01_Spine1",
		Vector(4, -5, 5),
		Angle(0, 5, 180),
	},
	["w_crossbow.mdl"] =
	{
		"ValveBiped.Bip01_L_Thigh",
		Vector(4, -4, 3),
		Angle(0, 20, 0),
	},
	["w_rocket_launcher.mdl"] =
	{
		"ValveBiped.Bip01_Spine1",
		Vector(20, 4, 12.5),
		Angle(0, 190, 200),
	},
	["w_grenade.mdl"] =
	{
		"ValveBiped.Bip01_Pelvis",
		Vector(-5, -1, -8),
		Angle(0, -15, -90),
		nil,
		nil,
		"models/Items/grenadeAmmo.mdl"
	}

}

function gmp.HolsterDraw(Ply, Weapon, HolsterData, Override)
	if IsValid(Ply) and IsValid(Weapon) and HolsterData and (HolsterData[6] or Weapon:GetModel()) then
		local HolsterModel = Weapon.gmp_HolsterModel
		if not HolsterModel then
			HolsterModel = ClientsideModel(HolsterData[6] or Weapon:GetModel(), RENDER_GROUP_OPAQUE_ENTITY)
			HolsterModel:SetNoDraw(true)
			HolsterModel.GetWeaponColor = function()
				return Ply:GetWeaponColor()
			end
			Weapon.gmp_HolsterModel = HolsterModel
		end
		local Source = IsValid(Override) and Override or Ply
		local Bone = Source:LookupBone(HolsterData[1])
		if Bone then
			local BonePos, BoneAng = Source:GetBonePosition(Bone)
			local Pos = CopyVector(HolsterData[2])
			Pos:Rotate(BoneAng)
			HolsterModel:SetPos(BonePos + Pos)
			HolsterModel:SetAngles(AddAngles(BoneAng, HolsterData[3]))
			HolsterModel:SetSkin(Weapon:GetSkin())
			HolsterModel:SetMaterial(Weapon:GetMaterial())
			for i = 0, HolsterModel:GetNumBodyGroups() - 1 do
				HolsterModel:SetBodygroup(i, Weapon:GetBodygroup(i) or 0)
			end
			HolsterModel:SetColor(Weapon:GetColor())
			if HolsterData[5] then
				HolsterData[5](HolsterModel, Ply, Weapon, HolsterData, Override)
			end
			HolsterModel:DrawModel()
			if HolsterData[4] then
				HolsterData[4](HolsterModel, Ply, Weapon, HolsterData, Override)
			end
		end
	end
end

local function Draw(Ply)
	if gmp.HolsterEnabled:GetBool() then
		if Ply and not IsValid(Ply) then return end
		local Override = false
		if not Ply and gmp.HolsterFirstPersonEnabled:GetBool() then
			Ply = LocalPlayer()
			Override = true
		elseif not Ply then
			return
		end
		if IsValid(Ply) and (not Ply:InVehicle() or (Ply:InVehicle() and gmp.HolsterVehicleEnabled:GetBool())) then
			local HolsterData = nil
			local ActiveWeapon = Ply:GetActiveWeapon()
			for _, Weapon in pairs(Ply:GetWeapons()) do
				if IsValid(Weapon) and Weapon ~= ActiveWeapon then
					HolsterData = gmp.HolsterData[Weapon:GetClass()]
					if not HolsterData then
						local WeaponModel = Weapon:GetModel()
						local SearchPath = "models/weapons/"
						if WeaponModel and WeaponModel:lower():sub(1, SearchPath:len()) == SearchPath then
							HolsterData = gmp.HolsterData[WeaponModel:sub(SearchPath:len() + 1):lower()]
						end
					end
				end
				if HolsterData then
					gmp.HolsterDraw(Ply, Weapon, HolsterData, Override and gmp.FirstPersonModel)
				end
				HolsterData = nil
			end
		end
	end
end

hook.Add("PostPlayerDraw", "gmp_cl_holster_Draw", Draw)
hook.Add("gmp_cl_firstperson_PostDraw", "gmp_cl_holster_DrawFirstPerson", Draw)