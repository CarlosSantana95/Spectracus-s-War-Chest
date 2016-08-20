local icol = Color( 255, 255, 255, 255 ) 
if CLIENT then
	killicon.Add( "bb_ak47", "vgui/hud/bb_ak47", icol  )
	killicon.Add( "bb_aug", "vgui/hud/bb_aug", icol  )
	killicon.Add( "bb_awp", "vgui/hud/bb_awp", icol  )
	killicon.Add( "bb_deagle", "vgui/hud/bb_deagle", icol  )
	killicon.Add( "bb_dualelites", "vgui/hud/bb_dualelites", icol  )
	killicon.Add( "bb_famas", "vgui/hud/bb_famas", icol  )
	killicon.Add( "bb_fiveseven", "vgui/hud/bb_fiveseven", icol  )
	killicon.Add( "bb_g3sg1", "vgui/hud/bb_g3sg1", icol  )
	killicon.Add( "bb_galil", "vgui/hud/bb_galil", icol  )
	killicon.Add( "bb_glock", "vgui/hud/bb_glock", icol  )
	killicon.Add( "bb_m3", "vgui/hud/bb_m3", icol  )
	killicon.Add( "bb_m4a1", "vgui/hud/bb_m4a1", icol  )
	killicon.Add( "bb_m249", "vgui/hud/bb_m249", icol  )
	killicon.Add( "bb_mac10", "vgui/hud/bb_mac10", icol  )
	killicon.Add( "bb_mp5", "vgui/hud/bb_mp5", icol  )
	killicon.Add( "bb_p90", "vgui/hud/bb_p90", icol  )
	killicon.Add( "bb_p228", "vgui/hud/bb_p228", icol  )
	killicon.Add( "bb_scout", "vgui/hud/bb_scout", icol  )
	killicon.Add( "bb_sg550", "vgui/hud/bb_sg550", icol  )
	killicon.Add( "bb_sg552", "vgui/hud/bb_sg552", icol  )
	killicon.Add( "bb_tmp", "vgui/hud/bb_tmp", icol  )
	killicon.Add( "bb_ump45", "vgui/hud/bb_ump45", icol  )
	killicon.Add( "bb_usp", "vgui/hud/bb_usp", icol  )
	killicon.Add( "bb_xm1014", "vgui/hud/bb_xm1014", icol  )
	killicon.Add( "bb_throwncssfrag", "vgui/hud/bb_cssfrag", icol  )
	killicon.Add( "bb_planted_css_c4", "vgui/hud/bb_css_c4", icol  )
	killicon.Add( "bb_css_knife", "vgui/hud/bb_css_knife", icol  )
	
	language.Add("cssc4", "C4")
	language.Add("m9k_ammo_explosion", "Poor Decision Making Skills")
	
end

game.AddAmmoType( {
	name = "cssc4",
	dmgtype = DMG_BULLET
} )



if SERVER then

	if GetConVar("M9KWeaponStrip") == nil then
		CreateConVar("M9KWeaponStrip", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY, FCVAR_ARCHIVE }, "Allow empty weapon stripping? 1 for true, 0 for false")
	end
	
	if GetConVar("m9ksmokeeffect") == nil then
		CreateConVar("m9ksmokeeffect", "1", { FCVAR_ARCHIVE }, "Enable gas for M9k-based weapons? 1 for true, 0 for false")
	end
	
	if GetConVar("M9KDisablePenetration") == nil then
		CreateConVar("M9KDisablePenetration", "0", { FCVAR_ARCHIVE }, "Disable Penetration and Ricochets? 1 for true, 0 for false")
	end

end

sound.Add({
	name = 			"Weapon_G3SG1.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/g3sg1/g3sg1-1.wav"
})

sound.Add({
	name = 			"Weapon_Glock.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/glock/glock18-1.wav"
})

sound.Add({
	name = 			"Weapon_Galil.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/aks/galil-1.wav"

})

sound.Add({
	name = 			"Weapon_aks74u.Boltpull",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/aks/boltpull.wav"

})

sound.Add({
	name = 			"Weapon_aks74u.Clipin",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/aks/clipin.wav"


})

sound.Add({
	name = 			"Weapon_aks74u.Clipout",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/aks/clipout.wav"


})

sound.Add({
	name = 			"Weapon_M249.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/m249/m249-1.wav"
})

sound.Add({
	name = 			"Weapon_XM1014.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/xm1014/xm1014-1.wav"
})

