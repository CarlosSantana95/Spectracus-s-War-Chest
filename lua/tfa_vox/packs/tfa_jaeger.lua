--Written by TFA's Exporter
--Place in lua\tfa_vox\packs\
TFAVOX_Models = TFAVOX_Models or {}
TFAVOX_Models["models/player/mw3rangers/us_ranger_01.mdl"] = {
	['taunt'] = {
		[1610] = {
			['sound'] = 'PlayerTauntAgree.Jaeger'
		},
		[1612] = {
			['sound'] = 'PlayerTauntBow.Jaeger'
		},
		[55] = {
			['sound'] = 'PlayerTauntHalt.Jaeger'
		},
		[1618] = {
			['sound'] = 'PlayerTauntLaugh.Jaeger'
		},
		[53] = {
			['sound'] = 'PlayerTauntForward.Jaeger'
		},
		[1617] = {
			['sound'] = 'PlayerTauntMuscle.Jaeger'
		},
		[1619] = {
		},
		[54] = {
			['sound'] = 'PlayerTauntGroup.Jaeger'
		},
		[1616] = {
			['sound'] = 'PlayerTauntPersistence.Jaeger'
		},
		[1620] = {
			['sound'] = 'PlayerTauntCheer.Jaeger'
		},
		[1615] = {
			['sound'] = 'PlayerTauntWave.Jaeger'
		},
		[1614] = {
			['sound'] = 'PlayerTauntSalute.Jaeger'
		},
		[1613] = {
			['sound'] = 'PlayerTauntDisAgree.Jaeger'
		},
		[1611] = {
			['sound'] = 'PlayerTauntBecon.Jaeger'
		}
	},
	['murder'] = {
		['turret'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		},
		['zombie'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		},
		['generic'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		},
		['headcrab'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		},
		['ally'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		},
		['manhack'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		},
		['cp'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		},
		['combine'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		},
		['scanner'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		},
		['sniper'] = {
			['sound'] = 'PlayerMurder.Jaeger',
			['delay'] = 3
		}
	},
	['main'] = {
		['spawn'] = {
			['sound'] = 'PlayerSpawn.Jaeger'
		},
		['fall'] = {
			['sound'] = 'PlayerFall.Jaeger'
		},
		['heal'] = {
			['sound'] = 'PlayerHealed.Jaeger'
		},
		['pickup'] = {
			['sound'] = 'PlayerPickUp.Jaeger'
		},
		['crithealth'] = {
			['sound'] = 'PlayerLowHP.Jaeger',
			['delay'] = {
				[1] = 3,
				[2] = 4
			}
		},
		['healmax'] = {
			['sound'] = 'PlayerHealedMax.Jaeger'
		},
		['reload'] = {
			['sound'] = 'PlayerReload.Jaeger',
			['delay'] = {
				[1] = 3,
				[2] = 6
			}
		},
		['death'] = {
			['sound'] = 'PlayerDeath.Jaeger'
		},
		['step'] = {
			['sound'] = 'PlayerWalk.Jaeger'
		},
		['crithit'] = {
			['sound'] = 'PlayerCritHP.Jaeger',
			['delay'] = {
				[1] = 3.5,
				[2] = 5
			}
		},
		['noammo'] = {
			['sound'] = 'PlayerNoAmmo.Jaeger'
		},
		['jump'] = {
			['sound'] = 'PlayerJump.Jaeger',
			['delay'] = 1
		}
	},
	['damage'] = {
		[0] = {
			['sound'] = 'PlayerDamage.Jaeger',
			['delay'] = {
				[1] = 1,
				[2] = 2
			}
		},
		[2] = {
			['sound'] = 'PlayerDamageChest.Jaeger',
			['delay'] = 1
		},
		[5] = {
			['sound'] = 'PlayerDamage.Jaeger',
			['delay'] = {
				[1] = 1,
				[2] = 2
			}
		},
		[4] = {
			['sound'] = 'PlayerDamageLeftArm.Jaeger',
			['delay'] = 1
		},
		[10] = {
			['sound'] = 'PlayerDamage.Jaeger',
			['delay'] = {
				[1] = 1,
				[2] = 2
			}
		},
		[3] = {
			['sound'] = 'PlayerDamageChest.Jaeger',
			['delay'] = 1
		},
		[7] = {
			['sound'] = 'PlayerDamage.Jaeger',
			['delay'] = 1
		},
		[1] = {
			['sound'] = 'PlayerDamageHead.Jaeger',
			['delay'] = 1
		},
		[6] = {
			['sound'] = 'PlayerDamageLeftLeg.Jaeger',
			['delay'] = 1
		}
	},
	['spot'] = {
		['turret'] = {
			['sound'] = 'PlayerEnemyOther.Jaeger'
		},
		['zombie'] = {
			['sound'] = 'PlayerEnemyOther.Jaeger'
		},
		['generic'] = {
			['sound'] = 'PlayerEnemyOther.Jaeger'
		},
		['headcrab'] = {
			['sound'] = 'PlayerEnemyOther.Jaeger'
		},
		['ally'] = {
			['sound'] = 'PlayerAlly.Jaeger',
			['delay'] = 2
		},
		['manhack'] = {
			['sound'] = 'PlayerEnemyOther.Jaeger'
		},
		['cp'] = {
			['sound'] = 'PlayerEnemyOther.Jaeger'
		},
		['combine'] = {
			['sound'] = 'PlayerEnemyOther.Jaeger'
		},
		['scanner'] = {
			['sound'] = 'PlayerEnemyOther.Jaeger'
		},
		['sniper'] = {
			['sound'] = 'PlayerEnemyOther.Jaeger'
		}
	},
	['callouts'] = {
		['motivate'] = {
			['name'] = "Motivate",
			['sound'] = 'PlayerMotivateFriend.Jaeger'
		},
		['agree'] = {
			['name'] = "Agree",
			['sound'] = 'PlayerTauntAgree.Jaeger'
		},
		['disagree'] = {
			['name'] = "Disagree",
			['sound'] = 'PlayerTauntDisagree.Jaeger'
		},
		['hello'] = {
			['name'] = "Hello",
			['sound'] = 'PlayerTauntWave.Jaeger'
		},
		['thanks'] = {
			['name'] = "Thanks",
			['sound'] = 'PlayerThanks.Jaeger'
		},	
		['gratfriend'] = {
			['name'] = "Congratulate",
			['sound'] = 'PlayerCongratulate.Jaeger'
		},
		['help'] = {
			['name'] = "Help!",
			['sound'] = 'PlayerHelp.Jaeger'
		},
		['reqheal'] = {
			['name'] = "Request Healing",
			['sound'] = 'PlayerReqHealing.Jaeger'
		}
	}
		--[[
		['gratteam'] = {
			['name'] = "Congratulate Team",
			['sound'] = 'PlayerCongratulateTeam.Jaeger'
		},
		['taunt'] = {
			['name'] = "Speech",
			['sound'] = 'PlayerTaunt.Jaeger'
		},	
		['reqarmor'] = {
			['name'] = "Request Armor",
			['sound'] = 'PlayerReqArmor.Jaeger'
		},
		['defense'] = {
			['name'] = "Command Defense",
			['sound'] = 'PlayerTauntGroup.Jaeger'
		},
		['comattack'] = {
			['name'] = "Command Attack",
			['sound'] = 'PlayerCommandAttack.Jaeger'
		},
		['attack'] = {
			['name'] = "Order Attack",
			['sound'] = 'PlayerAttack.Jaeger'
		},
		['motivateteam'] = {
			['name'] = "Motivate (Team)",
			['sound'] = 'PlayerMotivateTeam.Jaeger'
		},
		['afk'] = {
			['name'] = "AFK",
			['sound'] = 'PlayerAway.Jaeger'
		},
		['countdown'] = {
			['name'] = "Countdown",
			['sound'] = 'PlayerCountdown.Jaeger'
		}
		]]--
}

