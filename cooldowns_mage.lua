-- ================ MAGE ================

local SPEC_MAGE_ARCANE = 62
local SPEC_MAGE_FIRE = 63
local SPEC_MAGE_FROST = 64

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
	cooldown = 20,
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
	cooldown = 24,
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
-- Time Warp
LCT_SpellData[80353] = {
	class = "MAGE",
	offensive = true,
	duration = 40,
	cooldown = 300
}

-- Mage/talents
-- Temporal Shield
LCT_SpellData[198111] = {
	class = "MAGE",
	defensive = true,
	talent = true,
	duration = 6,
	cooldown = 45
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
-- Invisibility (fire & frost)
LCT_SpellData[66] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE, SPEC_MAGE_FROST },
	defensive = true,
	duration = 20,
	cooldown = 300
}

-- Mage/Arcane
-- Greater Invisibility (arcane)
LCT_SpellData[110959] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	defensive = true,
	duration = 20,
	cooldown = 120
}
-- Evocation
LCT_SpellData[12051] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	defensive = true,
	duration = 6,
	cooldown = 182
}
-- Arcane Power
LCT_SpellData[12042] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	offensive = true,
	duration = 10,
	cooldown = 90
}
-- Mark of Aluneth
LCT_SpellData[224968] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	offensive = true,
	cooldown = 60
}
-- Displacement when Blink (Arcane)
LCT_SpellData[195676] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	defensive = true,
	cooldown = 30,
	resets = { 1953 }
}
-- Displacement when Shimmer (Arcane)
LCT_SpellData[212801] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	defensive = true,
	cooldown = 30,
	replaces = 195676,
	restore_charges = { 212653 },
}

-- Mage/Fire
-- Combustion
LCT_SpellData[190319] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	offensive = true,
	duration = 10,
	cooldown = 120
}
-- Dragon's Breath
LCT_SpellData[31661] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	cc = true,
	cooldown = 20
}
-- Flamestrike
LCT_SpellData[2120] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	offensive = true,
	duration = 8,
	cooldown = 12
}
-- Mage/Fire/talents
-- Cauterize
LCT_SpellData[86949] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	talent = true,
	defensive = true,
	duration = 6,
	cooldown = 300
}
-- Phoenix Flames
LCT_SpellData[257541] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	talent = true,
	cooldown = 30,
	charges = 3,
}

-- Mage/Frost
-- Ice Barrier
LCT_SpellData[11426] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	defensive = true,
	duration = 60,
	cooldown = 25
}
-- Frozen Orb
LCT_SpellData[84714] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	offensive = true,
	duration = 10,
	cooldown = 60
}
-- Icy Veins
LCT_SpellData[12472] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	offensive = true,
	duration = 20,
	cooldown = 180
}
-- Cold Snap
LCT_SpellData[235219] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	resets = { 11426, 45438, 122, 120 }, -- ice barrier, ice block, frost nova, cone of cold
	cooldown = 300
}
-- Mage/Frost/talents
-- Summon Water Elemental
LCT_SpellData[31687] = {
	class = "MAGE",
	talent = true,
	specID = { SPEC_MAGE_FROST },
	cooldown = 60
}
-- Ray of Frost
LCT_SpellData[205021] = {
	class = "MAGE",
	talent = true,
	specID = { SPEC_MAGE_FROST },
	offensive = true,
	cooldown = 75
}
-- Ice Floes
LCT_SpellData[108839] = {
	class = "MAGE",
	talent = true,
	specID = { SPEC_MAGE_FROST },
	cooldown = 20,
	charges = 3
}
-- Ebonbolt
LCT_SpellData[257537] = {
	class = "MAGE",
	talent = true,
	specID = { SPEC_MAGE_FROST },
	offensive = true,
	cooldown = 45,
}

-- Mage/Pet
-- Freeze
LCT_SpellData[33395] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	pet = true,
	cooldown = 25
}