sound.Add({
	name = 			"Weapon_M3.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/m3/m3-1.wav"
})

sound.Add({
	name = 			"Weapon_MAC10.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/mac10/mac10-1.wav"
})

sound.Add({
	name = 			"Weapon_TMP.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/tmp/tmp-1.wav"
})

sound.Add({
	name = 			"Weapon_MP5Navy.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/mp5navy/mp5-1.wav"

})

sound.Add({
	name = 			"Weapon_P90.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3P90/p90-1.wav"

})

sound.Add({
	name = 			"Weapon_P90.magout",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3P90/p90_clipout.wav"

})

sound.Add({
	name = 			"Weapon_P90.unlock",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3P90/p90_cliprelease.wav"

})

sound.Add({
	name = 			"Weapon_P90.magin",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3P90/p90_insertmag.wav"

})

sound.Add({
	name = 			"Weapon_P90.boltpull",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3P90/p90_boltpull.wav"

})

sound.Add({
	name = 			"Weapon_P90.magtap",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3P90/p90_clipin.wav"

})

sound.Add({
	name = 			"Weapon_P90.draw",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3P90/p90_draw.wav"

})

sound.Add({
	name = 			"Weapon_Scout.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/scout/scout_fire-1.wav"
})

sound.Add({
	name = 			"Weapon_SG550.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/sg550/sg550-1.wav"
})

sound.Add({
	name = 			"Weapon_SG552.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/sg552/sg552-1.wav"
})

sound.Add({
	name = 			"Weapon_FiveSeven.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/fiveseven/fiveseven-1.wav"
})

sound.Add({
	name = 			"Weapon_UMP45.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/ump45/ump45-1.wav"
})

sound.Add({
	name = 			"Weapon_USP.2",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/usp/usp1.wav"
})

sound.Add({
	name = 			"Weapon_USP.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/usp/usp_unsil-1.wav"
})

sound.Add({
	name = 			"Weapon_M4A1.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3m4a1/fire1.wav"
})

sound.Add({
	name = 			"Weapon_M4A1.2",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3m4a1/fire2.wav"

})

sound.Add({
	name = 			"Weapon_M4A1.Clipin",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3m4a1/clipin.wav"

})

sound.Add({
	name = 			"Weapon_M4A1.Clipout",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3m4a1/clipout.wav"

})

sound.Add({
	name = 			"Weapon_M4A1.Boltpull",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3m4a1/boltpull.wav"

})

sound.Add({
	name = 			"Weapon_ELITE.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/elite/elite-1.wav"
})

sound.Add({
	name = 			"Weapon_FAMAS.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/famas/famas-1.wav"
})

sound.Add({
	name = 			"Weapon_AUG.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/aug/aug-1.wav"
})

sound.Add({
	name = 			"Weapon_AWP.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/l96/awp1.wav"
})

sound.Add({
	name = 			"Weapon_AWP.Boltback",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/l96/awp_boltback.wav"
})

sound.Add({
	name = 			"Weapon_AWP.Boltpush",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/l96/awp_boltpush.wav"

})

sound.Add({
	name = 			"Weapon_AWP.Boltlock",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/l96/awp_boltlock.wav"

})

sound.Add({
	name = 			"Weapon_AWP.Clipin",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/l96/awp_clipin.wav"

})

sound.Add({
	name = 			"Weapon_AWP.Clipout",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/l96/awp_clipout.wav"

})

sound.Add({
	name = 			"Weapon_AWP.Cliptap",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/l96/awp_cliptap.wav"

})

sound.Add({
	name = 			"Weapon_AWP.Deploy",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/l96/awp_deploy.wav"

})

sound.Add({
	name = 			"Weapon_DEagle.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/DEagle/deagle-1.wav"
})

sound.Add({
	name = 			"Weapon_AK47.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/ak74/ak47-1.wav"
})

sound.Add({
	name = 			"Weapon_AK47.Clipin",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/ak/magin.wav"

})

sound.Add({
	name = 			"Weapon_AK47.Clipout",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/ak/magout.wav"

})

sound.Add({
	name = 			"Weapon_AK47.Boltpull",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/ak/boltpull.wav"

})

sound.Add({
	name = 			"Weapon_AK47.Boltback",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/ak/boltback.wav"

})

sound.Add({
	name = 			"Weapon_AK47.Boltforward",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/ak/boltforward.wav"

})

sound.Add({
	name = 			"Weapon_M16.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3m16a3/1.wav"

})