--EnemyDetect-- 
sound.Add( {
	name = "PlayerEnemyCombine.Jaeger", -- Remember about ID!
	channel = CHAN_VOICE, -- Don't touch it!
	volume = 1.0, -- Don't touch it!
	level = SNDLVL_TALKING, -- Don't touch it!
	pitch = PITCH_NORM, -- Don't touch it!
	sound = { "sound\miscsounds\comments\us1spot.wav", "sound\miscsounds\comments\us2spot.wav", "sound\miscsounds\comments\us3spot.wav", "sound\miscsounds\comments\us4spot.wav", "sound\miscsounds\comments\us5spot.wav", "sound\miscsounds\comments\us6spot.wav", "sound\miscsounds\comments\us7spot.wav", "sound\miscsounds\comments\us8spot.wav" }
} ) ------------------/\---------------------------/\-----------------------/\--- Change those sounds with your own ones. You can make more than 3. :)

sound.Add( {
	name = "PlayerEnemyCP.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\us1genspot.wav", "sound\miscsounds\comments\us2genspot.wav", "sound\miscsounds\comments\us3genspot.wav", "sound\miscsounds\comments\us4genspot.wav", "sound\miscsounds\comments\us5genspot.wav", "sound\miscsounds\comments\us6genspot.wav", "sound\miscsounds\comments\us7genspot.wav", "sound\miscsounds\comments\us8genspot.wav" }
} )

