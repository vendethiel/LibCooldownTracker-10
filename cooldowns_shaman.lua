-- ================ SHAMAN ================

-- TODO how to model bloodlust

local SPEC_SHAMAN_ELEMENTAL   = 262
local SPEC_SHAMAN_ENHANCEMENT = 263
local SPEC_SHAMAN_RESTORATION = 264

-- Shaman/baseline
-- Cleanse Spirit
LCT_SpellData[51886] = {
	class = "SHAMAN",
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8
}
-- Tremor Totem
LCT_SpellData[8143] = {
	class = "SHAMAN",
	cooldown = 60
}
-- Earthbind Totem
LCT_SpellData[2484] = {
	class = "SHAMAN",
	cc = true,
	duration = 20,
	cooldown = 30
}
-- Hex
LCT_SpellData[51514] = {
	class = "SHAMAN",
	cc = true,
	cooldown = 30
}
-- Wind Shear
LCT_SpellData[57994] = {
	class = "SHAMAN",
	interrupt = true,
	cooldown = 12
}
-- Capacitator Totem
LCT_SpellData[192058] = {
	class = "SHAMAN",
	cc = true,
	cooldown = 60, -- can get reduced by Static Charge
}
-- Earth Elemental
LCT_SpellData[198103] = {
	class = "SHAMAN",
	defensive = true,
	cooldown = 300
}
-- Shaman/talents
-- Grounding Totem
LCT_SpellData[204336] = {
	class = "SHAMAN",
	talent = true,
	duration = 3,
	cooldown = 30
}
-- Astral Shift
LCT_SpellData[108271] = {
	class = "SHAMAN",
	defensive = true,
	duration = 8,
	cooldown = 90
}
-- Skyfury Totem
LCT_SpellData[204330] = {
	class = "SHAMAN",
	talent = true,
	cooldown = 40,
	duration = 15,
}
-- Counterstrike Totem
LCT_SpellData[204331] = {
	class = "SHAMAN",
	talent = true,
	cooldown = 45,
	duration = 15
}
-- Wind Rush Totem
LCT_SpellData[192077] = {
	class = "SHAMAN",
	talent = true,
	cooldown = 120
}

-- Shaman/Elemental
-- Fire Elemental
LCT_SpellData[198067] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	cooldown = 150,
}
-- Lava Burst
LCT_SpellData[51505] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	offensive = true,
	cooldown = 8
}
-- Thunderstorm
LCT_SpellData[51490] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	knockback = true,
	cc = true,
	cooldown = 45
}
-- Earth Elemental
LCT_SpellData[198103] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	defensive = true,
	cooldown = 300
}
-- Shaman/Elemental/talents
-- Echoing Shock
LCT_SpellData[320125] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	cooldown = 30,
}
-- Stormkeeper
LCT_SpellData[191634] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	cooldown = 60,
	duration = 15
}
-- Ancestral Guidance
LCT_SpellData[108281] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	heal = true,
	duration = 10,
	cooldown = 120
}
-- Elemental Blast
LCT_SpellData[117014] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	offensive = true,
	cooldown = 12
}
-- Ascendance (elemental)
LCT_SpellData[114050] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	duration = 15,
	cooldown = 180,
}
-- Liquid magma totem
LCT_SpellData[192222] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	duration = 15,
	cooldown = 60,
}
-- Storm Elemental
LCT_SpellData[192249] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	duration = 30,
	cooldown = 150,
}
-- Icefury
LCT_SpellData[210714] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	cooldown = 30,
}
-- Lightining Lasso
LCT_SpellData[204437] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	duration = 6,
	cooldown = 30,
}
-- Shaman/Enhancement
-- Feral Spirit
LCT_SpellData[51533] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	offensive = true,
	heal = true,
	duration = 15,
	cooldown = 120
}
-- Flametongue
LCT_SpellData[193796] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	offensive = true,
	cooldown = 120
}
-- Spirit Walk
LCT_SpellData[58875] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	defensive = true,
	duration = 8,
	cooldown = 60
}
-- Stormstrike
LCT_SpellData[17364] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	offensive = true,
	cooldown = 9
}
-- Shaman/Enhancement/talents
-- Ascendance (enhancement)
LCT_SpellData[114051] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	talent = true,
	offensive = true,
	duration = 15,
	cooldown = 180
}
-- Feral Lunge
LCT_SpellData[196884] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	talent = true,
	cooldown = 30,
}
-- Sundering
LCT_SpellData[197214] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	talent = true,
	cooldown = 40,
}
-- Ethereal Form
LCT_SpellData[210918] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	talent = true,
	cooldown = 45,
	duration = 15,
	replaces = 108271, -- Astral Shift
}
-- Thundercharge
LCT_SpellData[204366] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	talent = true,
	cooldown = 45,
}
-- Shamanism (Alliance)
LCT_SpellData[204362] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	talent = true,
	cooldown = 60,
	duration = 10
}
-- Shamanism (Horde)
LCT_SpellData[204361] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	talent = true,
	cooldown = 60,
	duration = 10
}
-- Earth Spike
LCT_SpellData[188089] = {
	class = "SHAMAN",
	talent = true,
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	cooldown = 20,
}
-- Doom Winds
LCT_SpellData[335903] = {
	class = "SHAMAN",
	talent = true,
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	duration = 12,
	cooldown = 60,
}

