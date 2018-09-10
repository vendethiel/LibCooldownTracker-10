-- ================ DRUID ================

-- Specs
local SPEC_DRUID_BALANCE  = 102
local SPEC_DRUID_FERAL    = 103
local SPEC_DRUID_GUARDIAN = 104
local SPEC_DRUID_RESTO    = 105

-- Druid/baseline
-- Barkskin (except feral)
LCT_SpellData[22812] = {
	class = "DRUID",
	specID = { SPEC_DRUID_BALANCE, SPEC_DRUID_GUARDIAN, SPEC_DRUID_RESTO },
	defensive = true,
	duration = 12,
	cooldown = 60
}
-- Dash
LCT_SpellData[1850] = {
	class = "DRUID",
	duration = 15,
	cooldown = 180
}
-- Stampeding Roar
LCT_SpellData[77761] = {
	class = "DRUID",
	duration = 8,
	cooldown = 120
}
LCT_SpellData[77764] = 77761
LCT_SpellData[106898] = 77761

-- Druid/talents
-- Cenarion Ward
LCT_SpellData[102351] = {
	class = "DRUID",
	talent = true,
	heal = true,
	duration = 30,
	cooldown = 30
}
-- Disorienting Roar
LCT_SpellData[99] = {
	class = "DRUID",
	talent = true,
	cc = true,
	cooldown = 30
}
-- Wild Charge
LCT_SpellData[102401] = {
	class = "DRUID",
	talent = true,
	cooldown = 15
}
LCT_SpellData[16979] = 102401 -- Bear
LCT_SpellData[49376] = 102401 -- Cat
LCT_SpellData[102416] = 102401 -- Aquatic
LCT_SpellData[102417] = 102401 -- Travel
LCT_SpellData[102383] = 102401 -- Moonkin
-- Mass Entanglement
LCT_SpellData[102359] = {
	class = "DRUID",
	talent = true,
	cc = true,
	cooldown = 30
}
-- Mighty Bash
LCT_SpellData[5211] = {
	class = "DRUID",
	talent = true,
	stun = true,
	cooldown = 50
}
-- Nature's Vigil
LCT_SpellData[124974] = {
	class = "DRUID",
	talent = true,
	offensive = true,
	defensive = true,
	duration = 30,
	cooldown = 90
}
-- Renewal
LCT_SpellData[108238] = {
	class = "DRUID",
	talent = true,
	heal = true,
	cooldown = 120
}
-- Typhoon
LCT_SpellData[132469] = {
	class = "DRUID",
	talent = true,
	knockback = true,
	cooldown = 30
}
-- Ursol's Vortex
LCT_SpellData[102793] = {
	class = "DRUID",
	talent = true,
	cc = true,
	cooldown = 60
}
-- Remove Corruption
LCT_SpellData[2782] = {
	class = "DRUID",
	specID = { SPEC_DRUID_BALANCE, SPEC_DRUID_FERAL, SPEC_DRUID_GUARDIAN },
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8
}

-- Druid/Balance
-- Solar Beam
LCT_SpellData[78675] = {
	class = "DRUID",
	specID = { SPEC_DRUID_BALANCE },
	interrupt = true,
	silence = true,
	duration = 10,
	cooldown = 60
}
-- Incarnation (balance)
LCT_SpellData[102560] = {
	class = "DRUID",
	specID = { SPEC_DRUID_BALANCE },
	offensive = true,
	duration = 30,
	cooldown = 180
}
-- Celestial alignment
LCT_SpellData[194223] = {
	class = "DRUID",
	specID = { SPEC_DRUID_BALANCE },
	offensive = true,
	duration = 15,
	cooldown = 180
}
-- Druid/Balance/talents
-- Fury of Elune
LCT_SpellData[202770] = {
	class = "DRUID",
	specID = { SPEC_DRUID_BALANCE },
	duration = 8,
	cooldown = 60
}

