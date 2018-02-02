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

-- Consume magic
LCT_SpellData[183752] = {
	class = "DEMONHUNTER",
	interrupt = true,
	cooldown = 15
}

-- DH/talents
-- Inverse magic
LCT_SpellData[205604] = {
	class = "DEMONHUNTER",
	talent = true,
	cooldown = 60,
}

-- DH/Havoc
-- Metamorphosis (Havoc)
LCT_SpellData[191427] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_HAVOC },
	offensive = true,
	duration = 30,
	cooldown = 300
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

-- DH/Vengeance
-- Metamorphosis (Vengeance)
LCT_SpellData[187827] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	offensive = true,
	duration = 15,
	cooldown = 180
}
-- Empower Wards
LCT_SpellData[218256] = {
	class = "DEMONHUNTER",
	specID = { SPEC_DH_VENGEANCE },
	defensive = true,
	duration = 6,
	cooldown = 20
}