-- Racials
-- Gift of the Naaru (Draenei)
LCT_SpellData[28880] = {
	race = "Draenei",
	heal = true,
	duration = 5,
	cooldown = 180,
}

-- Will of the Forsaken (Undead)
LCT_SpellData[7744] = {
	race = "Scourge",
	duration = 3,
	cooldown = 120,
  -- TODO sets cd of
}
-- Will to Survive (Human)
LCT_SpellData[59752] = {
	race = "Human",
	duration = 20,
	cooldown = 120,
  sets_cooldown_of = {
    -- WOTF
    { spellid = 7744, cooldown = 45 },
  }
}
-- Arcane Torrent (Blood Elf)
LCT_SpellData[28730] = {
	race = "BloodElf",
	cooldown = 120,
  silence = true,
}
LCT_SpellData[25046] = 28730
-- Blood Fury (Orc)
LCT_SpellData[20572] = {
	race = "Orc",
	offensive = true,
	duration = 15,
	cooldown = 120,
}
LCT_SpellData[33697] = 20572
LCT_SpellData[33702] = 20572
-- Cannibalize (Undead)
LCT_SpellData[20577] = {
	race = "Scourge",
	heal = true,
	duration = 10,
	cooldown = 120,
}
-- Escape Artist (Gnome)
LCT_SpellData[20589] = {
	race = "Gnome",
	defensive = true,
	cooldown = 105,
}
-- Shadowmeld (Night Elf)
LCT_SpellData[58984] = {
	race = "NightElf",
	defensive = true,
	cooldown = 120,
}
-- Stoneform (Dwarf)
LCT_SpellData[20594] = {
	race = "Dwarf",
	defensive = true,
	duration = 8,
	cooldown = 120,
}
-- War Stomp (Tauren)
LCT_SpellData[20549] = {
	race = "Tauren",
	stun = true,
	duration = 2,
	cooldown = 120,
}
-- Berserking (Troll)
LCT_SpellData[26297] = {
	race = "Troll",
	offensive = true,
	duration = 10,
	cooldown = 180
}

