set_wotf_emfh = {
	-- WOTF
	{ spellid = 7744, cooldown = 30 },
	-- EMFH
	{ spellid = 59752, cooldown = 90 },
}

-- Gladiator's Medallion
LCT_SpellData[336126] = {
	pvp_trinket = true,
	talent = true,
	sets_cooldowns = set_wotf_emfh,
	cooldown = 120,
}
-- Adaptation
LCT_SpellData[336135] = {
	pvp_trinket = true,
	talent = true,
	sets_cooldowns = set_wotf_emfh,
	cooldown = 60,
	-- The cooldown used event triggers when the arena opens, maybe because of a buff or w/e.
	-- Disregard it and only use ARENA_COOLDOWNS_UPDATE
	ignore_cooldown_event = true
}
-- Relentless
LCT_SpellData[336128] = {
  pvp_trinket = true,
	talent = true,
	replaces = 208683,
	--sets_cooldown = { spellid = 7744, cooldown = 30 }
}

-- Healthstone
LCT_SpellData[6262] = {
	item = true,
	talent = true, -- hack to prevent it being displayed before being detected
	heal = true,
	cooldown = 60
}
LCT_SpellData[5512] = 6262

-- Gladiator's Emblem (BM trinket)
LCT_SpellData[345231] = {
	item = true,
	talent = true,
	duration = 20,
	cooldown = 120
}

-- Shadowlands/Castle Nathria
-- Skulkers Wing
LCT_SpellData[345019] = {
	item = 345019,
	talent = true, -- hack to prevent it being displayed before being detected
	offensive = true,
	cooldown = 90
}

-- Shadowlands/The Maw
-- Unchained Gladiator's Shackles
-- Shackles of Malediction
LCT_SpellData[356567] = {
	item = 186980,
	talent = true, -- hack to prevent it being displayed before being detected
	offensive = true,
	cooldown = 180
}

-- Shadowlands/Zereth Mortis
-- Cosmic Gladiator's Fastidious Resolve
-- Gladiator's Fastidious Resolve
LCT_SpellData[363117] = {
	item = 188524,
	pvp_trinket = true,
	talent = true,
	offensive = true,
	duration = 15,
}

-- Shadowlands/Zereth Mortis
-- Cosmic Gladiator's Echoing Resolve
-- Gladiator's Echoing Resolve
LCT_SpellData[363121] = {
	item = 188691,
	pvp_trinket = true,
	talent = true,
	offensive = true,
	duration = 15,
}

-- Shadowlands/Zereth Mortis
-- Cosmic Gladiator's Resonator
-- Gladiator's Resonator
LCT_SpellData[363481] = {
	item = 188766,
	offensive = true,
	cooldown = 120,
	duration = 4,
}