sound.Add( {
	name = "PlayerEnemyZombie.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\us1genspot.wav", "sound\miscsounds\comments\us2genspot.wav", "sound\miscsounds\comments\us3genspot.wav", "sound\miscsounds\comments\us4genspot.wav", "sound\miscsounds\comments\us5genspot.wav", "sound\miscsounds\comments\us6genspot.wav", "sound\miscsounds\comments\us7genspot.wav", "sound\miscsounds\comments\us8genspot.wav" }
} )

sound.Add( {
	name = "PlayerEnemyHeadcrab.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\us1genspot.wav", "sound\miscsounds\comments\us2genspot.wav", "sound\miscsounds\comments\us3genspot.wav", "sound\miscsounds\comments\us4genspot.wav", "sound\miscsounds\comments\us5genspot.wav", "sound\miscsounds\comments\us6genspot.wav", "sound\miscsounds\comments\us7genspot.wav", "sound\miscsounds\comments\us8genspot.wav" }
} )

sound.Add( {
	name = "PlayerEnemyManhack.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\us1genspot.wav", "sound\miscsounds\comments\us2genspot.wav", "sound\miscsounds\comments\us3genspot.wav", "sound\miscsounds\comments\us4genspot.wav", "sound\miscsounds\comments\us5genspot.wav", "sound\miscsounds\comments\us6genspot.wav", "sound\miscsounds\comments\us7genspot.wav", "sound\miscsounds\comments\us8genspot.wav" }
} )

sound.Add( {
	name = "PlayerEnemyScanner.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\us1genspot.wav", "sound\miscsounds\comments\us2genspot.wav", "sound\miscsounds\comments\us3genspot.wav", "sound\miscsounds\comments\us4genspot.wav", "sound\miscsounds\comments\us5genspot.wav", "sound\miscsounds\comments\us6genspot.wav", "sound\miscsounds\comments\us7genspot.wav", "sound\miscsounds\comments\us8genspot.wav" }
} )

sound.Add( {
	name = "PlayerEnemySniper.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\us1genspot.wav", "sound\miscsounds\comments\us2genspot.wav", "sound\miscsounds\comments\us3genspot.wav", "sound\miscsounds\comments\us4genspot.wav", "sound\miscsounds\comments\us5genspot.wav", "sound\miscsounds\comments\us6genspot.wav", "sound\miscsounds\comments\us7genspot.wav", "sound\miscsounds\comments\us8genspot.wav" }
} )

