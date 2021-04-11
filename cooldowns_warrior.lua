-- ================ WARRIOR ================

local SPEC_WARRIOR_ARMS = 71
local SPEC_WARRIOR_FURY = 72
local SPEC_WARRIOR_PROT = 73

-- Warrior/baseline
-- Ignore Pain
LCT_SpellData[190456] = {
	class = "WARRIOR",
	defensive = true,
	cooldown = 12
}
-- Spell Reflection
LCT_SpellData[23920] = {
	class = "WARRIOR",
	defensive = true,
	duration = 5,
	cooldown = 25
}
-- Intervene
LCT_SpellData[3411] = {
	class = "WARRIOR",
	defensive = true,
	duration = 6,
	cooldown = 30
}
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
-- Avatar
LCT_SpellData[107574] = {
	class = "WARRIOR",
	-- this spell is a bit weird: it's baseline for Prot, but a talent for Arms.
	specID = { SPEC_WARRIOR_ARMS, SPEC_WARRIOR_PROT },
	talent = true,
	offensive = true,
	duration = 20,
	cooldown = 90
}
-- Impending Victory
LCT_SpellData[202168] = {
	class = "WARRIOR",
	talent = true,
	cooldown = 30,
	-- replaces = 34428, -- Victory Rush which has no CD
}
-- Storm Bolt
LCT_SpellData[107570] = {
	class = "WARRIOR",
	talent = true,
	stun = true,
	cooldown = 30
}
-- Intimidating Shout
LCT_SpellData[5246] = {
	class = "WARRIOR",
	cc = true,
	cooldown = 90
}
-- Taunt
LCT_SpellData[355] = {
	class = "WARRIOR",
	cooldown = 8
}
-- Warrior/mixed
-- Warrior/talents
-- Disarm
LCT_SpellData[236077] = {
	class = "WARRIOR",
	talent = true,
	cooldown = 45,
}
-- Warrior/mixed/talents
-- Dragon Roar
LCT_SpellData[118000] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY, SPEC_WARRIOR_PROT },
	talent = true,
	knockback = true,
	duration = 6,
	cooldown = 35,
}

-- Warrior/Arms
-- Overpower
LCT_SpellData[7384] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	cooldown = 12
}
-- Bladestorm
LCT_SpellData[227847] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	cooldown = 90
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
	cooldown = 120
}
-- Colossus Smash
LCT_SpellData[167105] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	cooldown = 45,
}
-- Sweeping Strikes
LCT_SpellData[260708] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	offensive = true,
	duration = 12,
	cooldown = 30
}
-- Warrior/Arms/talents
-- Warbreaker
LCT_SpellData[262161] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	talent = true,
	cooldown = 45,
	replaces = 167105, -- Colossus Smash
}
-- Ravager
LCT_SpellData[152277] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	talent = true,
	cooldown = 60,
	duration = 7,
	replaces = 227847 -- Bladestorm
}
-- Cleave
LCT_SpellData[845] = {
	class ="WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	talent = true,
	cooldown = 9
}
-- Skullsplitter
LCT_SpellData[260643] = {
	class ="WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	talent = true,
	offensive = true,
	cooldown = 21
}
-- Sharpen Blade
LCT_SpellData[198817] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	talent = true,
	cooldown = 25
}
-- Deadly Calm
LCT_SpellData[262228] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_ARMS },
	talent = true,
	offensive = true,
	duration = 6,
	cooldown = 60
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
-- Siegebreaker
LCT_SpellData[280772] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_FURY },
	talent = true,
	cooldown = 30,
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
LCT_SpellData[2565] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	defensive = true,
	charges = 2,
	duration = 6,
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
-- Shockwave
LCT_SpellData[46968] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	stun = true,
	cooldown = 40
}
-- Revenge
LCT_SpellData[6572] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	cooldown = 3
}
-- Warrior/Protection/talents
-- Shield Bash
LCT_SpellData[198912] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	talent = true,
	cooldown = 10,
}
-- Bodyguard
LCT_SpellData[213871] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	talent = true,
	defensive = true,
	cooldown = 15,
}
-- Dragon Charge
LCT_SpellData[206572] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	talent = true,
	offensive = true,
	cooldown = 20,
}
-- Mass Spell Reflection
LCT_SpellData[213915] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	talent = true,
	defensive = true,
	cooldown = 30,
	replaces = 23920, -- Spell Reflection
}
-- Oppressor
LCT_SpellData[205800] = {
	class = "WARRIOR",
	specID = { SPEC_WARRIOR_PROT },
	talent = true,
	cooldown = 20,
	replaces = 355, -- Taunt
}

-- Covenant Abilities
-- Spear of Bastion
LCT_SpellData[307865] = {
	class = "WARRIOR",
	covenant = "KYRIAN",
	offensive = true,
	duration = 4,
	cooldown = 60
}

-- Conquerors Banner
LCT_SpellData[324143] = {
	class = "WARRIOR",
	covenant = "NECROLORD",
	offensive = true,
	duration = 20,
	cooldown = 180
}

-- Ancient Aftershock
LCT_SpellData[325886] = {
	class = "WARRIOR",
	covenant = "NIGHTFAE",
	offensive = true,
	duration = 12,
	cooldown = 90
}