-- Druid/Feral
-- Tiger's Fury
LCT_SpellData[5217] = {
	class = "DRUID",
	specID = { SPEC_DRUID_FERAL },
	offensive = true,
	duration = 6,
	cooldown = 30
}
-- Maim
LCT_SpellData[22570] = {
	class = "DRUID",
	specID = { SPEC_DRUID_FERAL },
	offensive = true,
	cooldown = 20
}
-- Skull Bash
LCT_SpellData[106839] = {
	class = "DRUID",
	specID = { SPEC_DRUID_FERAL, SPEC_DRUID_GUARDIAN },
	interrupt = true,
	cooldown = 15,
}
LCT_SpellData[93985] = 106839
-- Druid/Feral/talents
-- Brutal Slash
LCT_SpellData[202028] = {
	class = "DRUID",
	specID = { SPEC_DRUID_FERAL },
	talent = true,
	cooldown = 8,
	-- replaces = 213764, -- replaces Swipe which has no cooldown
}

-- Druid/Guardian
-- Incarnation (guardian)
LCT_SpellData[102558] = {
	class = "DRUID",
	specID = { SPEC_DRUID_GUARDIAN },
	offensive = true,
	duration = 30,
	cooldown = 180
}
-- Rage of Sleeper
LCT_SpellData[200851] = {
	class = "DRUID",
	specID = { SPEC_DRUID_GUARDIAN },
	offensive = true,
	duration = 10,
	cooldown = 90
}
-- Frenzied Regeneration
LCT_SpellData[22842] = {
	class = "DRUID",
	specID = { SPEC_DRUID_GUARDIAN },
	defensive = true,
	cooldown = 36,
}

-- Incarnation (feral)
LCT_SpellData[102543] = {
	class = "DRUID",
	specID = { SPEC_DRUID_FERAL },
	offensive = true,
	cooldown = 180,
	duration = 30
}
-- Berserk
LCT_SpellData[106951] = {
	class = "DRUID",
	specID = { SPEC_DRUID_FERAL },
	offensive = true,
	cooldown = 180,
	duration = 30
}
-- Survival instincts
LCT_SpellData[61336] = {
	class = "DRUID",
	specID = { SPEC_DRUID_FERAL },
	defensive = true,
	cooldown = 180,
	duration = 6,
	charges = 2
}

-- Druid/Restoration
-- Ironbark
LCT_SpellData[102342] = {
	class = "DRUID",
	specID = { SPEC_DRUID_RESTO },
	defensive = true,
	duration = 12,
	cooldown = 60,
	opt_lower_cooldown = 45, -- 197061 Stonebark
}
-- Nature's Cure
LCT_SpellData[88423] = {
	class = "DRUID",
	specID = { SPEC_DRUID_RESTO },
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8
}
-- Swiftmend
LCT_SpellData[18562] = {
	class = "DRUID",
	specID = { SPEC_DRUID_RESTO },
	heal = true,
	cooldown = 25
}
-- Wild Growth
LCT_SpellData[48438] = {
	class = "DRUID",
	specID = { SPEC_DRUID_RESTO },
	heal = true,
	cooldown = 8
}
-- Incarnation (resto)
LCT_SpellData[33891] = {
	class = "DRUID",
	specID = { SPEC_DRUID_RESTO },
	talent = true,
	defensive = true,
	cooldown = 180,
}
-- Tranquility
LCT_SpellData[740] = {
	class = "DRUID",
	specID = { SPEC_DRUID_RESTO },
	defensive = true,
	cooldown = 180,
}
-- Innervate
LCT_SpellData[29166] = {
	class = "DRUID",
	specID = { SPEC_DRUID_RESTO },
	cooldown = 180,
}

-- Druid/Restoration/talents
-- Flourish
LCT_SpellData[197721] = {
	class = "DRUID",
	specID = { SPEC_DRUID_RESTO },
	heal = true,
	cooldown = 90
}
