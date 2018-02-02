-- ================ WARLOCK ================

local SPEC_WARLOCK_AFFLICTION  = 265
local SPEC_WARLOCK_DEMONOLOGY  = 266
local SPEC_WARLOCK_DESTRUCTION = 267

-- Warlock/baseline
-- Soulstone
LCT_SpellData[20707] = {
	class = "WARLOCK",
	res = true,
	cooldown = 600
}
-- Unending Resolve
LCT_SpellData[104773] = {
	class = "WARLOCK",
	defensive = true,
	duration = 8,
	cooldown = 180,
	cooldown_overload = {
		[SPEC_WARLOCK_DEMONOLOGY] = 140,
		[SPEC_WARLOCK_DESTRUCTION] = 60,
	},
}
-- Nether Ward
LCT_SpellData[212295] = {
	class = "WARLOCK",
	defensive = true,
	duration = 5,
	cooldown = 45
}
-- Demonic Circle: Teleport
LCT_SpellData[48020] = {
	class = "WARLOCK",
	talent = true,
	defensive = true,
	cooldown = 30
}

-- Warlock/talent
-- Howl of Terror
LCT_SpellData[5484] = {
	class = "WARLOCK",
	talent = true,
	cc = true,
	cooldown = 40
}
-- Mortal Coil
LCT_SpellData[6789] = {
	class = "WARLOCK",
	talent = true,
	cc = true,
	heal = true,
	cooldown = 45
}
-- Shadowfury
LCT_SpellData[30283] = {
	class = "WARLOCK",
	talent = true,
	stun = true,
	cooldown = 30
}
-- Dark Pact
LCT_SpellData[108416] = {
	class = "WARLOCK",
	talent = true,
	defensive = true,
	duration = 20,
	cooldown = 60
}
-- Grimoire of Service
LCT_SpellData[108501] = {
	class = "WARLOCK",
	talent = true,
	defensive = true,
	cooldown = 120
}

-- Warlock/265 - Affliction
-- Soul Harvest
LCT_SpellData[196098] = {
	class = "WARLOCK",
	specID = { SPEC_WARLOCK_AFFLICTION },
	talent = true,
	offensive = true,
	duration = 12, -- V: technically, this is 12+(4*target of curse), but we can't really fake that.
	cooldown = 120
}

-- Warlock/Demonology
-- Hand of Gul'dan
LCT_SpellData[105174] = {
	class = "WARLOCK",
	specID = { SPEC_WARLOCK_DEMONOLOGY },
	offensive = true,
	charges = 2,
	cooldown = 15
}
-- Call Fel Lord
LCT_SpellData[212459] = {
	class = "WARLOCK",
	specID = { SPEC_WARLOCK_DEMONOLOGY },
	talent = true,
	offensive = true,
	duration = 30,
	cooldown = 120
}
-- Call Observer
LCT_SpellData[201996] = {
	class = "WARLOCK",
	specID = { SPEC_WARLOCK_DEMONOLOGY },
	talent = true,
	offensive = true,
	duration = 20,
	cooldown = 120
}

-- Warlock/Destruction
-- Havoc
LCT_SpellData[80240] = {
	class = "WARLOCK",
	specID = { SPEC_WARLOCK_DESTRUCTION },
	offensive = true,
	duration = 15,
	cooldown = 20
}
-- Cataclysm
LCT_SpellData[152108] = {
	class = "WARLOCK",
	specID = { SPEC_WARLOCK_DESTRUCTION },
	talent = true,
	offensive = true,
	cooldown = 45
}
-- Conflagrate
LCT_SpellData[17962] = {
	class = "WARLOCK",
	specID = { SPEC_WARLOCK_DESTRUCTION },
	offensive = true,
	charges = 2,
	cooldown = 12
}

-- Warlock/Felguard
-- Axe Toss
LCT_SpellData[89766] = {
	class = "WARLOCK",
	pet = true,
	stun = true,
	cooldown = 30
}
-- Felstorm
LCT_SpellData[89751] = {
	class = "WARLOCK",
	pet = true,
	offensive = true,
	cooldown = 45
}
-- Pursuit
LCT_SpellData[30151] = {
	class = "WARLOCK",
	pet = true,
	offensive = true,
	cooldown = 15
}

-- Warlock/Felhunter
-- Devour Magic
LCT_SpellData[19505] = {
	class = "WARLOCK",
	pet = true,
	purge = true,
	cooldown = 15
}
-- Spell Lock
LCT_SpellData[19647] = {
	class = "WARLOCK",
	pet = true,
	interrupt = true,
	silence = true,
	cooldown = 24
}
LCT_SpellData[119910] = 19647
LCT_SpellData[132409] = 19647

-- Warlock/Pet/Observer
-- Optical Blast
LCT_SpellData[115781] = {
	class = "WARLOCK",
	pet = true,
	interrupt = true,
	silence = true,
	cooldown = 24
}
LCT_SpellData[119911] = 115781

-- Warlock/Pet/Fel Imp
-- Sear Magic
LCT_SpellData[115276] = {
	class = "WARLOCK",
	pet = true,
	dispel = true,
	cooldown = 30
}

-- Warlock/Pet/Imp
-- Cauterize Master
LCT_SpellData[119899] = {
	class = "WARLOCK",
	pet = true,
	heal = true,
	duration = 12,
	cooldown = 30
}
-- Flee
LCT_SpellData[89792] = {
	class = "WARLOCK",
	pet = true,
	defensive = true,
	cooldown = 20
}
-- Single Magic
LCT_SpellData[89808] = {
	class = "WARLOCK",
	pet = true,
	dispel = true,
	cooldown = 10
}

-- Warlock/Pet/Shivarra
-- Fellash
LCT_SpellData[115770] = {
	class = "WARLOCK",
	pet = true,
	offensive = true,
	knockback = true,
	cooldown = 25
}

-- Warlock/Pet/Succubus
-- Whiplash
LCT_SpellData[6360] = {
	class = "WARLOCK",
	pet = true,
	offensive = true,
	knockback = true,
	cooldown = 25
}

-- Warlock/Pet/Voidwalker
-- Shadow Bulwark
LCT_SpellData[17767] = {
	class = "WARLOCK",
	pet = true,
	defensive = true,
	duration = 20,
	cooldown = 120
}

-- Warlock/Wrathguard
-- Wrathstorm
LCT_SpellData[115831] = {
	class = "WARLOCK",
	pet = true,
	offensive = true,
	duration = 6,
	cooldown = 45
}
