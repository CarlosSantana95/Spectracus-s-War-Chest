if SERVER then return end

gmp.HeadshotEnabled = CreateClientConVar("gmp_headshot_enabled", "1", true, false)
gmp.HeadshotKilliconEnabled = CreateClientConVar("gmp_headshot_killicon_enabled", "1", true, false)
gmp.HeadshotSoundEnabled = CreateClientConVar("gmp_headshot_sound_enabled", "1", true, false)
gmp.HeadshotSoundPath = CreateClientConVar("gmp_headshot_sound_path", "gmplus/headshot.wav", true, true)

local HeadshotTable = {}
local HeadshotTexture = surface.GetTextureID("hud/killicons/headshot")
local HeadshotIndex = 0
local LastDrawY = -1

local function ConstructHeadshotTable(IsHeadshot)
	return {IsHeadshot = IsHeadshot == nil and false or IsHeadshot, DieTime = CurTime() + GetConVarNumber("hud_deathnotice_time")} --THERE ARE NO FLOWERS IN LORD RAO'S KINGDOM
end

usermessage.Hook("gmp_headshot_Index", function(Data)
	local IsHeadshot = Data:ReadBool()
	if IsHeadshot and gmp.HeadshotEnabled:GetBool() and gmp.HeadshotSoundEnabled:GetBool() then
		GetViewEntity():EmitSound(gmp.HeadshotSoundPath:GetString(), 100, 100)
	end
	if killicon and gmp.HeadshotKilliconEnabled:GetBool() then
		table.insert(HeadshotTable, ConstructHeadshotTable(IsHeadshot))
	end
end)

if killicon then
	--[[
	The killicon library is all localized, so we can't hook into it and draw after it does. Instead, we have to guess based on specific parameters.
	We expect the killicon library to draw each killicon from the first to the last, so we store the (guessed) index in the draw order and the last used draw height and assume:
		If the draw height is more than it was before (going down), it's moved on to the next index in the table.
		If the draw height is less than it was before (going up), it's moved back to the first index in the table.
	Before we draw our custom killicon, we have to make sure the tables match:
		If, for some reason, the killicon library should have more indexed killicons than we do (we may not catch the same hooks the killicon library does), we add a new index to balance it out. The effect on the new index will be default, unfortunately, because we have no data to work with to determine otherwise (no hooks caught anything and added an index to our table).
		In a loop, check to make sure the current index isn't expired (because it will also be expired in the killicon library, so we'd be using the wrong data): if it is, delete it and restart the loop; if it isn't, break the loop and continue.
	After these checks to make sure everything is right, we check our index to see if we should draw. If so:
		Draw the old killicon first.
		Change the surface material to our material, and the color to match the killicon (probably).
		Draw our killicon.
	--]]
	if not killicon.DrawOld then
		killicon.DrawOld = killicon.Draw
	end
	function killicon.Draw(x, y, Name, Alpha)
		if gmp.HeadshotEnabled:GetBool() and gmp.HeadshotKilliconEnabled:GetBool() then
			if y > LastDrawY then
				HeadshotIndex = HeadshotIndex + 1
				if #HeadshotTable < HeadshotIndex then
					table.insert(HeadshotTable, ConstructHeadshotTable())
				end
			elseif y < LastDrawY then
				HeadshotIndex = 1
			end
			LastDrawY = y
			local Time = CurTime()
			local Data = nil
			while true do
				Data = HeadshotTable[HeadshotIndex]
				if not Data then break end
				if Data.DieTime < Time then
					table.remove(HeadshotTable, HeadshotIndex)
				else
					break
				end
			end
			if Data and Data.IsHeadshot then
				killicon.DrawOld(x - 15, y, Name, Alpha)
				local Width, Height = killicon.GetSize(Name)
				surface.SetTexture(HeadshotTexture)
				surface.SetDrawColor(255, 80, 0, Alpha)
				surface.DrawTexturedRect(x + (Width / 2) - 15, y - (Height / 2) + ((Height - 16) / 2), 32, 32)
				return
			end
		end
		killicon.DrawOld(x, y, Name, Alpha)
	end
end