-- Shaman/Restoration
-- Healing Stream Totem
LCT_SpellData[5394] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	duration = 15,
	cooldown = 30
}
-- Healing Rain
LCT_SpellData[73920] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	duration = 10,
	cooldown = 10
}
-- Purify Spirit
LCT_SpellData[77130] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	dispel = true,
	replaces = 51886,
	cooldown_starts_on_dispel = true,
	cooldown = 8
}
-- Riptide
LCT_SpellData[61295] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	cooldown = 6
}
-- Spirit Link Totem
LCT_SpellData[98008] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	defensive = true,
	duration = 6, -- V: technically it's 20s
	cooldown = 180
}
-- Stone Bulwark Totem
LCT_SpellData[198838] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	talent = true,
	defensive = true,
	cooldown = 60
}
-- Spiritwalker's Grace
LCT_SpellData[79206] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	duration = 15,
	cooldown = 120,
	opt_lower_cooldown = 60
}
-- Healing Tide Totem
LCT_SpellData[108280] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	duration = 10,
	cooldown = 180
}
-- Downpour
LCT_SpellData[207778] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	talent = true,
	duration = 6,
	cooldown = 5 -- this is impossible to calculate
}
-- Shaman/Restoration/talents
-- Unleash Life
LCT_SpellData[73685] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	talent = true,
	heal = true,
	cooldown = 15
}
-- Earthgrab Totem
LCT_SpellData[51485] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	talent = true,
	replaces = 2484,
	cooldown = 30
}
-- Ascendance (Restoration)
LCT_SpellData[114052] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	talent = true,
	heal = true,
	duration = 15,
	cooldown = 180
}
-- Ancestral Protection Totem
LCT_SpellData[207399] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	defensive = true,
	talent = true,
	duration = 30,
	cooldown = 300
}
-- Cloudburst Totem
LCT_SpellData[157153] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	talent = true,
	cooldown = 30,
	replaces = 5394 -- Healing Stream Totem
}
-- Wellspring
LCT_SpellData[197995] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	talent = true,
	cooldown = 20
}

-- Covenant Abilities
-- Vesper Totem
LCT_SpellData[324386] = {
	class = "SHAMAN",
	covenant = "KYRIAN",
	offensive = true,
	duration = 30,
	cooldown = 60
}

-- Chain Harvest
LCT_SpellData[320674] = {
	class = "SHAMAN",
	covenant = "VENTHYR",
	offensive = true,
	cooldown = 90
}

-- Primordial Wave
LCT_SpellData[326059] = {
	class = "SHAMAN",
	covenant = "NECROLORD",
	offensive = true,
	cooldown = 45
}

-- Fae Transfusion
LCT_SpellData[328923] = {
	class = "SHAMAN",
	covenant = "NIGHTFAE",
	offensive = true,
	duration = 3,
	cooldown = 120
}