sound.Add( {
	name = "PlayerEnemyTurret.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\us1genspot.wav", "sound\miscsounds\comments\us2genspot.wav", "sound\miscsounds\comments\us3genspot.wav", "sound\miscsounds\comments\us4genspot.wav", "sound\miscsounds\comments\us5genspot.wav", "sound\miscsounds\comments\us6genspot.wav", "sound\miscsounds\comments\us7genspot.wav", "sound\miscsounds\comments\us8genspot.wav" }
} )

sound.Add( {
	name = "PlayerAlly.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerEnemyOther.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\us1genspot.wav", "sound\miscsounds\comments\us2genspot.wav", "sound\miscsounds\comments\us3genspot.wav", "sound\miscsounds\comments\us4genspot.wav", "sound\miscsounds\comments\us5genspot.wav", "sound\miscsounds\comments\us6genspot.wav", "sound\miscsounds\comments\us7genspot.wav", "sound\miscsounds\comments\us8genspot.wav" }
} )
--end--
--CustomTaunts--
sound.Add( {
	name = "PlayerTauntAgree.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { ""}
} )

sound.Add( {
	name = "PlayerTauntDisAgree.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

-- sound.Add( {
	-- name = "PlayerTauntBecon.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav", "vo/dva/path2.wav", "vo/dva/path3.wav" }
-- } )

-- sound.Add( {
	-- name = "PlayerTauntBow.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav", "vo/dva/path2.wav", "vo/dva/path3.wav" }
-- } )

-- sound.Add( {
	-- name = "PlayerTauntForward.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav", "vo/dva/path2.wav", "vo/dva/path3.wav" }
-- } )

sound.Add( {
	name = "PlayerTauntGroup.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { ""}
} )

-- sound.Add( {
	-- name = "PlayerTauntHalt.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav", "vo/dva/path2.wav", "vo/dva/path3.wav" }
-- } )

sound.Add( {
	name = "PlayerTauntWave.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerThanks.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\thankyou2.wav", "sound\miscsounds\comments\thankyou3.wav", "sound\miscsounds\comments\thankyou4.wav", "sound\miscsounds\comments\thankyou8.wav", "sound\miscsounds\comments\thankyou9.wav", "sound\miscsounds\comments\thankyou10.wav", "sound\miscsounds\comments\thankyou11.wav", "sound\miscsounds\comments\thankyou12.wav", "sound\miscsounds\comments\thankyou14.wav", "sound\miscsounds\comments\thankyou15.wav", "sound\miscsounds\comments\thankyou2.wav", "sound\miscsounds\comments\thankyou16.wav", "sound\miscsounds\comments\thankyou17.wav"  }
} )

sound.Add( {
	name = "PlayerCongratulateTeam.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerCongratulate.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\goodshot1.wav", "sound\miscsounds\comments\goodshot2.wav", "sound\miscsounds\comments\goodshot3.wav", "sound\miscsounds\comments\goodshot4.wav", "sound\miscsounds\comments\goodshot5.wav", "sound\miscsounds\comments\goodshot6.wav", "sound\miscsounds\comments\goodshot7.wav", "sound\miscsounds\comments\goodshot8.wav" }
} )

sound.Add( {
	name = "PlayerTaunt.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { ""}
} )

sound.Add( {
	name = "PlayerHelp.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\hitsounds\ohsnap1.wav", "sound\miscsounds\hitsounds\ohsnap2.wav", "sound\miscsounds\hitsounds\ohsnap3.wav", "sound\miscsounds\hitsounds\ohsnap4.wav", "sound\miscsounds\hitsounds\ohsnap5.wav", "sound\miscsounds\hitsounds\ohsnap6.wav", "sound\miscsounds\hitsounds\ohsnap7.wav", "sound\miscsounds\hitsounds\ohsnap8.wav", "sound\miscsounds\hitsounds\ohsnap9.wav" }
} )

