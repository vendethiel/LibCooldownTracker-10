-- ================ ROGUE ================

-- TODO how to model 2 charges for ShS for sub

local SPEC_ROGUE_ASSA = 259
local SPEC_ROGUE_OUTLAW = 260
local SPEC_ROGUE_SUB = 261

-- Rogue/baseline
-- Shroud of Concealment
LCT_SpellData[114018] = {
	class = "ROGUE",
	defensive = true,
	duration = 15,
	cooldown = 360
}
-- Cloak of Shadows
LCT_SpellData[31224] = {
	class = "ROGUE",
	defensive = true,
	duration = 5,
	cooldown = 120
}
-- Kick
LCT_SpellData[1766] = {
	class = "ROGUE",
	interrupt = true,
	cooldown = 15
}
-- Sprint
LCT_SpellData[2983] = {
	class = "ROGUE",
	duration = 8,
	cooldown = 60
}
-- Feint
LCT_SpellData[1966] = {
	class = "ROGUE",
	defensive = true,
	duration = 6,
	cooldown = 15
}
-- Crimson Vial
LCT_SpellData[185311] = {
	class = "ROGUE",
	heal = true,
	duration = 6,
	cooldown = 30
}
-- Vanish
LCT_SpellData[1856] = {
	class = "ROGUE",
	defensive = true,
	duration = 3,
	cooldown = 120,
	opt_lower_cooldown = 75,
}
-- Blind
LCT_SpellData[2094] = {
	class = "ROGUE",
	cc = true,
	cooldown = 120,
	cooldown_overload = {
		[SPEC_ROGUE_OUTLAW] = 90,
	},
}
-- Rogue/mixed
-- Kidney Shot
LCT_SpellData[408] = {
	class = "ROGUE",
	stun = true,
	cooldown = 20
}
-- Evasion
LCT_SpellData[5277] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_ASSA, SPEC_ROGUE_SUB },
	defensive = true,
	duration = 10,
	cooldown = 120
}
-- Shadowstep
LCT_SpellData[36554] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_ASSA, SPEC_ROGUE_SUB },
	cooldown = 30,
	opt_charges = 2, -- note: subs always have 2 charges of this; but code doesn't handle such cases (yet?)
}
-- Rogue/talents
-- Smoke Bomb
LCT_SpellData[212182] = {
	class = "ROGUE",
	talent = true,
	duration = 5,
	cooldown = 180
}
-- Marked for death
LCT_SpellData[137619] = {
	class = "ROGUE",
	talent = true,
	offensive = true,
	cooldown = 60
}
-- Death from Above
LCT_SpellData[269513] = {
	class = "ROGUE",
	talent = true,
	offensive = true,
	cooldown = 30
}

-- Rogue/Assassination
-- Vendetta
LCT_SpellData[79140] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_ASSA },
	offensive = true,
	duration = 20,
	cooldown = 120
}
-- Garrote
LCT_SpellData[703] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_ASSA },
	silence = true,
	cooldown = 6
}
-- Rogue/Assassination/talents
-- Exsanguinate
LCT_SpellData[200806] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_ASSA },
	offensive = true,
	cooldown = 45
}
-- Neurotoxin
LCT_SpellData[206328] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_ASSA },
	offensive = true,
	cooldown = 25
}
-- Toxic Blade
LCT_SpellData[245388] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_ASSA },
	offensive = true,
	cooldown = 25
}

-- Rogue/Outlaw
-- Adrenaline Rush
LCT_SpellData[13750] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	offensive = true,
	duration = 15,
	cooldown = 180
}
-- Riposte
LCT_SpellData[199754] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	defensive = true,
	duration = 10,
	cooldown = 120
}
-- Between the Eyes
LCT_SpellData[199804] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	cc = true,
	cooldown = 30
}
-- Blade Flurry
LCT_SpellData[13877] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	charges = 2,
	cooldown = 25
}
-- Gouge
LCT_SpellData[1776] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	cc = true,
	cooldown = 15
}
-- Grappling Hook
LCT_SpellData[195457] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	cooldown = 60
}
-- Rogue/Outlaw/talents
-- Ghostly Strike
LCT_SpellData[196937] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	talent = true,
	cooldown = 35
}
-- Plunder Armor
LCT_SpellData[198529] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	talent = true,
	duration = 10,
	cooldown = 120
}
-- Killing Spree
LCT_SpellData[51690] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	talent = true,
	offensive = true,
	cooldown = 120
}
-- Blade Rush
LCT_SpellData[271877] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	talent = true,
	duration = 5,
	cooldown = 45
}
-- Blade Rush
LCT_SpellData[271877] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_OUTLAW },
	talent = true,
	cc = true,
	cooldown = 45
}

-- Rogue/Subtlety
-- Shadow Dance
LCT_SpellData[185313] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_SUB },
	offensive = true,
	duration = 6,
	cooldown = 60,
	charges = 2,
	opt_charges = 3,
	opt_lower_cooldown = 30, -- talent 238104 Enveloping Shadows
}
-- Symbols of Death
LCT_SpellData[212283] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_SUB },
	offensive = true,
	duration = 10,
	cooldown = 30,
}
-- Shadow Blades
LCT_SpellData[121471] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_SUB },
	offensive = true,
	duration = 15,
	cooldown = 180,
}
-- Rogue/Subtetly/talents
-- Cold Blood
LCT_SpellData[213981] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_SUB },
	talent = true,
	cooldown_starts_on_aura_fade = true,
	cooldown = 60
}
-- Secret Technique
LCT_SpellData[280719] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_SUB },
	talent = true,
	cooldown = 45
}
-- Shadowy Duel
LCT_SpellData[207736] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_SUB },
	talent = true,
	duration = 6,
	cooldown = 120
}
-- Shuriken Tornado
LCT_SpellData[277925] = {
	class = "ROGUE",
	specID = { SPEC_ROGUE_SUB },
	talent = true,
	cooldown = 60
}

-- Covenant Abilities
-- Echoing Reprimand
LCT_SpellData[323547] = {
	class = "ROGUE",
	covenant = "KYRIAN",
	offensive = true,
	cooldown = 45
}

-- Flagellation
LCT_SpellData[323654] = {
	class = "ROGUE",
	covenant = "VENTHYR",
	offensive = true,
	duration = 20,
	cooldown = 90
}

-- Serrated Bone Spike
LCT_SpellData[328547] = {
	class = "ROGUE",
	covenant = "NECROLORD",
	offensive = true,
	charges = 3,
	cooldown = 30
}

-- Sepsis
LCT_SpellData[328305] = {
	class = "ROGUE",
	covenant = "NIGHTFAE",
	offensive = true,
	duration = 10,
	cooldown = 90
}
