-- ================ SHAMAN ================

-- V: todo, blood lust(?)
-- V: todo, ascendance resto

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
-- Earthbind Totem
LCT_SpellData[2484] = {
	class = "SHAMAN",
	cc = true,
	duration = 20,
	cooldown = 30
}
-- Healing Rain
LCT_SpellData[73920] = {
	class = "SHAMAN",
	heal = true,
	duration = 10,
	cooldown = 10
}
-- Healing Stream Totem
LCT_SpellData[5394] = {
	class = "SHAMAN",
	heal = true,
	duration = 15,
	cooldown = 30
}
-- Hex
LCT_SpellData[51514] = {
	class = "SHAMAN",
	cc = true,
	cooldown = 45
}
-- Unleash Life
LCT_SpellData[73685] = {
	class = "SHAMAN",
	heal = true,
	cooldown = 15
}
-- Wind Shear
LCT_SpellData[57994] = {
	class = "SHAMAN",
	interrupt = true,
	cooldown = 12
}


-- Shaman/talents
--TODO Wind rush totem, supposedly baseline talent that replaces something(??)
---- Wind Rush Totem
--LCT_SpellData[192077] = {
--	class = "SHAMAN",
--	specID = { SPEC_SHAMAN_ELEMENTAL },
--	talent = true,
--	cooldown = 120,
--	duration = 15,
--}
-- Ancestral Guidance
LCT_SpellData[108281] = {
	class = "SHAMAN",
	talent = true,
	heal = true,
	duration = 10,
	cooldown = 120
}
-- Astral Shift
LCT_SpellData[108271] = {
	class = "SHAMAN",
	defensive = true,
	duration = 8,
	cooldown = 90
}
-- Earthgrab Totem
LCT_SpellData[51485] = {
	class = "SHAMAN",
	talent = true,
	replaces = 2484,
	duration = 20,
	cooldown = 30
}
-- Capacitator Totem
LCT_SpellData[192058] = {
	class = "SHAMAN",
	talent = true,
	duration = 2,
	cooldown = 60
}
-- Voodoo Totem
LCT_SpellData[196935] = {
	class = "SHAMAN",
	talent = true,
	replaces = 51514,
	cooldown = 30
}
-- Windwalk Totem
LCT_SpellData[108273] = {
	class = "SHAMAN",
	talent = true,
	defensive = true,
	duration = 6,
	cooldown = 60
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
-- Windfury
LCT_SpellData[204332] = {
	class = "SHAMAN",
	talent = true,
	cooldown = 30,
	duration = 60
}

-- Shaman/Elemental
-- Earthquake
LCT_SpellData[61882] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	knockback = true,
	duration = 10,
	cooldown = 10
}
-- Fire Elemental
LCT_SpellData[198067] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	cooldown = 150,
}
-- Earth Shock
LCT_SpellData[8042] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	offensive = true,
	cooldown = 6,
}
-- Stormkeeper
LCT_SpellData[191634] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	cooldown = 60,
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
-- Stormkeeper
LCT_SpellData[205495] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	cooldown = 60,
	duration = 15,
}
-- Shaman/Elemental/talents
-- Elemental Blast
LCT_SpellData[117014] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	offensive = true,
	cooldown = 12
}
-- Elemental Mastery
LCT_SpellData[16166] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ELEMENTAL },
	talent = true,
	offensive = true,
	cooldown = 120
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
-- Doom winds
LCT_SpellData[204945] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	cooldown = 60,
	duration = 6,
}
-- Feral Spirit
LCT_SpellData[51533] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	offensive = true,
	heal = true,
	duration = 15,
	cooldown = 120
}
-- Lava Lash
LCT_SpellData[60103] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	offensive = true,
	cooldown = 10
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
	cooldown = 180
}
-- Windsong
LCT_SpellData[201898] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	talent = true,
	cooldown = 45,
	duration = 20,
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
	duration = 15
}
-- Thundercharge
LCT_SpellData[204366] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_ENHANCEMENT },
	talent = true,
	cooldown = 45,
}
-- Bloodlust
LCT_SpellData[2825] = {
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
-- Shaman/Restoration
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
	talent = true,
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
	duration = 15,
	cooldown = 30
}
-- Wellspring
LCT_SpellData[197995] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	talent = true,
	cooldown = 20
}
-- Grounding Totem
LCT_SpellData[204336] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	talent = true,
	duration = 3,
	cooldown = 30
}
-- Earth Shield
LCT_SpellData[204288] = {
	class = "SHAMAN",
	specID = { SPEC_SHAMAN_RESTORATION },
	heal = true,
	talent = true,
	cooldown = 6
}