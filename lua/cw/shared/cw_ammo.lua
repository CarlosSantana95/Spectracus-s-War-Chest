AddCSLuaFile()

CustomizableWeaponry.ammoTypes = CustomizableWeaponry.ammoTypes or {}

-- base ammo registration function
function CustomizableWeaponry:registerAmmo(name, text, bulletDiameter, caseLength)
	CustomizableWeaponry.ammoTypes[name] = {bulletDiameter = bulletDiameter, caseLength = caseLength}
	
	game.AddAmmoType({name = name,
	dmgtype = DMG_BULLET})
	
	if CLIENT then
		language.Add(name .. "_ammo", text)
	end
end

-- aliases
CustomizableWeaponry.registerAmmoType = CustomizableWeaponry.registerAmmo
CustomizableWeaponry.registerNewAmmo = CustomizableWeaponry.registerAmmo

CustomizableWeaponry:registerAmmo("7.62x39mm", "7.62x39mm Rounds", 7.62, 39)
CustomizableWeaponry:registerAmmo("7.62x51mm", "7.62x51mm Rounds", 7.62, 51)
CustomizableWeaponry:registerAmmo("7.62x54mmR", "7.62x54mmR Rounds", 7.62, 39)
CustomizableWeaponry:registerAmmo("5.45x39mm", "5.45x39mm Rounds", 5.45, 39)
CustomizableWeaponry:registerAmmo("5.56x45mm", "5.56x45mm Rounds", 5.56, 45)
CustomizableWeaponry:registerAmmo("5.7x28mm", "5.7x28mm Rounds", 5.7, 28)
CustomizableWeaponry:registerAmmo(".44 Magnum", ".44 Magnum Rounds", 10.9, 32.6)
CustomizableWeaponry:registerAmmo(".45 ACP", ".45 ACP Rounds", 11.5, 22.8)
CustomizableWeaponry:registerAmmo(".50 AE", ".50 AE Rounds", 12.7, 32.6)
CustomizableWeaponry:registerAmmo("9x19mm", "9x19mm Rounds", 9, 19)
CustomizableWeaponry:registerAmmo("12 Gauge", "12 Gauge Rounds", 5, 10)
CustomizableWeaponry:registerAmmo("40mm", "40mm Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Frag Grenades", "Frag Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Smoke Grenades", "Smoke Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Flash Grenades", "Flash Grenades", 0, 0)