sound.Add({
	name = 			"Weapon_M16.Clipin",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3m16a3/clipin.wav"

})


sound.Add({
	name = 			"Weapon_M16.Clipout",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3m16a3/clipout.wav"

})

sound.Add({
	name = 			"Weapon_M16.Boltrelease",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/bf3m16a3/boltcatcher.wav"

})


//grenades
sound.Add({
	name = 			"2efault.PullPin_grenade",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/grenades/pinpull.wav"
})

sound.Add({
	name = 			"2eapons/jingle.wav",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/grenades/jingle.wav"
})

//C4
sound.Add({
	name = 			"2eapon_c4.switchon",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2pr0d_c4/c4_switchon.wav"
})

sound.Add({
	name = 			"2eapon_c4.click",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2pr0d_c4/c4_click.wav"
})

sound.Add({
	name = 			"c4.click",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2pr0d_c4/c4_click.wav"
})

//M249
sound.Add({
	name = 			"Alt_Weapon_M249.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2m249/m249-1.wav"
})

sound.Add({
	name = 			"2eapon_M249.Boxout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m249/m249_boxout.wav"
})

sound.Add({
	name = 			"2eapon_M249.Coverup",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m249/m249_coverup.wav"
})

sound.Add({
	name = 			"2eapon_M249.Boxin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m249/m249_boxin.wav"
})

sound.Add({
	name = 			"2eapon_M249.Chain",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m249/m249_chain.wav"
})

sound.Add({
	name = 			"2eapon_M249.Coverdown",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m249/m249_coverdown.wav"
})

sound.Add({
	name = 			"2eapon_M249.Draw",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m249/m249_draw.wav"
})

//DEagle
sound.Add({
	name = 			"Alt_Weapon_DEagle.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2deagle/deagle-1.wav"
})

sound.Add({
	name = 			"2eapon_Deagle.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2deagle/clipout.wav"
})

sound.Add({
	name = 			"2eapon_Deagle.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2deagle/clipin.wav"
})

sound.Add({
	name = 			"2eapon_Deagle.Slideforward",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2deagle/1911slideforward.wav"
})

sound.Add({
	name = 			"2eapon_Deagle.Slideback",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2deagle/1911slideback.wav"
})

//Elites
sound.Add({
	name = 			"Alt_Weapon_ELITE.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2elite/elite-1.wav"
})

sound.Add({
	name = 			"2eapon_Elite.elite_reloadstart",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2elite/elite_reloadstart.wav"
})

sound.Add({
	name = 			"2eapon_Elite.elite_leftclipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2elite/elite_leftclipin.wav"
})

sound.Add({
	name = 			"2eapon_Elite.elite_rightclipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2elite/elite_rightclipin.wav"
})

sound.Add({
	name = 			"2eapon_Elite.sliderelease",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2elite/sliderelease.wav"
})

sound.Add({
	name = 			"2eapon_Elite.elite_deploy",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2elite/elite_deploy.wav"
})

//FiveseveN
sound.Add({
	name = 			"Alt_Weapon_FiveSeven.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2fiveseven/fiveseven-1.wav"
})

sound.Add({
	name = 			"2eapon_57.clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2fiveseven/clipout.wav"
})

sound.Add({
	name = 			"2eapon_57.clipin1",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2fiveseven/clipin1.wav"
})

sound.Add({
	name = 			"2eapon_57.clipin2",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2fiveseven/clipin2.wav"
})

sound.Add({
	name = 			"2eapon_57.SlideForward",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2fiveseven/slideforward.wav"
})

sound.Add({
	name = 			"2eapon_57.SlideBack",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2fiveseven/slideback.wav"
})

//Glock
sound.Add({
	name = 			"Alt_Weapon_Glock.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2glock/glock18-1.wav"
})

sound.Add({
	name = 			"2lideback",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2glock/slideback.wav"
})

sound.Add({
	name = 			"2liderelease",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2glock/sliderelease.wav"
})

sound.Add({
	name = 			"2agout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2glock/magout.wav"
})

sound.Add({
	name = 			"2agin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2glock/magin.wav"
})

//P228
sound.Add({
	name = 			"Alt_Weapon_P228.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2p228/p228-1.wav"
})

sound.Add({
	name = 			"2eapon_p228.clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2p228/clipout.wav"
})

sound.Add({
	name = 			"2eapon_p228.clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2p228/clipin.wav"
})

