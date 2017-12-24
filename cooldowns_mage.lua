-- ================ MAGE ================
-- Mage/baseline
-- Blink
LCT_SpellData[1953] = {
	class = "MAGE",
	defensive = true,
	cooldown = 15
}
-- Shimmer
LCT_SpellData[212653] = {
	class = "MAGE",
	defensive = true,
	talent = true,
	charges = 2,
	cooldown = 15,
	replaces = 1953
}
-- Cone of Cold
LCT_SpellData[120] = {
	class = "MAGE",
	offensive = true,
	cooldown = 12
}
-- Counterspell
LCT_SpellData[2139] = {
	class = "MAGE",
	interrupt = true,
	--silence = true, V: not since legion
	cooldown = 24,
}
-- Evocation
LCT_SpellData[12051] = {
	class = "MAGE",
	specID = { 62 },
	defensive = true,
	duration = 6,
	cooldown = 182
}
-- Frost Nova
LCT_SpellData[122] = {
	class = "MAGE",
	cc = true,
	cooldown = 30
}
-- Ice Block
LCT_SpellData[45438] = {
	class = "MAGE",
	defensive = true,
	immune = true,
	duration = 10,
	cooldown = 240
}
-- Mirror Image
LCT_SpellData[55342] = {
	class = "MAGE",
	offensive = true,
	talent = true,
	duration = 40,
	cooldown = 120
}
-- Temporal Shield
LCT_SpellData[198111] = {
	class = "MAGE",
	defensive = true,
	talent = true,
	duration = 6,
	cooldown = 45
}

-- Time Warp
LCT_SpellData[80353] = {
	class = "MAGE",
	offensive = true,
	duration = 40,
	cooldown = 300
}
-- Mage/talents
-- Cauterize
LCT_SpellData[86949] = {
	class = "MAGE",
	specID = { 63 },
	defensive = true,
	duration = 6,
	cooldown = 300
}
-- Greater Invisibility (arcane)
LCT_SpellData[110959] = {
	class = "MAGE",
	specID = { 62 },
	defensive = true,
	duration = 20,
	cooldown = 120
}
-- Invisibility (fire & frost)
LCT_SpellData[66] = {
	class = "MAGE",
	specID = { 63, 64 },
	defensive = true,
	duration = 20,
	cooldown = 300
}
-- Ice Barrier
LCT_SpellData[11426] = {
	class = "MAGE",
	specID = { 64 },
	defensive = true,
	duration = 60,
	cooldown = 25
}
-- Ice Floes
LCT_SpellData[108839] = {
	class = "MAGE",
	talent = true,
	offensive = true,
	duration = 15,
	cooldown = 20
}
-- Incanter's Ward
LCT_SpellData[1463] = {
	class = "MAGE",
	talent = true,
	defensive = true,
	duration = 8,
	cooldown = 25
}
-- Ring of Frost
LCT_SpellData[113724] = {
	class = "MAGE",
	talent = true,
	cc = true,
	duration = 10,
	cooldown = 45
}

-- Mage/Arcane
-- Arcane Power
LCT_SpellData[12042] = {
	class = "MAGE",
	specID = { 62 },
	offensive = true,
	duration = 10,
	cooldown = 90
}
-- Mark of Aluneth
LCT_SpellData[224968] = {
	class = "MAGE",
	specID = { 62 },
	offensive = true,
	cooldown = 60
}
-- Displacement when Blink (Arcane)
LCT_SpellData[195676] = {
	class = "MAGE",
	specID = { 62 },
	defensive = true,
	cooldown = 30,
	resets = { 1953 }
}
-- Displacement when Shimmer (Arcane)
LCT_SpellData[212801] = {
	class = "MAGE",
	specID = { 62 },
	defensive = true,
	cooldown = 30,
	replaces = 195676,
	restore_charges = { 212653 },
}

-- Mage/Fire
-- Combustion
--V: changed in legion, 11129 => 190319
LCT_SpellData[190319] = {
	class = "MAGE",
	specID = { 63 },
	offensive = true,
	duration = 10,
	cooldown = 120
}
-- Dragon's Breath
LCT_SpellData[31661] = {
	class = "MAGE",
	specID = { 63 },
	cc = true,
	cooldown = 20
}
-- Flamestrike
LCT_SpellData[2120] = {
	class = "MAGE",
	specID = { 63 },
	offensive = true,
	duration = 8,
	cooldown = 12
}

-- Mage/Frost
-- Frozen Orb
LCT_SpellData[84714] = {
	class = "MAGE",
	specID = { 64 },
	offensive = true,
	duration = 10,
	cooldown = 60
}
-- Icy Veins
LCT_SpellData[12472] = {
	class = "MAGE",
	specID = { 64 },
	offensive = true,
	duration = 20,
	cooldown = 180
}
-- Summon Water Elemental
LCT_SpellData[31687] = {
	class = "MAGE",
	talent = true,
	specID = { 64 },
	offensive = true,
	cooldown = 60
}
-- Cold Snap
-- V: changed ID in legion, 11958 -> 235219
LCT_SpellData[235219] = {
	class = "MAGE",
	specID = { 64 },
	resets = { 45438, 11426, 122, 120 }, -- ice block, ice barrier, frost nova, cone of cold
	cooldown = 300
}