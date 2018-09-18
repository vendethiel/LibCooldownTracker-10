-- ================ HUNTER ================

local SPEC_HUNTER_BM   = 253
local SPEC_HUNTER_MM   = 254
local SPEC_HUNTER_SURV = 255

-- Specs:
-- 253 BM
-- 254 MM
-- 255 Survival

-- Hunter/baseline
-- Concussive Shot
LCT_SpellData[5116] = {
	class = "HUNTER",
	cc = true,
	cooldown = 8
}
-- Disengage
LCT_SpellData[781] = {
	class = "HUNTER",
	defensive = true,
	cooldown = 30
}
-- Explosive Trap
LCT_SpellData[13813] = {
	class = "HUNTER",
	offensive = true,
	cooldown = 30
}
-- Flare
LCT_SpellData[1543] = {
	class = "HUNTER",
	none = true,
	cooldown = 20
}
-- Ice Trap
LCT_SpellData[13809] = {
	class = "HUNTER",
	cc = true,
	cooldown = 30
}
-- Master's Call
LCT_SpellData[53271] = {
	class = "HUNTER",
	defensive = true,
	duration = 4,
	cooldown = 45
}
-- Exhilaration
LCT_SpellData[109304] = {
	class = "HUNTER",
	heal = true,
	cooldown = 120
}
-- Tranquilizing Shot
LCT_SpellData[19801] = {
	class = "HUNTER",
	cooldown = 10
}
-- Intimidation
LCT_SpellData[19577] = {
	class = "HUNTER",
	stun = true,
	cooldown = 60,
	specID = { SPEC_HUNTER_BM, SPEC_HUNTER_SURV },
}
-- Counter Shot
LCT_SpellData[147362] = {
	class = "HUNTER",
	interrupt = true,
	cooldown = 24,
	specID = { SPEC_HUNTER_BM, SPEC_HUNTER_MM },
}
-- Freezing Trap
LCT_SpellData[187650] = {
	class = "HUNTER",
	cc = true,
	cooldown = 30,
	cooldown_overload = {
		[SPEC_HUNTER_SURV] = 24, -- Survival
	}
}
-- Aspect of Turtle
LCT_SpellData[186265] = {
	class = "HUNTER",
	defensive = true,
	duration = 8,
	charges = 2,
	cooldown = 180,
	cooldown_overload = {
		[SPEC_HUNTER_SURV] = 144, -- Survival
	}
}

-- Hunter/talents
-- Binding Shot
LCT_SpellData[109248] = {
	class = "HUNTER",
	talent = true,
	cooldown = 45
}
-- Camouflage
LCT_SpellData[199483] = {
	class = "HUNTER",
	talent = true,
	cooldown = 60
}
-- Steel Trap
LCT_SpellData[162488] = {
	class = "HUNTER",
	talent = true,
	cooldown = 30
}
-- Spitting Cobra
LCT_SpellData[194407] = {
	class = "HUNTER",
	talent = true,
	cooldown = 90,
	duration = 20
}
-- Dire Beast
LCT_SpellData[120679] = {
	class = "HUNTER",
	talent = true,
	offensive = true,
	duration = 8,
	cooldown = 20
}
-- Fervor
LCT_SpellData[82726] = {
	class = "HUNTER",
	talent = true,
	offensive = true,
	duration = 10,
	cooldown = 30
}
-- A Murder of Crows
LCT_SpellData[131894] = {
	class = "HUNTER",
	talent = true,
	offensive = true,
	duration = 15,
	cooldown = 60
}
-- Blink Strike
LCT_SpellData[130392] = {
	class = "HUNTER",
	talent = true,
	offensive = true,
	cooldown = 20
}
-- Barrage
LCT_SpellData[120360] = {
	class = "HUNTER",
	talent = true,
	specID = { SPEC_HUNTER_BM, SPEC_HUNTER_MM },
	offensive = true,
	duration = 3,
	cooldown = 20
}

