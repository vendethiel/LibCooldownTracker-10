--- V: DH ----

local SPEC_DH_HAVOC     = 577
local SPEC_DH_VENGEANCE = 581

-- Blur
LCT_SpellData[198589] = {
	class = "DEMONHUNTER",
	defensive = true,
	duration = 10,
	cooldown = 60
}
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
-- Eye Beam
LCT_SpellData[198013] = {
	class = "DEMONHUNTER",
	cooldown = 30,
	duration = 4,
	opt_lower_cooldown = 4, -- depending on talent
}
-- Blade Dance
LCT_SpellData[188499] = {
	class = "DEMONHUNTER",
	cooldown = 9
}
-- DH/talents
-- Inverse magic
LCT_SpellData[205604] = {
	class = "DEMONHUNTER",
	talent = true,
	cooldown = 60,
}
-- Soul Barrier
LCT_SpellData[263648] = {
	class = "DEMONHUNTER",
	talent = true,
	defensive = true,
	cooldown = 30,
	duration = 12,
}

-- DH/Havoc
-- Metamorphosis (Havoc)
LCT_SpellData[191427] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	offensive = true,
	duration = 30,
	cooldown = 280
}
-- Netherwalk
LCT_SpellData[196555] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	defensive = true,
	duration = 5,
	cooldown = 120
}
-- Darkness
LCT_SpellData[196718] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	defensive = true,
	duration = 8,
	cooldown = 180
}
-- Immolation Aura
LCT_SpellData[258920] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	duration = 10,
	cooldown = 30
}
-- DH/Havoc/talents
-- Dark Slash
LCT_SpellData[258860] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	cooldown = 20,
}
-- Rain From Above
LCT_SpellData[206803] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	talent = true,
	cooldown = 60,
}

-- DH/Vengeance
-- Metamorphosis (Vengeance)
LCT_SpellData[187827] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	offensive = true,
	duration = 15,
	cooldown = 180 -- V: is that still correct?
}
-- Sigil of Misery
LCT_SpellData[207684] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	silence = true,
	cooldown = 90,
}
-- DH/Vengeance/talents
-- Fracture
LCT_SpellData[263642] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	cooldown = 4.5,
	-- replaces = 203782, -- V: this is Shear, but it has no CD
}