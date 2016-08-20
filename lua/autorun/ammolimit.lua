-- The ammo limit for each ammo type, you will have to find out the additional ones
-- The ones working are listed on [url]http://wiki.garrysmod.com/?title=Player.GiveAmmo[/url]

local AMMO_TYPES = {}

AMMO_TYPES["Pistol"] = 168

AMMO_TYPES["357"] = 18

AMMO_TYPES["SMG1"] = 300

AMMO_TYPES["SMG1_Grenade"] = 3

AMMO_TYPES["AR2"] = 360

AMMO_TYPES["AR2AltFire"] = 3

AMMO_TYPES["Buckshot"] = 36

AMMO_TYPES["XBowBolt"] = 11

AMMO_TYPES["RPG_Round"] = 2

AMMO_TYPES["Grenade"] = 2

AMMO_TYPES["dodTNT"] = 0

AMMO_TYPES["7.62x39mm"] = 150

AMMO_TYPES["7.62x54mmR"] = 300

AMMO_TYPES["9x19mm"] = 300

AMMO_TYPES["4.6x30mm"] = 340

AMMO_TYPES["12 Gauge"] = 36

-- You do not need to edit anything below this line, but if you know what you're doing, go right ahead.

local ITEM_CONV_TYPES = {}

ITEM_CONV_TYPES["Pistol"] = "weapon_pistol"

ITEM_CONV_TYPES["357"] = "weapon_357"

ITEM_CONV_TYPES["SMG1"] = "weapon_smg1"

ITEM_CONV_TYPES["AR2"] = "weapon_ar2"

ITEM_CONV_TYPES["Buckshot"] = "weapon_shotgun"

ITEM_CONV_TYPES["XBowBolt"] = "weapon_crossbow"

ITEM_CONV_TYPES["Grenade"] = "weapon_frag"

ITEM_CONV_TYPES["RPG_Round"] = "weapon_rpg"

ITEM_CONV_TYPES["dodTNT_ammo"] = "bb_dod_tnt"

hook.Add("Think", "LimitPlayerAmmo", function()
	for _,pl in pairs(player.GetAll()) do
		for k,v in pairs(AMMO_TYPES) do
			local ammo = pl:GetAmmoCount(k)
			local plus = 0
			if ITEM_CONV_TYPES[k] then
				if pl:HasWeapon(ITEM_CONV_TYPES[k]) then
					plus = pl:GetWeapon(ITEM_CONV_TYPES[k]):Clip1()
				end
			end
			if (ammo+plus) > v then
				pl:RemoveAmmo((ammo+plus)-v, k)
			end
		end
	end
end)