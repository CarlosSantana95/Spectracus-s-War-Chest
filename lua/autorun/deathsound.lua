hook.Add("PlayerDeathSound", "DeFlatline", function() return true end)
local noise = Sound("flatline.wav")
hook.Add("PlayerDeath", "NewSound", function(vic,unused1,unused2) vic:EmitSound(noise) end)