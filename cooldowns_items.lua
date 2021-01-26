-- used to be Items. Now PvP trinkets

set_wotf_emfh = {
	-- WOTF
	{ spellid = 7744, cooldown = 30 },
	-- EMFH
	{ spellid = 59752, cooldown = 30 },
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

-- Shadowlands/Castle Nathria
-- Skulkers Wing
LCT_SpellData[184016] = {
	item = true,
	talent = true, -- hack to prevent it being displayed before being detected
	offensive = true,
	cooldown = 90
}
