-- ================ HUNTER ================

local SPEC_HUNTER_BM   = 253
local SPEC_HUNTER_MM   = 254
local SPEC_HUNTER_SURV = 255

-- Specs:
-- 253 BM
-- 254 MM
-- 255 Survival

-- Hunter/baseline
-- Misdirection
LCT_SpellData[34477] = {
	class = "HUNTER",
	cooldown = 30
}
-- Aspect of the Cheetah
LCT_SpellData[186257] = {
	class = "HUNTER",
	duration = 12, -- 3s 90% then 9s 30%
	cooldown = 180
}
-- Disengage
LCT_SpellData[781] = {
	class = "HUNTER",
	defensive = true,
	cooldown = 30
}
-- Flare
LCT_SpellData[1543] = {
	class = "HUNTER",
	none = true,
	cooldown = 20
}
-- Tar Trap
LCT_SpellData[187698] = {
	class = "HUNTER",
	cc = true,
	cooldown = 30
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
	cooldown = 180
}
-- Feign Death
LCT_SpellData[5384] = {
  class = "HUNTER",
  defensive = true,
  cooldown = 30
}
-- Spider Sting
LCT_SpellData[202914] = {
  class = "HUNTER",
  talent = true,
  silence = true,
  cooldown = 45
}
-- Viper Sting
LCT_SpellData[202797] = {
  class = "HUNTER",
  talent = true,
  cooldown = 45
}
-- Spirit Mend
LCT_SpellData[90361] = {
	class = "HUNTER",
	cooldown = 30,
	duration = 10,
}
-- Hunter/mixed
-- Concussive Shot
LCT_SpellData[5116] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM, SPEC_HUNTER_MM },
	cc = true,
	cooldown = 5
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
-- Hunter/talents
-- Roar of Sacrifice
LCT_SpellData[53480] = {
	class = "HUNTER",
	talent = true,
	defensive = true,
	duration = 12,
	cooldown = 60
}
-- Scorpid Sting
LCT_SpellData[202900] = {
	class = "HUNTER",
	talent = true,
	defensive = true,
	cooldown = 24
}
-- Binding Shot
LCT_SpellData[109248] = {
	class = "HUNTER",
	talent = true,
	cooldown = 45
}
-- Hi-Explosive Trap
LCT_SpellData[236776] = {
	class = "HUNTER",
	talent = true,
	cooldown = 40
}
-- Camouflage
LCT_SpellData[199483] = {
	class = "HUNTER",
	talent = true,
	cooldown = 60
}
-- A Murder of Crows
LCT_SpellData[131894] = {
	class = "HUNTER",
	talent = true,
	offensive = true,
	duration = 15,
	cooldown = 60
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
	specID = { SPEC_HUNTER_BM },
	offensive = true,
	cooldown = 12,
	charges = 2
}
-- Kill Command
LCT_SpellData[34026] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	offensive = true,
	cooldown = 7.5,
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
LCT_SpellData[193530] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	offensive = true,
	duration = 20,
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
-- Hunter/Beast Mastery/talents
-- Dire Beast
LCT_SpellData[120679] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	talent = true,
	offensive = true,
	duration = 8,
	cooldown = 20
}
-- Dire Beast: Hawk
LCT_SpellData[208652] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	talent = true,
	offensive = true,
	duration = 10,
	cooldown = 30
}
-- Chimaera Shot
LCT_SpellData[53209] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	talent = true,
	offensive = true,
	cooldown = 15
}
-- Spitting Cobra
LCT_SpellData[194407] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_BM },
	talent = true,
	cooldown = 90,
	duration = 20
}
-- Dire Beast: Basilisk
LCT_SpellData[205691] = {
  class = "HUNTER",
  specID = { SPEC_HUNTER_BM },
  talent = true,
  offensive = true,
  duration = 30,
  cooldown = 120
}
-- Misdirection
LCT_SpellData[205691] = {
  class = "HUNTER",
  specID = { SPEC_HUNTER_BM },
  talent = true,
  defensive = true,
  duration = 3,
  cooldown = 45,
  replaces = 34477 -- Misdirection
}

-- Hunter/Marksmanship
-- Aimed Shot
LCT_SpellData[19434] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_MM },
	offensive = true,
	cooldown = 12
}
-- Bursting Shot
LCT_SpellData[186387] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_MM },
	offensive = true,
	cooldown = 30
}
-- Rapid Fire
LCT_SpellData[257044] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_MM },
	offensive = true,
	cooldown = 20
}
-- Scatter Shot
LCT_SpellData[213691] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_MM },
	cc = true,
	cooldown = 30
}
-- Hunter/Marksmanship/talents
-- Trueshot
LCT_SpellData[288613] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_MM },
	talent = true,
	offensive = true,
	cooldown = 120
}
-- Piercing Shot
LCT_SpellData[198670] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_MM },
	talent = true,
	offensive = true,
	cooldown = 30
}
-- Doubletap
LCT_SpellData[260402] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_MM },
	talent = true,
	offensive = true,
	duration = 3,
	cooldown = 60
}

-- Hunter/Survival
-- Aspect of the eagle
LCT_SpellData[186289] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	offensive = true,
	duration = 15,
	cooldown = 90
}
-- Coordinated Assault
LCT_SpellData[266779] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	offensive = true,
	duration = 20,
	cooldown = 120
}
-- Harpoon
LCT_SpellData[190925] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	cc = true,
	cooldown = 30
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
-- Harpoon
LCT_SpellData[190925] = {
  class = "HUNTER",
  specID = { SPEC_HUNTER_SURV },
  offensive = true,
  cooldown = 30
}
-- Muzzle
LCT_SpellData[187707] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	interrupt = true,
	cooldown = 15,
}
-- Steel Trap
LCT_SpellData[162488] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	talent = true,
	cooldown = 30
}
-- Wildfire Bomb
LCT_SpellData[259495] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	offensive = true,
	cooldown = 18
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
-- Mending Bandage
LCT_SpellData[212640] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	talent = true,
	defensive = true,
	cooldown = 25,
}
-- Tracker's Net
LCT_SpellData[212638] = {
	class = "HUNTER",
	specID = { SPEC_HUNTER_SURV },
	talent = true,
	cc = true,
	cooldown = 25,
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

-- Covenant Abilities
-- Resonating Arrow
LCT_SpellData[308491] = {
	class = "HUNTER",
  	covenant = "KYRIAN",
	offensive = true,
	duration = 10,
	cooldown = 60
}

-- Flayed Shot
LCT_SpellData[324149] = {
	class = "HUNTER",
	covenant = "VENTHYR",
	offensive = true,
	duration = 14,
	cooldown = 30
}

-- Death Chakram
LCT_SpellData[325028] = {
	class = "HUNTER",
	covenant = "NECROLORD",
	offensive = true,		-- alternates as it moves...
	duration = 5,
	cooldown = 45
}

-- Wild Spirits
LCT_SpellData[328231] = {
	class = "HUNTER",
	covenant = "NIGHTFAE",
	offensive = true,
	duration = 15,
	cooldown = 120
}