sound.Add( {
	name = "PlayerReqHealing.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "vo/dva/i_need_healing.wav" }
} )

sound.Add( {
	name = "PlayerReqArmor.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerMotivateFriend.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
})

sound.Add( {
	name = "PlayerMotivateTeam.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "",}
})

sound.Add( {
	name = "PlayerCommandAttack.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "miscsounds\comments\attacking1.wav", "miscsounds\comments\attacking2.wav", "miscsounds\comments\attacking3.wav", "miscsounds\comments\attacking4.wav", "miscsounds\comments\attacking5.wav", "miscsounds\comments\attacking6.wav", "miscsounds\comments\attacking7.wav", "miscsounds\comments\attacking8.wav", "miscsounds\comments\attacking9.wav", "miscsounds\comments\attacking10.wav", "miscsounds\comments\attacking11.wav", "miscsounds\comments\attacking12.wav", "miscsounds\comments\attacking13.wav", "miscsounds\comments\attacking14.wav", "miscsounds\comments\attacking15.wav" }
})

sound.Add( {
	name = "PlayerAttack.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { ""}
} )

sound.Add( {
	name = "PlayerAway.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { ""}
} )

sound.Add( {
	name = "PlayerCountdown.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { ""}
} )

sound.Add( {
	name = "PlayerTauntCheer.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerTauntLaugh.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerTauntDance.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { ""}
} )

-- sound.Add( {
	-- name = "PlayerTauntRobot.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav"}
-- } )

-- sound.Add( {
	-- name = "PlayerTauntMuscle.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav", "vo/dva/path2.wav", "vo/dva/path3.wav" }
-- } )

-- sound.Add( {
	-- name = "PlayerTauntPersistence.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav", "vo/dva/path2.wav", "vo/dva/path3.wav" }
-- } )

-- sound.Add( {
	-- name = "PlayerTauntZombie.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav", "vo/dva/path2.wav", "vo/dva/path3.wav" }
-- } )

-- sound.Add( {
	-- name = "PlayerTauntSalute.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav", "vo/dva/path2.wav", "vo/dva/path3.wav" }
-- } )

--end--
--SpecialDamage--

sound.Add( {
	name = "PlayerDamageHead.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerDamageChest.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerDamageStomach.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

--end--
--Basics--

-- sound.Add( {
	-- name = "PlayerNoAmmo.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 1.0,
	-- level = SNDLVL_TALKING,
	-- pitch = PITCH_NORM,
	-- sound = { "vo/dva/path1.wav", "vo/dva/path2.wav", "vo/dva/path3.wav" }
-- } )

sound.Add( {
	name = "PlayerNoAmmo.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\warnings\outofammo1.wav", "sound\miscsounds\warnings\outofammo2.wav" }
} )


sound.Add( {
	name = "PlayerReload.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\reload\reload1.wav", "sound\miscsounds\reload\reload2.wav", "sound\miscsounds\reload\reload3.wav", "sound\miscsounds\reload\reload4.wav", "sound\miscsounds\reload\reload5.wav", "sound\miscsounds\reload\reload6.wav", "sound\miscsounds\reload\reload7.wav", "sound\miscsounds\reload\reload8.wav", "sound\miscsounds\reload\reload9.wav", "sound\miscsounds\reload\reload10.wav", "sound\miscsounds\reload\reload11.wav", "sound\miscsounds\reload\reload12.wav", "sound\miscsounds\reload\reload13.wav", "sound\miscsounds\reload\reload14.wav" }
} )

sound.Add( {
	name = "PlayerSpawn.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\comments\attacking5.wav"}
} )

sound.Add( {
	name = "PlayerDeath.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\death_screams\death1.wav", "sound\miscsounds\death_screams\death2.wav", "sound\miscsounds\death_screams\death3.wav", "sound\miscsounds\death_screams\death4.wav", "sound\miscsounds\death_screams\death5.wav", "sound\miscsounds\death_screams\death6.wav", "sound\miscsounds\death_screams\death7.wav", "sound\miscsounds\death_screams\death8.wav" }
} )

