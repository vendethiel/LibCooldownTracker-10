-- ================ MAGE ================

local SPEC_MAGE_ARCANE = 62
local SPEC_MAGE_FIRE = 63
local SPEC_MAGE_FROST = 64

-- Mage/baseline
-- Fireball
LCT_SpellData[133] = {
	class = "MAGE",
	reduce = { spellid = 190319, duration = 3 } -- Combustion
}
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
	cooldown = 120
}
-- Time Warp
LCT_SpellData[80353] = {
	class = "MAGE",
	offensive = true,
	duration = 40,
	cooldown = 300
}

-- Mage/mixed
-- Alter Time (fire & frost)
LCT_SpellData[108978] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE, SPEC_MAGE_FROST },
	defensive = true,
	duration = 10,
	cooldown = 60
}
-- Alter Time (arcane)
LCT_SpellData[342245] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	defensive = true,
	duration = 10,
	cooldown = 60,
	opt_lower_cooldown = 30, -- with 342249 Master of Time
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
-- Kleptomania
LCT_SpellData[198100] = {
	class = "MAGE",
	defensive = true,
	talent = true,
	cooldown = 30
}
-- Ring of Frost
LCT_SpellData[113724] = {
	class = "MAGE",
	talent = true,
	cc = true,
	duration = 10,
	cooldown = 45
}
-- Rune of Power
LCT_SpellData[116011] = {
	class = "MAGE",
	talent = true,
	charges = 2,
	cooldown = 40
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
	cooldown = 180
}
-- Arcane Power
LCT_SpellData[12042] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	offensive = true,
	duration = 10,
	cooldown = 90
}
-- Presence of Mind
LCT_SpellData[205025] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	offensive = true,
	cooldown = 60
}
-- Prismatic Barrier
LCT_SpellData[235450] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	defensive = true,
	cooldown = 25
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
-- Mage/Arcane/talents
-- Mass Invisibility
LCT_SpellData[198158] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	talent = true,
	duration = 5,
	cooldown = 60
}
-- Arcane Orb
LCT_SpellData[153626] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	talent = true,
	cooldown = 20
}
-- Supernova
LCT_SpellData[157980] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	talent = true,
	cooldown = 25
}
-- Charged Up
LCT_SpellData[205032] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	talent = true,
	cooldown = 40
}
-- Arcanosphere
LCT_SpellData[353128] = {
	class = "MAGE",
	specID = { SPEC_MAGE_ARCANE },
	talent = true,
	cooldown = 45
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
-- Blazing Barrier
LCT_SpellData[235313] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	offensive = true,
	cooldown = 25
}
-- Fire Blast
LCT_SpellData[108853] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	offensive = true,
	cooldown = 12
}
-- Cauterize
LCT_SpellData[86949] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	defensive = true,
	duration = 6,
	cooldown = 300
}
-- Mage/Fire/talents
-- Blast Wave
LCT_SpellData[157981] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	talent = true,
	offensive = true,
	cooldown = 25
}
-- Living Bomb
LCT_SpellData[44457] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	talent = true,
	cooldown = 12
}
-- Meteor
LCT_SpellData[153561] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	talent = true,
	cooldown = 45
}
-- Phoenix Flames
LCT_SpellData[257541] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	talent = true,
	cooldown = 30,
	charges = 3,
}
-- Ring of Fire
LCT_SpellData[353082] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FIRE },
	talent = true,
	cooldown = 30,
}

-- Mage/Frost
-- Ice Barrier
LCT_SpellData[11426] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	defensive = true,
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
-- Cone of Cold
LCT_SpellData[120] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	offensive = true,
	cooldown = 12
}
-- Summon Water Elemental
LCT_SpellData[31687] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	cooldown = 30
}
-- Mage/Frost/talents
-- Comet Storm
LCT_SpellData[153595] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	talent = true,
	cooldown = 30
}
-- Ice Form
LCT_SpellData[198144] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	talent = true,
	duration = 12,
	cooldown = 60,
	replaces = 12472 -- Icy Veins
}
-- Ice Nova
LCT_SpellData[157997] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	talent = true,
	cooldown = 25
}
-- Ray of Frost
LCT_SpellData[205021] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	talent = true,
	offensive = true,
	cooldown = 75
}
-- Ice Floes
LCT_SpellData[108839] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	talent = true,
	cooldown = 20,
	charges = 3
}
-- Ebonbolt
LCT_SpellData[257537] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	talent = true,
	offensive = true,
	cooldown = 45,
}
-- Ice Wall
LCT_SpellData[352278] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	talent = true,
	cooldown = 90,
}

-- Mage/Pet
-- Freeze
LCT_SpellData[33395] = {
	class = "MAGE",
	specID = { SPEC_MAGE_FROST },
	pet = true,
	cooldown = 25
}

-- Covenant Abilities
-- Radiant Spark
LCT_SpellData[307443] = {
	class = "MAGE",
  covenant = "KYRIAN",
	offensive = true,
	duration = 10,
	cooldown = 30
}

-- Mirrors of Torment
LCT_SpellData[314793] = {
	class = "MAGE",
	covenant = "VENTHYR",
	offensive = true,
	duration = 25,
	cooldown = 90
}

-- Deathborne
LCT_SpellData[324220] = {
	class = "MAGE",
	covenant = "NECROLORD",
	offensive = true,
	duration = 20,
	cooldown = 180
}

-- Shifting Power
LCT_SpellData[314791] = {
	class = "MAGE",
	covenant = "NIGHTFAE",
	offensive = true,
	duration = 4,
	cooldown = 60,
	reduce = { all = true, duration = 10 }
}
