--- V: DH ----

local SPEC_DH_HAVOC     = 577
local SPEC_DH_VENGEANCE = 581

-- Disrupt
LCT_SpellData[183752] = {
	class = "DEMONHUNTER",
	interrupt = true,
	cooldown = 15
}
-- Imprison
LCT_SpellData[217832] = {
	class = "DEMONHUNTER",
	cc = true,
	cooldown = 45
}
-- Spectral Sight
LCT_SpellData[278326] = {
	class = "DEMONHUNTER",
	duration = 10,
	cooldown = 30
}
-- Consume Magic
LCT_SpellData[278326] = {
	class = "DEMONHUNTER",
	dispel = true,
	cooldown = 10
}
-- Vengeful Retreat
LCT_SpellData[198793] = {
	class = "DEMONHUNTER",
	defensive = true,
	cooldown = 25
}
-- Fel Rush
LCT_SpellData[195072] = {
	class = "DEMONHUNTER",
	cooldown = 10,
	charges = 2
}
-- Chaos Nova
LCT_SpellData[179057] = {
	class = "DEMONHUNTER",
	stun = true,
	cooldown = 60
}
-- Metamorphosis
LCT_SpellData[191427] = {
	class = "DEMONHUNTER",
	offensive = true,
	duration = 30,
	cooldown = 240
}
-- DH/talents
-- Inverse magic
LCT_SpellData[205604] = {
	class = "DEMONHUNTER",
	talent = true,
	cooldown = 60,
}

-- DH/Havoc
-- Eye Beam
LCT_SpellData[198013] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	cooldown = 30,
	duration = 4,
	opt_lower_cooldown = 4, -- depending on talent
}
-- Blur
LCT_SpellData[198589] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	defensive = true,
	duration = 10,
	cooldown = 60
}
-- Blade Dance
LCT_SpellData[188499] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	cooldown = 9
}
-- Darkness
LCT_SpellData[196718] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	defensive = true,
	duration = 8,
	cooldown = 180
}
-- DH/Havoc/talents
-- Netherwalk
LCT_SpellData[196555] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	defensive = true,
	duration = 5,
	cooldown = 180
}
-- Immolation Aura
LCT_SpellData[258920] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	duration = 10,
	cooldown = 30
}
-- Nemesis
LCT_SpellData[206491] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	cooldown = 120
}
-- Mana Break
LCT_SpellData[203704] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	offensive = true,
	cooldown = 60
}
-- Mana Rift
LCT_SpellData[235903] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	offensive = true,
	cooldown = 10
}
-- Dark Slash
LCT_SpellData[258860] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	cooldown = 20,
}
-- Eye of Leotheras
LCT_SpellData[206649] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	cooldown = 45,
}
-- Fel Barrage
LCT_SpellData[258925] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	offensive = true,
	duration = 3,
	cooldown = 60,
}
-- Fel Eruption
LCT_SpellData[211881] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	stun = true,
	duration = 4,
	cooldown = 30,
}
-- Rain From Above
LCT_SpellData[206803] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	cooldown = 60,
}

-- DH/Vengeance
-- Sigil of Misery
LCT_SpellData[207684] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	silence = true,
	cooldown = 90,
}
-- Sigil of Flame
LCT_SpellData[204596] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	cooldown = 30
}
-- Sigil of Silence
LCT_SpellData[202137] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	silence = true,
	cooldown = 60
}
-- Demon Spikes
LCT_SpellData[207684] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	charges = 2,
	cooldown = 20,
}
-- Fiery Brand
LCT_SpellData[204021] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	offensive = true,
	cooldown = 60,
}
-- Infernal Strike
LCT_SpellData[189110] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	charges = 2,
	cooldown = 20,
}
-- DH/Vengeance/talents
-- Sigil of Chains
LCT_SpellData[202138] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	talent = true,
	cooldown = 90
}
-- Fel Devastation
LCT_SpellData[212084] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	talent = true,
	offensive = true,
	cooldown = 60
}
-- Demonic Trample
LCT_SpellData[205629] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	talent = true,
	cooldown = 45
}
-- Illidan's Grasp
LCT_SpellData[205630] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	talent = true,
	stun = true,
	cooldown = 60
}
-- Fracture
LCT_SpellData[263642] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	talent = true,
	cooldown = 4.5,
	-- replaces = 203782, -- V: this is Shear, but it has no CD
}
-- Soul Barrier
LCT_SpellData[263648] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	talent = true,
	defensive = true,
	cooldown = 30,
	duration = 12,
}

-- Covenant Abilities
-- Elysian Decree
LCT_SpellData[306830] = {
	class = "DEMONHUNTER",
	covenant = "KYRIAN",
	offensive = true,
	duration = 2,
	cooldown = 60
}

-- Sinful Brand
LCT_SpellData[317009] = {
	class = "DEMONHUNTER",
	covenant = "VENTHYR",
	offensive = true,
	duration = 8,
	cooldown = 60
}

-- Fodder to the Flame
LCT_SpellData[329554] = {
	class = "DEMONHUNTER",
	covenant = "NECROLORD",
	offensive = true,
	duration = 25,
	cooldown = 120
}

-- The Hunt
LCT_SpellData[323639] = {
	class = "DEMONHUNTER",
	covenant = "NIGHTFAE",
	offensive = true,
	duration = 2,
	cooldown = 90
}