sound.Add({
	name = 			"2eapon_p228.sliderelease",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2p228/sliderelease.wav"
})

sound.Add({
	name = 			"2eapon_p228.slideback",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2p228/slideback.wav"
})

sound.Add({
	name = 			"2eapon_p228.slideforward",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2p228/slideforward.wav"
})

//AK47
sound.Add({
	name = 			"Alt_Weapon_AK47.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2ak47/ak47-1.wav"
})

sound.Add({
	name = 			"2eapon_AK47.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ak47/clipout.wav"
})

sound.Add({
	name = 			"2eapon_AK47.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ak47/clipin.wav"
})

sound.Add({
	name = 			"2eapon_AK47.BoltPull",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ak47/boltpull.wav"
})

sound.Add({
	name = 			"2eapon_AK47.BoltBack",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ak47/boltback.wav"
})

//AUG
sound.Add({
	name = 			"Alt_Weapon_AUG.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2aug/aug-1.wav"
})

sound.Add({
	name = 			"2eapon_AUG.Forearm",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2aug/aug_forearm.wav"
})

sound.Add({
	name = 			"2eapon_AUG.Boltpull",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2aug/aug_boltpull.wav"
})

sound.Add({
	name = 			"2eapon_AUG.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2aug/aug_clipout.wav"
})

sound.Add({
	name = 			"2eapon_AUG.clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2aug/aug_clipin.wav"
})

sound.Add({
	name = 			"2eapon_AUG.Boltslap",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2aug/aug_boltslap.wav"
})

//FAMAS
sound.Add({
	name = 			"Alt_Weapon_FAMAS.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2famas/famas-1.wav"
})

sound.Add({
	name = 			"2eapon_FAMAS.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2famas/famas_clipout.wav"
})

sound.Add({
	name = 			"2eapon_FAMAS.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2famas/famas_clipin.wav"
})

sound.Add({
	name = 			"2eapon_FAMAS.Forearm",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2famas/famas_forearm.wav"
})

//Galil
sound.Add({
	name = 			"Alt_Weapon_Galil.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2galil/galil-1.wav"
})

sound.Add({
	name = 			"2eapon_Galil.clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2galil/magout.wav"
})

sound.Add({
	name = 			"2eapon_Galil.clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2galil/magin.wav"
})

sound.Add({
	name = 			"2eapon_Galil.cliptap",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2galil/tap.wav"
})

sound.Add({
	name = 			"2eapon_Galil.boltpull",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2galil/boltpull.wav"
})

sound.Add({
	name = 			"2eapon_Galil.boltrelease",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2galil/boltrel.wav"
})

//M4
sound.Add({
	name = 			"Alt_Weapon_M4A1.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 		{"weapons/2m4a1/m4a1_unsil-1.wav",
					"weapons/2m4a1/m4a1_unsil-2.wav"}
})

sound.Add({
	name = 			"Alt_Weapon_M4A1.2",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			{"weapons/2m4a1/m4a1-1.wav",
						"weapons/2m4a1/m4a1-2.wav"}
})

sound.Add({
	name = 			"2eapon_M4A1.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m4a1/m4a1_clipout.wav"
})

sound.Add({
	name = 			"2eapon_M4A1.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m4a1/newclipin.wav"
})

sound.Add({
	name = 			"2eapon_M4A1.Boltpull",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m4a1/m4a1_boltpull.wav"
})

sound.Add({
	name = 			"2eapon_M4A1.Deploy",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m4a1/safety.wav"
})

sound.Add({
	name = 			"2eapon_M4A1.Silencer_On",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m4a1/m4a1_silencer_on.wav"
})

sound.Add({
	name = 			"2eapon_M4A1.Silencer_Off",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m4a1/m4a1_silencer_off.wav"
})

//Sig 552
sound.Add({
	name = 			"Alt_Weapon_SG552.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2sg552/sg552-1.wav"
})

sound.Add({
	name = 			"2eapon_SG552.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2sg552/sg552_clipout.wav"
})

sound.Add({
	name = 			"2eapon_SG552.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2sg552/sg552_clipin.wav"
})

sound.Add({
	name = 			"2eapon_SG552.Boltpull",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2sg552/sg552_boltpull.wav"
})

sound.Add({
	name = 			"2eapon_SG552.Stockfold",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2sg552/stockfold.wav"
})

//M3 Super 90
sound.Add({
	name = 			"Alt_Weapon_M3.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2m3/m3-1.wav"
})
sound.Add({
	name = 			"2eapon_M3.Pump",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m3/m3_pump.wav"
})

