-- ================ WARRIOR ================

local SPEC_WARRIOR_ARMS = 71
local SPEC_WARRIOR_FURY = 72
local SPEC_WARRIOR_PROT = 73

-- Warrior/baseline
-- Berserker Rage
LCT_SpellData[18499] = {
	class = "WARRIOR",
	offensive = true,
	duration = 6,
	cooldown = 60
}
-- Charge
LCT_SpellData[100] = {
	class = "WARRIOR",
	stun = true,
	opt_charges = 2,
	cooldown = 20
}
-- Heroic Leap
LCT_SpellData[6544] = {
	class = "WARRIOR",
	cooldown = 45
}
-- Pummel
LCT_SpellData[6552] = {
	class = "WARRIOR",
	interrupt = true,
	silence = true,
	cooldown = 15
}
-- Rallying Cry
LCT_SpellData[97462] = {
	class = "WARRIOR",
	defensive = true,
	duration = 10,
	cooldown = 180
}
-- Warrior/talents
-- Vigilance
LCT_SpellData[114030] = {
	class = "WARRIOR",
	talent = true,
	defensive = true,
	duration = 12,
	cooldown = 120
}
-- Storm Bolt
LCT_SpellData[107570] = {
	class = "WARRIOR",
	talent = true,
	stun = true,
	cooldown = 30
}
-- Bloodbath
LCT_SpellData[12292] = {
	class = "WARRIOR",
	talent = true,
	offensive = true,
	duration = 12,
	cooldown = 60
}
-- Sweeping Strikes
LCT_SpellData[260708] = {
	class = "WARRIOR",
	offensive = true,
	cooldown = 30
}
-- Warrior/mixed
-- Intimidating Shout
LCT_SpellData[5246] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS, SPEC_WARRIOR_FURY },
	cc = true,
	cooldown = 90
}
-- Warrior/mixed/talents
-- Ravager
LCT_SpellData[152277] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS, SPEC_WARRIOR_PROT },
	talent = true,
	cooldown = 60,
	duration = 5.4,
}
-- Disarm
LCT_SpellData[236077] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS, SPEC_WARRIOR_FURY },
	talent = true,
	cooldown = 45,
	duration = 4
}
-- Dragon Roar
LCT_SpellData[118000] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY, SPEC_WARRIOR_PROT },
	talent = true,
	knockback = true,
	duration = 6,
	cooldown = 35,
}
-- Mass Reflection
LCT_SpellData[216890] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS, SPEC_WARRIOR_FURY },
	talent = true,
	duration = 3,
	cooldown = 25,
}

-- Warrior/Arms
-- Overpower
LCT_SpellData[7384] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	cooldown = 12
}
-- Cleave
LCT_SpellData[845] = {
	class ="WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	cooldown = 9
}
-- Mortal Strike
LCT_SpellData[12294] = {
	class ="WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	offensive = true,
	cooldown = 6
}
-- Die by the Sword
LCT_SpellData[118038] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	defensive = true,
	duration = 8,
	cooldown = 180
}
-- Warbreaker
LCT_SpellData[209577] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	defensive = true,
	cooldown = 60
}
-- Colossus Smash
LCT_SpellData[167105] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	cooldown = 45,
}
-- Warrior/Arms/talents
-- Sharpen Blade
LCT_SpellData[198817] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	talent = true,
	cooldown = 25
}
-- Defensive Stance
LCT_SpellData[197690] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	defensive = true,
	talent = true,
	cooldown = 6
}
-- Warbanner
LCT_SpellData[236320] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	talent = true,
	cooldown = 90,
	duration = 15
}
-- Duel
LCT_SpellData[236273] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	talent = true,
	cooldown = 60,
	duration = 6
}


-- Warrior/Fury
-- Execute
LCT_SpellData[5308] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY },
	offensive = true,
	cooldown = 6,
}
-- Raging Blow
LCT_SpellData[85288] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY },
	offensive = true,
	cooldown = 8, -- 20% chance that it's 0
}
-- Enraged Regeneration
LCT_SpellData[184364] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY },
	defensive = true,
	duration = 8,
	cooldown = 120
}
-- Odyn's Fury
LCT_SpellData[205545] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY },
	knockback = true,
	duration = 4,
	cooldown = 45,
}
-- Recklessness
LCT_SpellData[1719] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY },
	offensive = true,
	duration = 5,
	cooldown = 90
}
-- Warrior/Fury/talents
-- Death Wish
LCT_SpellData[199261] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY },
	talent = true,
	cooldown = 5,
}
-- Bladestorm
LCT_SpellData[46924] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY },
	talent = true,
	offensive = true,
	duration = 6,
	cooldown = 60
}

-- Warrior/Protection
-- Demoralizing Shout
LCT_SpellData[1160] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	defensive = true,
	cooldown = 45
}
-- Last Stand
LCT_SpellData[12975] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	defensive = true,
	duration = 15,
	cooldown = 180
}
-- Shield Block
LCT_SpellData[12975] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	defensive = true,
	cooldown = 18
}
-- Shield Wall
LCT_SpellData[871] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	defensive = true,
	duration = 8,
	cooldown = 240
}
-- Spell Reflection
LCT_SpellData[23920] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	defensive = true,
	duration = 5,
	cooldown = 25
}
-- Neltharion's Fury
LCT_SpellData[203524] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	defensive = true,
	duration = 3,
	cooldown = 45
}
-- Shockwave
LCT_SpellData[46968] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	stun = true,
	cooldown = 45
}
-- Warrior/Protection/talents
-- Impending Victory
LCT_SpellData[202168] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	talent = true,
	cooldown = 30
}
-- Intercept
LCT_SpellData[203524] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	talent = true,
	cooldown = 15,
}
-- Avatar
LCT_SpellData[107574] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	talent = true,
	offensive = true,
	duration = 20,
	cooldown = 90
}
-- Mass Spell Reflection
LCT_SpellData[213915] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	talent = true,
	defensive = true,
	duration = 3,
	cooldown = 35
}