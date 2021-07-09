-- used to be Items. Now PvP trinkets

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
	cooldown = 60
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

-- Gladiator's Emblem (BM trinket)
LCT_SpellData[345231] = {
	item = true,
	talent = true,
	duration = 20,
	cooldown = 120
}

-- Shadowlands/Castle Nathria
-- Skulkers Wing (Item ID 345019)
-- XXX have a way to enter the item id here to show the item name instead of the item spell name?
LCT_SpellData[345019] = {
	item = true,
	talent = true, -- hack to prevent it being displayed before being detected
	offensive = true,
	cooldown = 90
}

-- Shadowlands/The Maw
-- Unchained Gladiator's Shackles (Item ID 186980)
-- Shackles of Malediction
LCT_SpellData[356567] = {
  item = true,
	talent = true, -- hack to prevent it being displayed before being detected
  offensive = true,
  cooldown = 180
}
