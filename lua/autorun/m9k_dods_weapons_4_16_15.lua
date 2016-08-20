local icol = Color( 255, 255, 255, 255 ) 
if CLIENT then
	killicon.Add( "bb_30cal", "vgui/hud/bb_30cal", icol  )
	killicon.Add( "bb_bar", "vgui/hud/bb_bar", icol  )
	killicon.Add( "bb_colt", "vgui/hud/bb_colt", icol  )
	killicon.Add( "bb_garand", "vgui/hud/bb_garand", icol  )
	killicon.Add( "bb_k98", "vgui/hud/bb_k98", icol  )
	killicon.Add( "bb_m1carbine", "vgui/hud/bb_m1carbine", icol  )
	killicon.Add( "bb_mauser", "vgui/hud/bb_mauser", icol  )
	killicon.Add( "bb_mp40", "vgui/hud/bb_mp40", icol  )
	killicon.Add( "bb_mp44", "vgui/hud/bb_mp44", icol  )
	killicon.Add( "bb_p38", "vgui/hud/bb_p38", icol  )
	killicon.Add( "bb_scoped_k98", "vgui/hud/bb_scoped_k98", icol  )
	killicon.Add( "bb_springfield", "vgui/hud/bb_springfield", icol  )
	killicon.Add( "bb_thompson", "vgui/hud/bb_thompson", icol  )	
	killicon.Add( "bb_thrownalliedfrag", "vgui/hud/bb_alliedfrag", icol  )
	killicon.Add( "bb_thrownaxisfrag", "vgui/hud/bb_axisfrag", icol  )
	killicon.Add( "bb_planted_dod_tnt", "vgui/hud/bb_dod_tnt", icol  )
	killicon.Add( "bb_dod_panzershreck_rocket", "vgui/hud/bb_panzershreck", icol  )
	killicon.Add( "bb_dod_bazooka_rocket", "vgui/hud/bb_bazooka", icol  )
	killicon.Add( "bb_mg42", "vgui/hud/bb_mg42", icol  )
	
	language.Add("dodTNT", "TNT")
end

game.AddAmmoType( {
	name = "dodTNT",
	dmgtype = DMG_BULLET
} )

--I'm pretty sure we don't need these anymore...
--Almost 99 percent sure that's I'm 100 percent sure...
	