-- Hunter/Beast Mastery
-- Barbed Shot
LCT_SpellData[217200] = {
	class = "HUNTER",
	offensive = true,
	cooldown = 12,
	charges = 2
}
-- Chimaera Shot
LCT_SpellData[53209] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	offensive = true,
	cooldown = 15
}
-- Kill Command
LCT_SpellData[34026] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	offensive = true,
	cooldown = 6,
	opt_charges = 2
}
-- Bestial Wrath
LCT_SpellData[19574] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	offensive = true,
	duration = 10,
	cooldown = 90
}
-- Aspect of the wild
LCT_SpellData[90361] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	offensive = true,
	duration = 10,
	cooldown = 120
}
-- Stampede
LCT_SpellData[201430] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	offensive = true,
	duration = 12,
	cooldown = 180
}

-- Hunter/Marksmanship
-- Aimed Shot
LCT_SpellData[19434] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_MM },
	offensive = true,
	cooldown = 12
}
-- Trueshot
LCT_SpellData[193526] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_MM },
	offensive = true,
	duration = 15,
	cooldown = 180
}

-- Hunter/Survival
-- Aspect of the eagle
LCT_SpellData[186289] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	offensive = true,
	duration = 10,
	cooldown = 120
}
-- Caltrops
LCT_SpellData[194277] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	defensive = true,
	cooldown = 15
}
-- Carve
LCT_SpellData[187708] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	offensive = true,
	cooldown = 6
}
-- Butchery
LCT_SpellData[212436] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	offensive = true,
	cooldown = 18,
	opt_charges = 2
}
-- Hunter/Survival/talents
-- Butchery
LCT_SpellData[212436] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	talent = true,
	offensive = true,
	cooldown = 9,
	replaces = 187708, -- Carve
}
-- Muzzle
LCT_SpellData[187707] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	interrupt = true,
	cooldown = 15,
}
-- Flanking Strike
LCT_SpellData[269751] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	talent = true,
	offensive = true,
	cooldown = 40,
}
-- Chakrams
LCT_SpellData[259391] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	talent = true,
	offensive = true,
	cooldown = 20,
}

-- Pet
-- Pet/Ferocity
-- Heart of the Phoenix
LCT_SpellData[55709] = {
	class = "HUNTER",
	pet = true,
	defensive = true,
	cooldown = 480
}
-- Dash
LCT_SpellData[61684] = {
	class = "HUNTER",
	pet = true,
	duration = 16,
	cooldown = 32
}
-- Pet/Tenacity
-- Last Stand
LCT_SpellData[53478] = {
	class = "HUNTER",
	pet = true,
	defensive = true,
	duration = 20,
	cooldown = 360
}
-- Charge
LCT_SpellData[61685] = {
	class = "HUNTER",
	pet = true,
	offensive = true,
	cooldown = 25
}
-- Thunderstomp
LCT_SpellData[63900] = {
	class = "HUNTER",
	pet = true,
	offensive = true,
	cooldown = 10
}
-- Pet/Cunning
-- Roar of Sacrifice
LCT_SpellData[53480] = {
	class = "HUNTER",
	pet = true,
	defensive = true,
	duration = 12,
	cooldown = 60
}
-- Bullheaded
LCT_SpellData[53490] = {
	class = "HUNTER",
	pet = true,
	defensive = true,
	duration = 12,
	cooldown = 180
}
-- Shell Shield
LCT_SpellData[26064] = {
	class = "HUNTER",
	pet = true,
	defensive = true,
	duration = 12,
	cooldown = 60
}
-- Time Warp
LCT_SpellData[35346] = {
	class = "HUNTER",
	pet = true,
	cc = true,
	cooldown = 15
}
-- Ankle Crack
LCT_SpellData[50433] = {
	class = "HUNTER",
	pet = true,
	cc = true,
	cooldown = 10
}
-- Harden Carapace
LCT_SpellData[90339] = {
	class = "HUNTER",
	pet = true,
	defensive = true,
	duration = 12,
	cooldown = 60
}
-- Frost Breath
LCT_SpellData[54644] = {
	class = "HUNTER",
	pet = true,
	cc = true,
	cooldown = 10
}
-- Burrow Attack
LCT_SpellData[93433] = {
	class = "HUNTER",
	pet = true,
	offensive = true,
	duration = 8,
	cooldown = 14
}
-- Spirit Mend
LCT_SpellData[90361] = {
	class = "HUNTER",
	pet = true,
	heal = true,
	cooldown = 30
}