sound.Add({
	name = 			"2eapon_M3.Insertshell",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m3/m3_insertshell.wav"
})

sound.Add({
	name = 			"2eapon_M3.Draw",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2m3/cloth.wav"
})

//XM1014
sound.Add({
	name = 			"Alt_Weapon_XM1014.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			{"weapons/2xm1014/xm1014-1.wav",
						"weapons/2xm1014/xm1014-2.wav"}
})

sound.Add({
	name = 			"2eapon_XM1014.Insertshell",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2xm1014/xm_insert.wav"
})

sound.Add({
	name = 			"2eapon_XM1014.Deploy",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2xm1014/xm_deploy.wav"
})

//MAC 10
sound.Add({
	name = 			"Alt_Weapon_MAC10.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2mac10/mac10-1.wav"
})

sound.Add({
	name = 			"2eapon_MAC10.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2mac10/mac10_clipout.wav"
})

sound.Add({
	name = 			"2eapon_MAC10.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2mac10/mac10_clipin.wav"
})

//MP5
sound.Add({
	name = 			"Alt_Weapon_MP5Navy.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2mp5navy/mp5-1.wav"
})

sound.Add({
	name = 			"2eapon_MP5Navy.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2mp5navy/mp5_clipout.wav"
})

sound.Add({
	name = 			"2eapon_MP5Navy.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2mp5navy/mp5_clipin.wav"
})

sound.Add({
	name = 			"2eapon_MP5Navy.Slideback",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2mp5navy/mp5_slideback.wav"
})

//p90
sound.Add({
	name = 			"Alt_Weapon_P90.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2p90/p90-1.wav"
})

sound.Add({
	name = 			"2eapon_P90.unlock",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2p90/p90_unlock.wav"
})

sound.Add({
	name = 			"2eapon_P90.magout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2p90/p90_magout.wav"
})

sound.Add({
	name = 			"2eapon_P90.magin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2p90/p90_magin.wav"
})

sound.Add({
	name = 			"2eapon_P90.cock",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2p90/p90_cock.wav"
})

//TMP
sound.Add({
	name = 			"Alt_Weapon_TMP.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2tmp/tmp-1.wav"
})

sound.Add({
	name = 			"2eapon_TMP.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2tmp/tmp_clipout.wav"
})

sound.Add({
	name = 			"2eapon_TMP.clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2tmp/tmp_clipin.wav"
})

sound.Add({
	name = 			"2eapon_TMP.boltpull",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2tmp/tmp_boltpull.wav"
})

sound.Add({
	name = 			"2eapon_TMP.Deploy",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2tmp/cloth.wav"
})

//UMP45
sound.Add({
	name = 			"Alt_Weapon_UMP45.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2ump45/ump45-1.wav"
})

sound.Add({
	name = 			"2eapon_UMP45.Clipout1",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ump45/ump45_clipout1.wav"
})

sound.Add({
	name = 			"2eapon_UMP45.Clipout2",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ump45/ump45_clipout2.wav"
})

sound.Add({
	name = 			"2eapon_UMP45.Clipin1",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ump45/ump45_clipin1.wav"
})

sound.Add({
	name = 			"2eapon_UMP45.Clipin2",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ump45/ump45_clipin2.wav"
})

sound.Add({
	name = 			"2eapon_UMP45.Boltslap",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ump45/ump45_boltslap.wav"
})

sound.Add({
	name = 			"2eapon_UMP45.Cloth",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2ump45/ump45_cloth.wav"
})

//AWP
sound.Add({
	name = 			"Alt_Weapon_AWP.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2awp/awp1.wav"
})

sound.Add({
	name = 			"2eapon_AWP.Bolt",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2awp/awp_bolt.wav"
})

sound.Add({
	name = 			"2eapon_AWP.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2awp/awp_clipout.wav"
})

sound.Add({
	name = 			"2eapon_AWP.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2awp/awp_clipin.wav"
})

//G3SG1
sound.Add({
	name = 			"Alt_Weapon_G3SG1.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2g3sg1/g3sg1-1.wav"
})

sound.Add({
	name = 			"2eapon_PSG_1.Boltpull1",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2g3sg1/psg_1_boltpull1.wav"
})

sound.Add({
	name = 			"2eapon_PSG_1.Boltpull2",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2g3sg1/psg_1_boltpull2.wav"
})