-- if GetConVar("M9KDisableHolster") == nil then
	-- CreateConVar("M9KDisableHolster", "0", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Disable my totally worthless and broken holster system? Won't hurt my feelings any. 1 for true, 2 for false. A map change may be required.")
	-- print("Holster Disable con var created")
-- end

if GetConVar("DebugM9K") == nil then
	CreateConVar("DebugM9K", "0", { FCVAR_REPLICATED, FCVAR_ARCHIVE }, "Debugging for some m9k stuff, turning it on won't change much.")
end

if GetConVar("M9KWeaponStrip") == nil then
	CreateConVar("M9KWeaponStrip", "0", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Allow empty weapon stripping? 1 for true, 0 for false")
	print("Weapon Strip con var created")
end
	
if GetConVar("M9KDisablePenetration") == nil then
	CreateConVar("M9KDisablePenetration", "0", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Disable Penetration and Ricochets? 1 for true, 0 for false")
	print("Penetration/ricochet con var created")
end
	
if GetConVar("M9KDynamicRecoil") == nil then
	CreateConVar("M9KDynamicRecoil", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Use Aim-modifying recoil? 1 for true, 0 for false")
	print("Recoil con var created")
end
	
if GetConVar("M9KAmmoDetonation") == nil then
	CreateConVar("M9KAmmoDetonation", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Enable detonatable M9K Ammo crates? 1 for true, 0 for false.")
	print("Ammo crate detonation con var created")
end

if GetConVar("M9KDamageMultiplier") == nil then
	CreateConVar("M9KDamageMultiplier", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Multiplier for M9K bullet damage.")
	print("Damage Multiplier con var created")
end

if GetConVar("M9KDefaultClip") == nil then
	CreateConVar("M9KDefaultClip", "-1", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "How many clips will a weapon spawn with? Negative reverts to default values.")
	print("Default Clip con var created")
end
	
if GetConVar("M9KUniqueSlots") == nil then
	CreateConVar("M9KUniqueSlots", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Give M9K Weapons unique slots? 1 for true, 2 for false. A map change may be required.")
	print("Unique Slots con var created")
end
	
if !game.SinglePlayer() then

	if GetConVar("M9KClientGasDisable") == nil then
		CreateConVar("M9KClientGasDisable", "0", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Turn off gas effect for all clients? 1 for yes, 0 for no. ")
	end
	
	if SERVER then
	
		function ClientSideGasDisabler()
			timer.Create("ClientGasBroadcastTimer", 15, 0, 
				function() BroadcastLua("RunConsoleCommand(\"M9KGasEffect\", \"0\")") end )
		end
	
		if GetConVar("M9KClientGasDisable"):GetBool() then
			ClientSideGasDisabler()
		end

		function M9K_Svr_Gas_Change_Callback(cvar, previous, new)
			if tobool(new) == true then
				ClientSideGasDisabler()
				BroadcastLua("print(\"Gas effects disabled on this server!\")")
			elseif tobool(new) == false then
				BroadcastLua("print(\"Gas effects re-enabled on this server.\")")
				BroadcastLua("print(\"You may turn on M9KGasEffect if you wish.\")")
				if timer.Exists("ClientGasBroadcastTimer") then
					timer.Destroy("ClientGasBroadcastTimer")
				end
			end				
		end
		cvars.AddChangeCallback("M9KClientGasDisable", M9K_Svr_Gas_Change_Callback)
	
	end
	
	if CLIENT then
		if GetConVar("M9KGasEffect") == nil then
			CreateClientConVar("M9KGasEffect", "1", true, true)
			print("Client-side Gas Effect Con Var created")
		end		
	end

else
	if GetConVar("M9KGasEffect") == nil then
		CreateConVar("M9KGasEffect", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Use gas effect when shooting? 1 for true, 0 for false")
		print("Gas effect con var created")
	end
end

sound.Add({
	name = 			"Weapon_30cal.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/30cal_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Bar.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/bar_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Bazooka.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/rocket1.wav"	
})

sound.Add({
	name = 			"Weapon_Carbine.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/m1carbine_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Colt.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/colt_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_C96.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/c96_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Fg42Scoped.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/Fg42sniper_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Fg42.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/Fg42_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Garand.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/garand_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Greasegun.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/greasegun_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_K43.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/k43_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Kar.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/k98_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_KarScoped.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/k98scoped_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Luger.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/p38_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Mg42.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/mg42_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Mp40.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/mp40_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Mp44.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/mp44_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Panzerschreck.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/rocket1.wav"	
})

sound.Add({
	name = 			"Weapon_Springfield.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/spring_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Thompson.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/thompson_shoot.wav"	
})

sound.Add({
	name = 			"Weapon_Grenade.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/dodsounds/grenade_shoot.wav"	
})

m9knpw = {}
table.insert(m9knpw, "m9k_davy_crockett_explo")
table.insert(m9knpw, "m9k_gdcwa_matador_90mm")
table.insert(m9knpw, "m9k_gdcwa_rpg_heat")
table.insert(m9knpw, "m9k_improvised_explosive")
table.insert(m9knpw, "m9k_launched_davycrockett")
table.insert(m9knpw, "m9k_launched_ex41")
table.insert(m9knpw, "m9k_launched_m79")
table.insert(m9knpw, "m9k_m202_rocket")
table.insert(m9knpw, "m9k_mad_c4")
table.insert(m9knpw, "m9k_milkor_nade")
table.insert(m9knpw, "m9k_nervegasnade")
table.insert(m9knpw, "m9k_nitro_vapor")
table.insert(m9knpw, "m9k_oribital_cannon")
table.insert(m9knpw, "m9k_poison_parent")
table.insert(m9knpw, "m9k_proxy")
table.insert(m9knpw, "m9k_released_poison")
table.insert(m9knpw, "m9k_sent_nuke_radiation")
table.insert(m9knpw, "m9k_thrown_harpoon")
table.insert(m9knpw, "m9k_thrown_knife")
table.insert(m9knpw, "m9k_thrown_m61")
table.insert(m9knpw, "m9k_thrown_nitrox")
table.insert(m9knpw, "m9k_thrown_spec_knife")
table.insert(m9knpw, "m9k_thrown_sticky_grenade")
table.insert(m9knpw, "bb_dod_bazooka_rocket")
table.insert(m9knpw, "bb_dod_panzershreck_rocket")
table.insert(m9knpw, "bb_garand_riflenade")
table.insert(m9knpw, "bb_k98_riflenade")
table.insert(m9knpw, "bb_planted_dod_tnt")
table.insert(m9knpw, "bb_thrownalliedfrag")
table.insert(m9knpw, "bb_thrownaxisfrag")
table.insert(m9knpw, "bb_thrownsmoke_axis")
table.insert(m9knpw, "bb_thrownaxisfrag")
table.insert(m9knpw, "bb_planted_alt_c4")
table.insert(m9knpw, "bb_planted_css_c4")
table.insert(m9knpw, "bb_throwncssfrag")
table.insert(m9knpw, "bb_throwncsssmoke")
table.insert(m9knpw, "m9k_ammo_40mm")
table.insert(m9knpw, "m9k_ammo_40mm_single")
table.insert(m9knpw, "m9k_ammo_357")
table.insert(m9knpw, "m9k_ammo_ar2")
table.insert(m9knpw, "m9k_ammo_buckshot")
table.insert(m9knpw, "m9k_ammo_c4")
table.insert(m9knpw, "m9k_ammo_frags")
table.insert(m9knpw, "m9k_ammo_ieds")
table.insert(m9knpw, "m9k_ammo_nervegas")
table.insert(m9knpw, "m9k_ammo_nuke")
table.insert(m9knpw, "m9k_ammo_pistol")
table.insert(m9knpw, "m9k_ammo_proxmines")
table.insert(m9knpw, "m9k_ammo_rockets")
table.insert(m9knpw, "m9k_ammo_smg")
table.insert(m9knpw, "m9k_ammo_sniper_rounds")
table.insert(m9knpw, "m9k_ammo_stickynades")
table.insert(m9knpw, "m9k_ammo_winchester")

function PocketM9KWeapons(ply, wep)

	if not IsValid(wep) then return end
	class = wep:GetClass()
	m9knopocket = false
	
	for k, v in pairs(m9knpw) do
		if v == class then
			m9knopocket = true
			break
		end
	end
	
	if m9knopocket then
		return false
	end
	
	--goddammit i hate darkrp
	
end
hook.Add("canPocket", "PocketM9KWeapons", PocketM9KWeapons )

m9kdod_autorun_mounted = true