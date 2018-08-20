-- ================ PALADIN ================

local SPEC_PALADIN_HOLY        = 65
local SPEC_PALADIN_PROTECTION  = 66
local SPEC_PALADIN_RETRIBUTION = 70

-- Paladin/baseline
-- Divine Shield
LCT_SpellData[642] = {
	class = "PALADIN",
	immune = true,
	duration = 8,
	cooldown = 300,
	cooldown_overload = {
		[SPEC_PALADIN_RETRIBUTION] = 240,
		[SPEC_PALADIN_HOLY]        = 210,
	},
}
-- Hammer of Justice
LCT_SpellData[853] = {
	class = "PALADIN",
	stun = true,
	cooldown = 60
}
-- Hand of Freedom
LCT_SpellData[1044] = {
	class = "PALADIN",
	defensive = true,
	opt_charges = 2,
	opt_charges_linked = { 1022, 6940 },
	duration = 6,
	cooldown = 25,
	cooldown_overload = {
		[SPEC_PALADIN_RETRIBUTION] = 20, -- ret
	}
}
-- Hand of Protection
LCT_SpellData[1022] = {
	class = "PALADIN",
	defensive = true,
	opt_charges = 2,
	opt_charges_linked = { 1044, 6940 },
	duration = 10,
	cooldown = 300,
	cooldown_overload = {
		[SPEC_PALADIN_RETRIBUTION] = 180, -- ret
		[SPEC_PALADIN_HOLY] = 240, -- holy
	},
}
-- Judgement
LCT_SpellData[20271] = {
	class = "PALADIN",
	offensive = true,
	cooldown = 6
}

-- Paladin/hybrid
-- Rebuke
LCT_SpellData[96231] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION, SPEC_PALADIN_RETRIBUTION },
	interrupt = true,
	cooldown = 15
}
-- Avenging Wrath
LCT_SpellData[31884] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION, SPEC_PALADIN_RETRIBUTION },
	offensive = true,
	defensive = true,
	duration = 20,
	cooldown = 120
}

-- Paladin/talent
-- Holy Prism
LCT_SpellData[114165] = {
	class = "PALADIN",
	talent = true,
	offensive = true,
	heal = true,
	cooldown = 20
}
-- Light's Hammer
LCT_SpellData[114158] = {
	class = "PALADIN",
	talent = true,
	offensive = true,
	heal = true,
	duration = 16,
	cooldown = 60
}
-- Repentance
LCT_SpellData[20066] = {
	class = "PALADIN",
	talent = true,
	cc = true,
	cooldown = 15
}
-- Blinding Light
LCT_SpellData[115750] = {
	class = "PALADIN",
	cc = true,
	talent = true,
	cooldown = 90
}
-- Speed of Light
LCT_SpellData[85499] = {
	class = "PALADIN",
	talent = true,
	duration = 8,
	cooldown = 45
}

-- Paladin/spec talents
-- Holy Avenger
LCT_SpellData[105809] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	talent = true,
	offensive = true,
	defensive = true,
	duration = 20,
	cooldown = 90
}

-- Paladin/Holy
-- V: removed in Bfa. legion renamed, Divine Favor => Avenging Wrath (holy)
--LCT_SpellData[31842] = {
--	class = "PALADIN",
--	specID = { SPEC_PALADIN_HOLY },
--	defensive = true,
--	duration = 20,
--	cooldown = 180
--}
-- Cleanse
LCT_SpellData[4987] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	cooldown_starts_on_dispel = true,
	dispel = true,
	cooldown = 8
}
-- Hand of Sacrifice
LCT_SpellData[6940] = {
	class = "PALADIN",
	defensive = true,
	specID = { SPEC_PALADIN_HOLY },
	opt_charges = 2,
	opt_charges_linked = { 1044, 1022 },
	duration = 12,
	cooldown = 120
}
-- Holy Shock
LCT_SpellData[20473] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	offensive = true,
	heal = true,
	cooldown = 6
}
-- V: legion: Devotion Aura => Aura Mastery
LCT_SpellData[31821] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_HOLY },
	defensive = true,
	duration = 6,
	cooldown = 180
}

-- Paladin/Protection
-- Ardent Defender
LCT_SpellData[31850] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	defensive = true,
	duration = 10,
	cooldown = 180
}
-- Avenger's Shield
LCT_SpellData[31935] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	silence = true,
	interrupt = true,
	cooldown = 15
}
-- Consecration
LCT_SpellData[26573] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	offensive = true,
	duration = 9,
	cooldown = 9
}
-- Guardian of Ancient Kings
LCT_SpellData[86659] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	duration = 12,
	defensive = true,
	cooldown = 180
}
-- Divine Protection
LCT_SpellData[498] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_PROTECTION },
	defensive = true,
	duration = 8,
	cooldown = 60
}

-- Paladin/Retribution
-- Eye for an eye
LCT_SpellData[205191] = {
	class = "PALADIN",
	specID = { SPEC_PALADIN_RETRIBUTION },
	defensive = true,
	duration = 10,
	cooldown = 60
}