sound.Add({
	name = 			"2eapon_PSG_1.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2g3sg1/psg_1_clipout.wav"
})

sound.Add({
	name = 			"2eapon_PSG_1.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2g3sg1/psg_1_clipin.wav"
})

sound.Add({
	name = 			"2eapon_PSG_1.Boltrelease",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2g3sg1/psg_1_boltrelease.wav"
})

sound.Add({
	name = 			"2eapon_PSG_1.Draw",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2g3sg1/psg_1_draw.wav"
})

//Scout
sound.Add({
	name = 			"Alt_Weapon_Scout.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2scout/scout_fire-1.wav"
})

sound.Add({
	name = 			"2eapon_scout.Boltback",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2scout/m24_boltback.wav"
})

sound.Add({
	name = 			"2eapon_scout.boltforward",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2scout/m24_boltforward.wav"
})

sound.Add({
	name = 			"2eapon_scout.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2scout/m24_magout.wav"
})

sound.Add({
	name = 			"2eapon_scout.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2scout/m24_magin.wav"
})

//SG550
sound.Add({
	name = 			"Alt_Weapon_SG550.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2sg550/sg550-1.wav"
})

sound.Add({
	name = 			"2eapon_SG550.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2sg550/sg552_clipout.wav"
})

sound.Add({
	name = 			"2eapon_SG550.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2sg550/sg552_clipin.wav"
})

sound.Add({
	name = 			"2eapon_SG550.Boltpull",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2sg550/sg552_boltpull.wav"
})

//USP
sound.Add({
	name = 			"Alt_Weapon_USP.2",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2usp/usp1.wav"
})

sound.Add({
	name = 			"Alt_Weapon_USP.1",
	channel = 		CHAN_USER_BASE+10,
	volume = 		1.0,
	sound = 			"weapons/2usp/usp_unsil-1.wav"
})

sound.Add({
	name = 			"2eapon_uspc.Clipout",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2usp/magout.wav"
})

sound.Add({
	name = 			"2eapon_uspc.magpouch",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2usp/magpouch.wav"
})

sound.Add({
	name = 			"2eapon_uspc.Clipin",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2usp/uspc_clipin.wav"
})

sound.Add({
	name = 			"2eapon_uspc.sliderelease",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2usp/sliderelease.wav"
})

sound.Add({
	name = 			"2eapon_uspc.Safety",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2usp/safety.wav"
})

sound.Add({
	name = 			"2eapon_USP.AttachSilencer",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2usp/usp_silencer_on.wav"
})

sound.Add({
	name = 			"2eapon_USP.DetachSilencer",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/2usp/usp_silencer_off.wav"
})


-- ak47
-- http://css.gamebanana.com/skins/54505

-- sg550
-- http://css.gamebanana.com/skins/19431

-- mac 10
-- http://css.gamebanana.com/skins/31715

-- p90
-- http://css.gamebanana.com/skins/23732

-- AUG
-- http://css.gamebanana.com/skins/71190

-- awp
-- http://css.gamebanana.com/skins/1667

-- Dual elites
-- http://css.gamebanana.com/skins/11355

-- desert eagle
-- http://css.gamebanana.com/skins/36711

-- famas
-- http://css.gamebanana.com/skins/46179

-- fiveseven
-- http://css.gamebanana.com/skins/46853

-- Glock 18
-- http://css.gamebanana.com/skins/54536

-- M249
-- http://css.gamebanana.com/skins/54536

-- M3 Super 90
-- http://css.gamebanana.com/skins/108640

-- mp5
-- http://css.gamebanana.com/skins/116746

-- scout
-- http://css.gamebanana.com/skins/116746

-- SG552
-- http://css.gamebanana.com/skins/31958

-- p228
-- http://css.gamebanana.com/skins/33694

-- tmp
-- http://css.gamebanana.com/skins/12912

-- xm1014
-- http://css.gamebanana.com/skins/22365

-- c4
-- http://css.gamebanana.com/skins/24548

-- m4a1
-- http://css.gamebanana.com/skins/86056

-- g3sg1
-- http://css.gamebanana.com/skins/20265

-- Galil
-- http://css.gamebanana.com/skins/39422

-- ump45
-- http://css.gamebanana.com/skins/115036

-- usp
-- http://css.gamebanana.com/skins/15019

-- knife
-- http://css.gamebanana.com/skins/34915

-- gloves
-- http://css.gamebanana.com/skins/27915

-- shells
-- http://css.gamebanana.com/skins/28796