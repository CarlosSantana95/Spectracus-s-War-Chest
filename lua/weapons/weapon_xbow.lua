AddCSLuaFile()

SWEP.PrintName		= "Improvised Crossbow"
SWEP.Author			= "Spectracus"
SWEP.Category 		= "Spectracus's War Chest"
SWEP.Purpose		= "An improvised crossbow built on a malfunctional HK417."

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true
SWEP.Slot				= 3
SWEP.SlotPos			= 2
SWEP.DrawAmmo			= false
SWEP.BounceWeaponIcon   = false

SWEP.ViewModel			= "models/weapons/c_crossbow.mdl"
SWEP.WorldModel			= "models/weapons/w_invisi.mdl"
SWEP.CSMuzzleFlashes	= true
SWEP.HoldType			= "ar2"

SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "xbowbolt"
SWEP.Primary.Firerate		= 1
SWEP.Primary.Firesound		= Sound( "weapons/crossbow/fire1.wav" )
SWEP.Primary.Damage			= 60
SWEP.Primary.Number			= 1
SWEP.Primary.Accuracy		= 0.01
SWEP.Primary.Recoil			= 1
SWEP.ViewModelFOV			= 70

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

game.AddParticles( "particles/hunter_flechette.pcf" )
game.AddParticles( "particles/hunter_projectile.pcf" )

