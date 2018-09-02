-- ================ ROGUE ================
-- Rogue/baseline
-- Blind
LCT_SpellData[2094] = {
	class = "ROGUE",
	cc = true,
	cooldown = 60
}
-- Cloak of Shadows
LCT_SpellData[31224] = {
	class = "ROGUE",
	defensive = true,
	duration = 5,
	cooldown = 90
}
-- Kick
LCT_SpellData[1766] = {
	class = "ROGUE",
	interrupt = true,
	cooldown = 15
}
-- Kidney Shot
LCT_SpellData[408] = {
	class = "ROGUE",
	stun = true,
	cooldown = 20
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
	duration = 5,
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
-- Evasion
LCT_SpellData[5277] = {
	class = "ROGUE",
	specID = { 259, 261 },
	defensive = true,
	duration = 10,
	cooldown = 120
}
-- Shadowstep
LCT_SpellData[36554] = {
	class = "ROGUE",
	specID = { 259, 261 },
	duration = 2,
	cooldown = 20
}
-- Rogue/talents
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

-- Rogue/Assassination 259
-- Vendetta
LCT_SpellData[79140] = {
	class = "ROGUE",
	specID = { 259 },
	offensive = true,
	duration = 20,
	cooldown = 120
}
-- Garrote
LCT_SpellData[703] = {
	class = "ROGUE",
	specID = { 259 },
	silence = true,
	cooldown = 6
}

-- Rogue/Outlaw (ex combat) 260
-- Adrenaline Rush
LCT_SpellData[13750] = {
	class = "ROGUE",
	specID = { 260 },
	offensive = true,
	duration = 15,
	cooldown = 180
}
-- Riposte
LCT_SpellData[199754] = {
	class = "ROGUE",
	specID = { 260 },
	defensive = true,
	duration = 10,
	cooldown = 120
}
-- Between the Eyes
LCT_SpellData[199804] = {
	class = "ROGUE",
	specID = { 260 },
	cc = true,
	cooldown = 30
}
-- Blade Flurry
LCT_SpellData[13877] = {
	class = "ROGUE",
	specID = { 260 },
	charges = 2,
	cooldown = 25
}
-- Gouge
LCT_SpellData[1776] = {
	class = "ROGUE",
	specID = { 260 },
	cc = true,
	cooldown = 15
}
-- Rogue/Outlaw/talents
-- 196937
LCT_SpellData[196937] = {
	class = "ROGUE",
	specID = { 260 },
	cooldown = 35
}

-- Rogue/Subtlety 261
-- Shadow Dance
LCT_SpellData[185313] = {
	class = "ROGUE",
	specID = { 261 },
	offensive = true,
	duration = 6,
	cooldown = 60,
	charges = 2,
	opt_charges = 3,
	opt_lower_cooldown = 30, -- talent 238104 Enveloping Shadows
}
-- Shadow Blades
LCT_SpellData[121471] = {
	class = "ROGUE",
	specID = { 261 },
	offensive = true,
	duration = 15,
	cooldown = 180,
}
-- Rogue/Subtetly/talents
-- Smoke Bomb
LCT_SpellData[76577] = {
	class = "ROGUE",
	talent = true,
	specID = { 261 },
	defensive = true,
	duration = 5,
	cooldown = 180
}
-- Cold Blood
LCT_SpellData[213981] = {
	class = "ROGUE",
	specID = { 261 },
	talent = true,
	cooldown_starts_on_aura_fade = true,
	cooldown = 60
}