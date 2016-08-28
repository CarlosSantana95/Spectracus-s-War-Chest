TFAVOX_Models = TFAVOX_Models or {}

--replace wav with a SOUNDSCRIPT ID
--replace num with a TABLE{min,max} or a NUMBER

TFAVOX_Models["models/player/mw3rangers/us_ranger_01.mdl"] = {
	['main'] = {
		['heal'] = { 
			['delay'] = num,
			['sound'] = wav
		},
		['healmax'] = { 
			['delay'] = num,
			['sound'] = wav
		},
		['crithit'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\goodshot1.wav, sound\miscsounds\comments\goodshot2.wav, sound\miscsounds\comments\goodshot3.wav, sound\miscsounds\comments\goodshot4.wav, sound\miscsounds\comments\goodshot5.wav, sound\miscsounds\comments\goodshot6.wav, sound\miscsounds\comments\goodshot7.wav, sound\miscsounds\comments\goodshot8.wav
		},
		['crithealth'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\ohsnap1.wav, sound\miscsounds\hitsounds\ohsnap2.wav, sound\miscsounds\hitsounds\ohsnap3.wav, sound\miscsounds\hitsounds\ohsnap4.wav, sound\miscsounds\hitsounds\ohsnap5.wav, sound\miscsounds\hitsounds\ohsnap6.wav, sound\miscsounds\hitsounds\ohsnap7.wav, sound\miscsounds\hitsounds\ohsnap8.wav, sound\miscsounds\hitsounds\ohsnap9.wav
		},
		['death'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\death_screams\death1.wav, sound\miscsounds\death_screams\death2.wav, sound\miscsounds\death_screams\death3.wav, sound\miscsounds\death_screams\death4.wav, sound\miscsounds\death_screams\death5.wav, sound\miscsounds\death_screams\death6.wav, sound\miscsounds\death_screams\death7.wav, sound\miscsounds\death_screams\death8.wav
		},
		['spawn'] = { 
			['delay'] = num,
			['sound'] = wav
		},
		['pickup'] = { 
			['delay'] = num,
			['sound'] = wav
		},
		['reload'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\reload\reload1.wav, sound\miscsounds\reload\reload2.wav, sound\miscsounds\reload\reload3.wav, sound\miscsounds\reload\reload4.wav, sound\miscsounds\reload\reload5.wav, sound\miscsounds\reload\reload6.wav, sound\miscsounds\reload\reload7.wav, sound\miscsounds\reload\reload8.wav, sound\miscsounds\reload\reload9.wav, sound\miscsounds\reload\reload10.wav, sound\miscsounds\reload\reload11.wav, sound\miscsounds\reload\reload12.wav, sound\miscsounds\reload\reload13.wav, sound\miscsounds\reload\reload14.wav
		},
		['noammo'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\warnings\outofammo1.wav, sound\miscsounds\warnings\outofammo2.wav
		},
		['fall'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav
		},
		['jump'] = { 
			['delay'] = num,
			['sound'] = wav
		},
		['step'] = { 
			['delay'] = num,
			['sound'] = wav
		}
	},			
	['murder'] = {
		['combine'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\enemydown\enemydown1, sound\miscsounds\enemydown\enemydown2, sound\miscsounds\enemydown\enemydown3, sound\miscsounds\enemydown\enemydown4, sound\miscsounds\enemydown\enemydown5, sound\miscsounds\enemydown\enemydown6, sound\miscsounds\enemydown\enemydown7, sound\miscsounds\enemydown\enemydown8, sound\miscsounds\enemydown\enemydown9, sound\miscsounds\enemydown\enemydown10, sound\miscsounds\enemydown\enemydown11, sound\miscsounds\enemydown\enemydown12, sound\miscsounds\enemydown\enemydown13, sound\miscsounds\enemydown\enemydown14, sound\miscsounds\enemydown\enemydown15, sound\miscsounds\enemydown\enemydown16, sound\miscsounds\enemydown\enemydown17, sound\miscsounds\enemydown\enemydown18, sound\miscsounds\enemydown\enemydown19
		},
		['cp'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\enemydown\enemydown1, sound\miscsounds\enemydown\enemydown2, sound\miscsounds\enemydown\enemydown3, sound\miscsounds\enemydown\enemydown4, sound\miscsounds\enemydown\enemydown5, sound\miscsounds\enemydown\enemydown6, sound\miscsounds\enemydown\enemydown7, sound\miscsounds\enemydown\enemydown8, sound\miscsounds\enemydown\enemydown9, sound\miscsounds\enemydown\enemydown10, sound\miscsounds\enemydown\enemydown11, sound\miscsounds\enemydown\enemydown12, sound\miscsounds\enemydown\enemydown13, sound\miscsounds\enemydown\enemydown14, sound\miscsounds\enemydown\enemydown15, sound\miscsounds\enemydown\enemydown16, sound\miscsounds\enemydown\enemydown17, sound\miscsounds\enemydown\enemydown18, sound\miscsounds\enemydown\enemydown19
		},
		['zombie'] = { 
			['delay'] = num,
			['sound'] = wsound\miscsounds\enemydown\enemydown1, sound\miscsounds\enemydown\enemydown2, sound\miscsounds\enemydown\enemydown3, sound\miscsounds\enemydown\enemydown4, sound\miscsounds\enemydown\enemydown5, sound\miscsounds\enemydown\enemydown6, sound\miscsounds\enemydown\enemydown7, sound\miscsounds\enemydown\enemydown8, sound\miscsounds\enemydown\enemydown9, sound\miscsounds\enemydown\enemydown10, sound\miscsounds\enemydown\enemydown11, sound\miscsounds\enemydown\enemydown12, sound\miscsounds\enemydown\enemydown13, sound\miscsounds\enemydown\enemydown14, sound\miscsounds\enemydown\enemydown15, sound\miscsounds\enemydown\enemydown16, sound\miscsounds\enemydown\enemydown17, sound\miscsounds\enemydown\enemydown18, sound\miscsounds\enemydown\enemydown19
		},
		['headcrab'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\enemydown\enemydown1, sound\miscsounds\enemydown\enemydown2, sound\miscsounds\enemydown\enemydown3, sound\miscsounds\enemydown\enemydown4, sound\miscsounds\enemydown\enemydown5, sound\miscsounds\enemydown\enemydown6, sound\miscsounds\enemydown\enemydown7, sound\miscsounds\enemydown\enemydown8, sound\miscsounds\enemydown\enemydown9, sound\miscsounds\enemydown\enemydown10, sound\miscsounds\enemydown\enemydown11, sound\miscsounds\enemydown\enemydown12, sound\miscsounds\enemydown\enemydown13, sound\miscsounds\enemydown\enemydown14, sound\miscsounds\enemydown\enemydown15, sound\miscsounds\enemydown\enemydown16, sound\miscsounds\enemydown\enemydown17, sound\miscsounds\enemydown\enemydown18, sound\miscsounds\enemydown\enemydown19
		},
		['manhack'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\enemydown\enemydown1, sound\miscsounds\enemydown\enemydown2, sound\miscsounds\enemydown\enemydown3, sound\miscsounds\enemydown\enemydown4, sound\miscsounds\enemydown\enemydown5, sound\miscsounds\enemydown\enemydown6, sound\miscsounds\enemydown\enemydown7, sound\miscsounds\enemydown\enemydown8, sound\miscsounds\enemydown\enemydown9, sound\miscsounds\enemydown\enemydown10, sound\miscsounds\enemydown\enemydown11, sound\miscsounds\enemydown\enemydown12, sound\miscsounds\enemydown\enemydown13, sound\miscsounds\enemydown\enemydown14, sound\miscsounds\enemydown\enemydown15, sound\miscsounds\enemydown\enemydown16, sound\miscsounds\enemydown\enemydown17, sound\miscsounds\enemydown\enemydown18, sound\miscsounds\enemydown\enemydown19
		},
		['scanner'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\enemydown\enemydown1, sound\miscsounds\enemydown\enemydown2, sound\miscsounds\enemydown\enemydown3, sound\miscsounds\enemydown\enemydown4, sound\miscsounds\enemydown\enemydown5, sound\miscsounds\enemydown\enemydown6, sound\miscsounds\enemydown\enemydown7, sound\miscsounds\enemydown\enemydown8, sound\miscsounds\enemydown\enemydown9, sound\miscsounds\enemydown\enemydown10, sound\miscsounds\enemydown\enemydown11, sound\miscsounds\enemydown\enemydown12, sound\miscsounds\enemydown\enemydown13, sound\miscsounds\enemydown\enemydown14, sound\miscsounds\enemydown\enemydown15, sound\miscsounds\enemydown\enemydown16, sound\miscsounds\enemydown\enemydown17, sound\miscsounds\enemydown\enemydown18, sound\miscsounds\enemydown\enemydown19
		},
		['sniper'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\enemydown\enemydown1.wav, sound\miscsounds\enemydown\enemydown2.wav, sound\miscsounds\enemydown\enemydown3.wav, sound\miscsounds\enemydown\enemydown4.wav, sound\miscsounds\enemydown\enemydown5.wav, sound\miscsounds\enemydown\enemydown6.wav, sound\miscsounds\enemydown\enemydown7.wav, sound\miscsounds\enemydown\enemydown8.wav, sound\miscsounds\enemydown\enemydown9.wav, sound\miscsounds\enemydown\enemydown10.wav, sound\miscsounds\enemydown\enemydown11.wav, sound\miscsounds\enemydown\enemydown12.wav, sound\miscsounds\enemydown\enemydown13.wav, sound\miscsounds\enemydown\enemydown14.wav, sound\miscsounds\enemydown\enemydown15.wav, sound\miscsounds\enemydown\enemydown16.wav, sound\miscsounds\enemydown\enemydown17.wav, sound\miscsounds\enemydown\enemydown18.wav, sound\miscsounds\enemydown\enemydown19.wav
		},
		['turret'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\enemydown\enemydown1, sound\miscsounds\enemydown\enemydown2, sound\miscsounds\enemydown\enemydown3, sound\miscsounds\enemydown\enemydown4, sound\miscsounds\enemydown\enemydown5, sound\miscsounds\enemydown\enemydown6, sound\miscsounds\enemydown\enemydown7, sound\miscsounds\enemydown\enemydown8, sound\miscsounds\enemydown\enemydown9, sound\miscsounds\enemydown\enemydown10, sound\miscsounds\enemydown\enemydown11, sound\miscsounds\enemydown\enemydown12, sound\miscsounds\enemydown\enemydown13, sound\miscsounds\enemydown\enemydown14, sound\miscsounds\enemydown\enemydown15, sound\miscsounds\enemydown\enemydown16, sound\miscsounds\enemydown\enemydown17, sound\miscsounds\enemydown\enemydown18, sound\miscsounds\enemydown\enemydown19
		},
		['ally'] = { 
			['delay'] = num,
			['sound'] = wav
		},
		['generic'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\enemydown\enemydown1.wav, sound\miscsounds\enemydown\enemydown2.wav, sound\miscsounds\enemydown\enemydown3.wav, sound\miscsounds\enemydown\enemydown4.wav, sound\miscsounds\enemydown\enemydown5.wav, sound\miscsounds\enemydown\enemydown6.wav, sound\miscsounds\enemydown\enemydown7.wav, sound\miscsounds\enemydown\enemydown8.wav, sound\miscsounds\enemydown\enemydown9.wav, sound\miscsounds\enemydown\enemydown10.wav, sound\miscsounds\enemydown\enemydown11.wav, sound\miscsounds\enemydown\enemydown12.wav, sound\miscsounds\enemydown\enemydown13.wav, sound\miscsounds\enemydown\enemydown14.wav, sound\miscsounds\enemydown\enemydown15.wav, sound\miscsounds\enemydown\enemydown16.wav, sound\miscsounds\enemydown\enemydown17.wav, sound\miscsounds\enemydown\enemydown18.wav, sound\miscsounds\enemydown\enemydown19.wav
		}
	},			
	['spot'] = {
		['combine'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1spot.wav, sound\miscsounds\comments\us2spot.wav, sound\miscsounds\comments\us3spot.wav, sound\miscsounds\comments\us4spot.wav, sound\miscsounds\comments\us5spot.wav, sound\miscsounds\comments\us6spot.wav, sound\miscsounds\comments\us7spot.wav, sound\miscsounds\comments\us8spot.wav
		},
		['cp'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1genspot.wav, sound\miscsounds\comments\us2genspot.wav, sound\miscsounds\comments\us3genspot.wav, sound\miscsounds\comments\us4genspot.wav, sound\miscsounds\comments\us5genspot.wav, sound\miscsounds\comments\us6genspot.wav, sound\miscsounds\comments\us7genspot.wav, sound\miscsounds\comments\us8genspot.wav
		},
		['zombie'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1genspot.wav, sound\miscsounds\comments\us2genspot.wav, sound\miscsounds\comments\us3genspot.wav, sound\miscsounds\comments\us4genspot.wav, sound\miscsounds\comments\us5genspot.wav, sound\miscsounds\comments\us6genspot.wav, sound\miscsounds\comments\us7genspot.wav, sound\miscsounds\comments\us8genspot.wav
		},
		['headcrab'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1genspot.wav, sound\miscsounds\comments\us2genspot.wav, sound\miscsounds\comments\us3genspot.wav, sound\miscsounds\comments\us4genspot.wav, sound\miscsounds\comments\us5genspot.wav, sound\miscsounds\comments\us6genspot.wav, sound\miscsounds\comments\us7genspot.wav, sound\miscsounds\comments\us8genspot.wav
		},
		['manhack'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1genspot.wav, sound\miscsounds\comments\us2genspot.wav, sound\miscsounds\comments\us3genspot.wav, sound\miscsounds\comments\us4genspot.wav, sound\miscsounds\comments\us5genspot.wav, sound\miscsounds\comments\us6genspot.wav, sound\miscsounds\comments\us7genspot.wav, sound\miscsounds\comments\us8genspot.wav
		},
		['scanner'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1genspot.wav, sound\miscsounds\comments\us2genspot.wav, sound\miscsounds\comments\us3genspot.wav, sound\miscsounds\comments\us4genspot.wav, sound\miscsounds\comments\us5genspot.wav, sound\miscsounds\comments\us6genspot.wav, sound\miscsounds\comments\us7genspot.wav, sound\miscsounds\comments\us8genspot.wav
		},
		['sniper'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1spot.wav, sound\miscsounds\comments\us2spot.wav, sound\miscsounds\comments\us3spot.wav, sound\miscsounds\comments\us4spot.wav, sound\miscsounds\comments\us5spot.wav, sound\miscsounds\comments\us6spot.wav, sound\miscsounds\comments\us7spot.wav, sound\miscsounds\comments\us8spot.wav
		},
		['turret'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1genspot.wav, sound\miscsounds\comments\us2genspot.wav, sound\miscsounds\comments\us3genspot.wav, sound\miscsounds\comments\us4genspot.wav, sound\miscsounds\comments\us5genspot.wav, sound\miscsounds\comments\us6genspot.wav, sound\miscsounds\comments\us7genspot.wav, sound\miscsounds\comments\us8genspot.wav
		},
		['ally'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1genspot.wav, sound\miscsounds\comments\us2genspot.wav, sound\miscsounds\comments\us3genspot.wav, sound\miscsounds\comments\us4genspot.wav, sound\miscsounds\comments\us5genspot.wav, sound\miscsounds\comments\us6genspot.wav, sound\miscsounds\comments\us7genspot.wav, sound\miscsounds\comments\us8genspot.wav
		},
		['generic'] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\comments\us1genspot.wav, sound\miscsounds\comments\us2genspot.wav, sound\miscsounds\comments\us3genspot.wav, sound\miscsounds\comments\us4genspot.wav, sound\miscsounds\comments\us5genspot.wav, sound\miscsounds\comments\us6genspot.wav, sound\miscsounds\comments\us7genspot.wav, sound\miscsounds\comments\us8genspot.wav
		}
	},			
	['taunt'] = {
		[ACT_GMOD_GESTURE_AGREE] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_GESTURE_BECON] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_GESTURE_BOW] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_GESTURE_DISAGREE] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_TAUNT_SALUTE] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_GESTURE_WAVE] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_TAUNT_PERSISTENCE] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_TAUNT_MUSCLE] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_TAUNT_LAUGH] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_GESTURE_POINT] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_GMOD_TAUNT_CHEER] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_SIGNAL_FORWARD] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_SIGNAL_GROUP] = { 
			['delay'] = num,
			['sound'] = wav
		},
		[ACT_SIGNAL_HALT] = { 
			['delay'] = num,
			['sound'] = wav
		}
	},			
	['damage'] = {
		[HITGROUP_GENERIC] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav
		},
		[HITGROUP_HEAD] = {
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav			
		},
		[HITGROUP_CHEST] = {
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav		
		},
		[HITGROUP_STOMACH] = {
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav	
		},
		[HITGROUP_LEFTARM] = {
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav	
		},
		[HITGROUP_RIGHTARM] = {
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav		
		},
		[HITGROUP_LEFTLEG] = {
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav	
		},
		[HITGROUP_RIGHTLEG] = {
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav
		},
		[HITGROUP_GEAR] = { 
			['delay'] = num,
			['sound'] = sound\miscsounds\hitsounds\hit1.wav, sound\miscsounds\hitsounds\hit2.wav, sound\miscsounds\hitsounds\hit3.wav, sound\miscsounds\hitsounds\hit4.wav
		}
	}
}