SWEP.IronSightsPos = Vector(-8.0, -7, 3.3)
SWEP.IronSightsAng = Vector(0, 0, 0)
if CLIENT then
killicon.Add("weapon_xbow", "vgui/hud/weapon_xbow", Color(255, 255, 255, 255))
SWEP.WepSelectIcon = surface.GetTextureID("vgui/hud/weapon_xbow")
end
SWEP.VElements = {
	["v_xbow"] = { type = "Model", model = "models/weapons/crossbow.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(0, 1.5, -15.065), angle = Angle(90, -90, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["arrow1"] = { type = "Model", model = "models/weapons/arrow.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(0.5, 1.3, 15), angle = Angle(86, 90, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["v_arrow"] = { type = "Model", model = "models/weapons/arrow.mdl", bone = "ValveBiped.bolt", rel = "", pos = Vector(0, -0.5, 10), angle = Angle(90, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["arrow2"] = { type = "Model", model = "models/weapons/arrow.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(-0.5, 1.3, 15), angle = Angle(86, 90, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["w_xbow"] = { type = "Model", model = "models/weapons/crossbow.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-8, 0.5, -0.5), angle = Angle(-10, 0, 180), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["arrow1"] = { type = "Model", model = "models/weapons/arrow.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(20, 1.049, -5.200), angle = Angle(-13.5, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["w_arrow"] = { type = "Model", model = "models/weapons/arrow.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(24, 0.5, -9.1), angle = Angle(-10, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["arrow2"] = { type = "Model", model = "models/weapons/arrow.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(20, -0.051, -5.200), angle = Angle(-13.5, 0, 0), size = Vector(0.4, 0.4, 0.4), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
/*---------------------------------------------------------
	Reload does nothing
---------------------------------------------------------*/
function SWEP:Reload()
	self:SetIronsights( false )
	self.Weapon:DefaultReload(ACT_VM_RELOAD)
end
function SWEP:PreDrawViewModel( vm, wep, ply )

 vm:SetMaterial( "engine/occlusionproxy" ) -- Hide that view model with hacky material

end
/*---------------------------------------------------------
   Think does nothing
---------------------------------------------------------*/
function SWEP:Think()
end


/*---------------------------------------------------------
	PrimaryAttack
---------------------------------------------------------*/
function SWEP:PrimaryAttack()
if self:Clip1()>0 then
	self:ShootEffects( self )
	self:SetNextPrimaryFire( CurTime() + self.Primary.Firerate)
	self:EmitSound( self.Primary.Firesound )
	self:TakePrimaryAmmo(1)
	if self.Weapon:GetNetworkedBool( "Ironsights", b )==true then
		--self:ShootBullet(self.Primary.Damage,self.Primary.Number,self.Primary.Accuracy/3)
		self:FireGun(self.Primary.Accuracy/3)
	else
		--self:ShootBullet(self.Primary.Damage,self.Primary.Number,self.Primary.Accuracy)
		self:FireGun(self.Primary.Accuracy)
	end
	self.Owner:ViewPunch(Angle(-self.Primary.Recoil/2,0,0))
	self.Owner:SetEyeAngles(self.Owner:EyeAngles()+Angle(-self.Primary.Recoil,0,0))
end
end
local IRONSIGHT_TIME = 0.20

function SWEP:FireGun(mult)
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	local Forward = self.Owner:EyeAngles():Forward()
	local Right = self.Owner:EyeAngles():Right()
	local Up = self.Owner:EyeAngles():Up()
	local ent = ents.Create( "ent_cbowarrow" )
	if ( IsValid( ent ) ) then
		local shootiepos = self.Owner:GetShootPos() + Forward*20
		local hit = self.Owner:GetEyeTrace().HitPos
		local veccy = (hit-shootiepos):GetNormalized()
		local righty = veccy:Angle():Right()
		local upy = veccy:Angle():Up()
		ent:SetPos( shootiepos )
		ent:SetAngles( veccy:Angle() )
		ent:SetOwner( self.Owner )
		ent:Spawn()
		ent.Damage = self.Primary.Damage
		self.Cone = mult
		local phys = ent:GetPhysicsObject()
		--phys:ApplyForceCenter( ( veccy + righty*self.Cone*math.Rand(-1,1) + upy*self.Cone*math.Rand(-1,1) ):GetNormalized()*self.Velocity*20000)
		phys:ApplyForceCenter((veccy + righty*mult*math.Rand(-1,1) + upy*mult*math.Rand(-1,1)):GetNormalized()*4000)
	end	
end
/*---------------------------------------------------------
   Name: GetViewModelPosition
   Desc: Allows you to re-position the view model
---------------------------------------------------------*/
function SWEP:GetViewModelPosition( pos, ang )

	if ( !self.IronSightsPos ) then return pos, ang end

	local bIron = self.Weapon:GetNetworkedBool( "Ironsights" )
	
	if ( bIron != self.bLastIron ) then
	
		self.bLastIron = bIron 
		self.fIronTime = CurTime()
		
		if ( bIron ) then 
			self.SwayScale 	= 0.3
			self.BobScale 	= 0.1
		else 
			self.SwayScale 	= 1.0
			self.BobScale 	= 1.0
		end
	
	end
	
	local fIronTime = self.fIronTime or 0

	if ( !bIron && fIronTime < CurTime() - IRONSIGHT_TIME ) then 
		return pos, ang 
	end
	
	local Mul = 1.0
	
	if ( fIronTime > CurTime() - IRONSIGHT_TIME ) then
	
		Mul = math.Clamp( (CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1 )
		
		if (!bIron) then Mul = 1 - Mul end
	
	end

	local Offset	= self.IronSightsPos
	
	if ( self.IronSightsAng ) then
	
		ang = ang * 1
		ang:RotateAroundAxis( ang:Right(), 		self.IronSightsAng.x * Mul )
		ang:RotateAroundAxis( ang:Up(), 		self.IronSightsAng.y * Mul )
		ang:RotateAroundAxis( ang:Forward(), 	self.IronSightsAng.z * Mul )
	
	
	end
	
	local Right 	= ang:Right()
	local Up 		= ang:Up()
	local Forward 	= ang:Forward()
	
	

	pos = pos + Offset.x * Right * Mul
	pos = pos + Offset.y * Forward * Mul
	pos = pos + Offset.z * Up * Mul

	return pos, ang
	
end


/*---------------------------------------------------------
	SetIronsights
---------------------------------------------------------*/
function SWEP:SetIronsights( b )

	self.Weapon:SetNetworkedBool( "Ironsights", b )

end

/*---------------------------------------------------------
	SecondaryAttack
---------------------------------------------------------*/
function SWEP:SecondaryAttack()
	return false
end

function SWEP:Think()
	local player = self.Owner
	if (player:KeyPressed(IN_ATTACK2)) then
		self:SetIronsights( true )
	end
	if (player:KeyReleased(IN_ATTACK2)) then
		self:SetIronsights( false )
	end
end

/*---------------------------------------------------------
   Name: ShouldDropOnDie
   Desc: Should this weapon be dropped when its owner dies?
---------------------------------------------------------*/
function SWEP:ShouldDropOnDie()
	return true
end

/********************************************************
        SWEP Construction Kit base code
                Created by Clavus
        Available for public use, thread at:
         facepunch.com/threads/1032378
        
        
        DESCRIPTION:
                This script is meant for experienced scripters
                that KNOW WHAT THEY ARE DOING. Don't come to me
                with basic Lua questions.
                
                Just copy into your SWEP or SWEP base of choice
                and merge with your own code.
                
                The SWEP.VElements, SWEP.WElements and
                SWEP.ViewModelBoneMods tables are all optional
                and only have to be visible to the client.
********************************************************/

function SWEP:Initialize()
		if CLIENT then
			self:SetWeaponHoldType(self.HoldType)
		end

        if CLIENT then
        
                -- Create a new table for every weapon instance
                self.VElements = table.FullCopy( self.VElements )
                self.WElements = table.FullCopy( self.WElements )
                self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )

                self:CreateModels(self.VElements) -- create viewmodels
                self:CreateModels(self.WElements) -- create worldmodels
                
                -- init view model bone build function
                if IsValid(self.Owner) then
                        local vm = self.Owner:GetViewModel()
                        if IsValid(vm) then
                                self:ResetBonePositions(vm)
                                
                                -- Init viewmodel visibility
                                if (self.ShowViewModel == nil or self.ShowViewModel) then
                                        vm:SetColor(Color(255,255,255,255))
                                else
                                        -- we set the alpha to 1 instead of 0 because else ViewModelDrawn stops being called
                                        vm:SetColor(Color(255,255,255,1))
                                        -- ^ stopped working in GMod 13 because you have to do Entity:SetRenderMode(1) for translucency to kick in
                                        -- however for some reason the view model resets to render mode 0 every frame so we just apply a debug material to prevent it from drawing
                                        vm:SetMaterial("Debug/hsv")                        
                                end
                        end
                end
                
        end

end

function SWEP:Holster()
        
        if CLIENT and IsValid(self.Owner) then
                local vm = self.Owner:GetViewModel()
                if IsValid(vm) then
                        self:ResetBonePositions(vm)
                end
        end
        	if ( IsValid( self.Owner ) ) then
		local vm = self.Owner:GetViewModel()
		if ( IsValid( vm ) ) then vm:SetMaterial( "" ) end
	end
        return true
end

function SWEP:OnRemove()
        self:Holster()
end

if CLIENT then

        SWEP.vRenderOrder = nil
        function SWEP:ViewModelDrawn()
                
                local vm = self.Owner:GetViewModel()
                if !IsValid(vm) then return end
                
                if (!self.VElements) then return end
                
                self:UpdateBonePositions(vm)

                if (!self.vRenderOrder) then
                        
                        -- we build a render order because sprites need to be drawn after models
                        self.vRenderOrder = {}

                        for k, v in pairs( self.VElements ) do
                                if (v.type == "Model") then
                                        table.insert(self.vRenderOrder, 1, k)
                                elseif (v.type == "Sprite" or v.type == "Quad") then
                                        table.insert(self.vRenderOrder, k)
                                end
                        end
                        
                end

                for k, name in ipairs( self.vRenderOrder ) do
                
                        local v = self.VElements[name]
                        if (!v) then self.vRenderOrder = nil break end
                        if (v.hide) then continue end
                        
                        local model = v.modelEnt
                        local sprite = v.spriteMaterial
                        
                        if (!v.bone) then continue end
                        
                        local pos, ang = self:GetBoneOrientation( self.VElements, v, vm )
                        
                        if (!pos) then continue end
                        
                        if (v.type == "Model" and IsValid(model)) then

                                model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
                                ang:RotateAroundAxis(ang:Up(), v.angle.y)
                                ang:RotateAroundAxis(ang:Right(), v.angle.p)
                                ang:RotateAroundAxis(ang:Forward(), v.angle.r)

                                model:SetAngles(ang)
                                --model:SetModelScale(v.size)
                                local matrix = Matrix()
                                matrix:Scale(v.size)
                                model:EnableMatrix( "RenderMultiply", matrix )
                                
                                if (v.material == "") then
                                        model:SetMaterial("")
                                elseif (model:GetMaterial() != v.material) then
                                        model:SetMaterial( v.material )
                                end
                                
                                if (v.skin and v.skin != model:GetSkin()) then
                                        model:SetSkin(v.skin)
                                end
                                
                                if (v.bodygroup) then
                                        for k, v in pairs( v.bodygroup ) do
                                                if (model:GetBodygroup(k) != v) then
                                                        model:SetBodygroup(k, v)
                                                end
                                        end
                                end
                                
                                if (v.surpresslightning) then
                                        render.SuppressEngineLighting(true)
                                end
                                
                                render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
                                render.SetBlend(v.color.a/255)
                                model:DrawModel()
                                render.SetBlend(1)
                                render.SetColorModulation(1, 1, 1)
                                
                                if (v.surpresslightning) then
                                        render.SuppressEngineLighting(false)
                                end
                                
                        elseif (v.type == "Sprite" and sprite) then
                                
                                local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
                                render.SetMaterial(sprite)
                                render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
                                
                        elseif (v.type == "Quad" and v.draw_func) then
                                
                                local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
                                ang:RotateAroundAxis(ang:Up(), v.angle.y)
                                ang:RotateAroundAxis(ang:Right(), v.angle.p)
                                ang:RotateAroundAxis(ang:Forward(), v.angle.r)
                                
                                cam.Start3D2D(drawpos, ang, v.size)
                                        v.draw_func( self )
                                cam.End3D2D()

                        end
                        
                end
                
        end

        SWEP.wRenderOrder = nil
        function SWEP:DrawWorldModel()
                
                if (self.ShowWorldModel == nil or self.ShowWorldModel) then
                        self:DrawModel()
                end
                
                if (!self.WElements) then return end
                
                if (!self.wRenderOrder) then

                        self.wRenderOrder = {}

                        for k, v in pairs( self.WElements ) do
                                if (v.type == "Model") then
                                        table.insert(self.wRenderOrder, 1, k)
                                elseif (v.type == "Sprite" or v.type == "Quad") then
                                        table.insert(self.wRenderOrder, k)
                                end
                        end

                end
                
                if (IsValid(self.Owner)) then
                        bone_ent = self.Owner
                else
                        -- when the weapon is dropped
                        bone_ent = self
                end
                
                for k, name in pairs( self.wRenderOrder ) do
                
                        local v = self.WElements[name]
                        if (!v) then self.wRenderOrder = nil break end
                        if (v.hide) then continue end
                        
                        local pos, ang
                        
                        if (v.bone) then
                                pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )
                        else
                                pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
                        end
                        
                        if (!pos) then continue end
                        
                        local model = v.modelEnt
                        local sprite = v.spriteMaterial
                        
                        if (v.type == "Model" and IsValid(model)) then

                                model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
                                ang:RotateAroundAxis(ang:Up(), v.angle.y)
                                ang:RotateAroundAxis(ang:Right(), v.angle.p)
                                ang:RotateAroundAxis(ang:Forward(), v.angle.r)

                                model:SetAngles(ang)
                                --model:SetModelScale(v.size)
                                local matrix = Matrix()
                                matrix:Scale(v.size)
                                model:EnableMatrix( "RenderMultiply", matrix )
                                
                                if (v.material == "") then
                                        model:SetMaterial("")
                                elseif (model:GetMaterial() != v.material) then
                                        model:SetMaterial( v.material )
                                end
                                
                                if (v.skin and v.skin != model:GetSkin()) then
                                        model:SetSkin(v.skin)
                                end
                                
                                if (v.bodygroup) then
                                        for k, v in pairs( v.bodygroup ) do
                                                if (model:GetBodygroup(k) != v) then
                                                        model:SetBodygroup(k, v)
                                                end
                                        end
                                end
                                
                                if (v.surpresslightning) then
                                        render.SuppressEngineLighting(true)
                                end
                                
                                render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
                                render.SetBlend(v.color.a/255)
                                model:DrawModel()
                                render.SetBlend(1)
                                render.SetColorModulation(1, 1, 1)
                                
                                if (v.surpresslightning) then
                                        render.SuppressEngineLighting(false)
                                end
                                
                        elseif (v.type == "Sprite" and sprite) then
                                
                                local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
                                render.SetMaterial(sprite)
                                render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
                                
                        elseif (v.type == "Quad" and v.draw_func) then
                                
                                local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
                                ang:RotateAroundAxis(ang:Up(), v.angle.y)
                                ang:RotateAroundAxis(ang:Right(), v.angle.p)
                                ang:RotateAroundAxis(ang:Forward(), v.angle.r)
                                
                                cam.Start3D2D(drawpos, ang, v.size)
                                        v.draw_func( self )
                                cam.End3D2D()

                        end
                        
                end
                
        end

        function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )
                
                local bone, pos, ang
                if (tab.rel and tab.rel != "") then
                        
                        local v = basetab[tab.rel]
                        
                        if (!v) then return end
                        
                        -- Technically, if there exists an element with the same name as a bone
                        -- you can get in an infinite loop. Let's just hope nobody's that stupid.
                        pos, ang = self:GetBoneOrientation( basetab, v, ent )
                        
                        if (!pos) then return end
                        
                        pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
                        ang:RotateAroundAxis(ang:Up(), v.angle.y)
                        ang:RotateAroundAxis(ang:Right(), v.angle.p)
                        ang:RotateAroundAxis(ang:Forward(), v.angle.r)
                                
                else
                
                        bone = ent:LookupBone(bone_override or tab.bone)

                        if (!bone) then return end
                        
                        pos, ang = Vector(0,0,0), Angle(0,0,0)
                        local m = ent:GetBoneMatrix(bone)
                        if (m) then
                                pos, ang = m:GetTranslation(), m:GetAngles()
                        end
                        
                        if (IsValid(self.Owner) and self.Owner:IsPlayer() and
                                ent == self.Owner:GetViewModel() and self.ViewModelFlip) then
                                ang.r = -ang.r -- Fixes mirrored models
                        end
                
                end
                
                return pos, ang
        end

        function SWEP:CreateModels( tab )

                if (!tab) then return end

                -- Create the clientside models here because Garry says we can't do it in the render hook
                for k, v in pairs( tab ) do
                        if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and
                                        string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then
                                
                                v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)
                                if (IsValid(v.modelEnt)) then
                                        v.modelEnt:SetPos(self:GetPos())
                                        v.modelEnt:SetAngles(self:GetAngles())
                                        v.modelEnt:SetParent(self)
                                        v.modelEnt:SetNoDraw(true)
                                        v.createdModel = v.model
                                else
                                        v.modelEnt = nil
                                end
                                
                        elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite)
                                and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then
                                
                                local name = v.sprite.."-"
                                local params = { ["$basetexture"] = v.sprite }
                                -- make sure we create a unique name based on the selected options
                                local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }
                                for i, j in pairs( tocheck ) do
                                        if (v[j]) then
                                                params["$"..j] = 1
                                                name = name.."1"
                                        else
                                                name = name.."0"
                                        end
                                end

                                v.createdSprite = v.sprite
                                v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)
                                
                        end
                end
                
        end
        
        local allbones
        local hasGarryFixedBoneScalingYet = false

        function SWEP:UpdateBonePositions(vm)
                
                if self.ViewModelBoneMods then
                        
                        if (!vm:GetBoneCount()) then return end
                        
                        -- !! WORKAROUND !! --
                        -- We need to check all model names :/
                        local loopthrough = self.ViewModelBoneMods
                        if (!hasGarryFixedBoneScalingYet) then
                                allbones = {}
                                for i=0, vm:GetBoneCount() do
                                        local bonename = vm:GetBoneName(i)
                                        if (self.ViewModelBoneMods[bonename]) then
                                                allbones[bonename] = self.ViewModelBoneMods[bonename]
                                        else
                                                allbones[bonename] = {
                                                        scale = Vector(1,1,1),
                                                        pos = Vector(0,0,0),
                                                        angle = Angle(0,0,0)
                                                }
                                        end
                                end
                                
                                loopthrough = allbones
                        end
                        -- !! ----------- !! --
                        
                        for k, v in pairs( loopthrough ) do
                                local bone = vm:LookupBone(k)
                                if (!bone) then continue end
                                
                                -- !! WORKAROUND !! --
                                local s = Vector(v.scale.x,v.scale.y,v.scale.z)
                                local p = Vector(v.pos.x,v.pos.y,v.pos.z)
                                local ms = Vector(1,1,1)
                                if (!hasGarryFixedBoneScalingYet) then
                                        local cur = vm:GetBoneParent(bone)
                                        while(cur >= 0) do
                                                local pscale = loopthrough[vm:GetBoneName(cur)].scale
                                                ms = ms * pscale
                                                cur = vm:GetBoneParent(cur)
                                        end
                                end
                                
                                s = s * ms
                                -- !! ----------- !! --
                                
                                if vm:GetManipulateBoneScale(bone) != s then
                                        vm:ManipulateBoneScale( bone, s )
                                end
                                if vm:GetManipulateBoneAngles(bone) != v.angle then
                                        vm:ManipulateBoneAngles( bone, v.angle )
                                end
                                if vm:GetManipulateBonePosition(bone) != p then
                                        vm:ManipulateBonePosition( bone, p )
                                end
                        end
                else
                        self:ResetBonePositions(vm)
                end
                
        end
        
        function SWEP:ResetBonePositions(vm)
                
                if (!vm:GetBoneCount()) then return end
                for i=0, vm:GetBoneCount() do
                        vm:ManipulateBoneScale( i, Vector(1, 1, 1) )
                        vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )
                        vm:ManipulateBonePosition( i, Vector(0, 0, 0) )
                end
                
        end

        /**************************
                Global utility code
        **************************/

        -- Fully copies the table, meaning all tables inside this table are copied too and so on (normal table.Copy copies only their reference).
        -- Does not copy entities of course, only copies their reference.
        -- WARNING: do not use on tables that contain themselves somewhere down the line or you'll get an infinite loop
        function table.FullCopy( tab )

                if (!tab) then return nil end
                
                local res = {}
                for k, v in pairs( tab ) do
                        if (type(v) == "table") then
                                res[k] = table.FullCopy(v) -- recursion ho!
                        elseif (type(v) == "Vector") then
                                res[k] = Vector(v.x, v.y, v.z)
                        elseif (type(v) == "Angle") then
                                res[k] = Angle(v.p, v.y, v.r)
                        else
                                res[k] = v
                        end
                end
                
                return res
                
        end
        
end