-- sound.Add( {
	-- name = "PlayerWalk.Jaeger",
	-- channel = CHAN_VOICE,
	-- volume = 0.800,
	-- level = SNDLVL_80dB,
	-- pitch = { 95, 110 },
	-- sound = { "" }
-- } )

sound.Add( {
	name = "PlayerJump.Jaeger",
	channel = CHAN_VOICE,
	volume = 0.800,
	level = SNDLVL_80dB,
	pitch = { 95, 100 },
	sound = { ""}
} )

sound.Add( {
	name = "PlayerFall.Jaeger",
	channel = CHAN_VOICE,
	volume = 0.800,
	level = SNDLVL_80dB,
	pitch = PITCH_NORM,
	sound = { ""}
	--sound = { "ambient/wind/wind_gust_10.wav", "ambient/wind/wind_gust_2.wav", "ambient/wind/wind_snippet4.wav", "ambient/wind/wind_snippet5.wav" } -- You can use those.
} )

sound.Add( {
	name = "PlayerLowHP.Jaeger",
	channel = CHAN_VOICE,
	volume = 0.800,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
	--sound = { "ambient/wind/wind_gust_10.wav", "ambient/wind/wind_gust_2.wav", "ambient/wind/wind_snippet4.wav", "ambient/wind/wind_snippet5.wav" } -- You can use those.
} )

sound.Add( {
	name = "PlayerDamage.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\hitsounds\hit1.wav", "sound\miscsounds\hitsounds\hit2.wav", "sound\miscsounds\hitsounds\hit3.wav", "sound\miscsounds\hitsounds\hit4.wav" }
} )

sound.Add( {
	name = "PlayerMurder.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\enemydown\enemydown1.wav", "sound\miscsounds\enemydown\enemydown2.wav", "sound\miscsounds\enemydown\enemydown3.wav", "sound\miscsounds\enemydown\enemydown4.wav", "sound\miscsounds\enemydown\enemydown5.wav", "sound\miscsounds\enemydown\enemydown6.wav", "sound\miscsounds\enemydown\enemydown7.wav", "sound\miscsounds\enemydown\enemydown8.wav", "sound\miscsounds\enemydown\enemydown9.wav", "sound\miscsounds\enemydown\enemydown10.wav", "sound\miscsounds\enemydown\enemydown11.wav", "sound\miscsounds\enemydown\enemydown12.wav", "sound\miscsounds\enemydown\enemydown13.wav", "sound\miscsounds\enemydown\enemydown14.wav", "sound\miscsounds\enemydown\enemydown15.wav", "sound\miscsounds\enemydown\enemydown16.wav", "sound\miscsounds\enemydown\enemydown17.wav", "sound\miscsounds\enemydown\enemydown18.wav", "sound\miscsounds\enemydown\enemydown19.wav" }
			  
} )

sound.Add( {
	name = "PlayerCritHP.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "sound\miscsounds\hitsounds\ohsnap1.wav", "sound\miscsounds\hitsounds\ohsnap2.wav", "sound\miscsounds\hitsounds\ohsnap3.wav", "sound\miscsounds\hitsounds\ohsnap4.wav", "sound\miscsounds\hitsounds\ohsnap5.wav", "sound\miscsounds\hitsounds\ohsnap6.wav", "sound\miscsounds\hitsounds\ohsnap7.wav", "sound\miscsounds\hitsounds\ohsnap8.wav", "sound\miscsounds\hitsounds\ohsnap9.wav" }
} )

sound.Add( {
	name = "PlayerPickup.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerHealed.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )

sound.Add( {
	name = "PlayerHealedMax.Jaeger",
	channel = CHAN_VOICE,
	volume = 1.0,
	level = SNDLVL_TALKING,
	pitch = PITCH_NORM,
	sound = { "" }
} )