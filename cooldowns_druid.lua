-- ================ DRUID ================
-- Druid/baseline
-- Barkskin
LCT_SpellData[22812] = {
	class = "DRUID",
	defensive = true,
	duration = 12,
	cooldown = 60
}
-- Dash
LCT_SpellData[1850] = {
	class = "DRUID",
	duration = 15,
	cooldown = 180
}
-- Innervate
LCT_SpellData[29166] = {
	class = "DRUID",
	duration = 10,
	cooldown = 180
}
-- Might of the Ursoc
LCT_SpellData[106922] = {
	class = "DRUID",
	defensive = true,
	duration = 20,
	cooldown = 180
}
-- Nature's Grasp
LCT_SpellData[16689] = {
	class = "DRUID",
	cc = true,
	duration = 45,
	cooldown = 60
}
-- Stampeding Roar
LCT_SpellData[77761] = {
	class = "DRUID",
	duration = 8,
	cooldown = 120
}
LCT_SpellData[77764] = 77761
LCT_SpellData[106898] = 77761
-- Tranquility
LCT_SpellData[740] = {
	class = "DRUID",
	heal = true,
	duration = 8,
	cooldown = 480
}

-- Druid/talents
-- Cenarion Ward
LCT_SpellData[102351] = {
	class = "DRUID",
	talent = true,
	heal = true,
	duration = 30,
	cooldown = 30
}
-- Disorienting Roar
LCT_SpellData[99] = {
	class = "DRUID",
	talent = true,
	cc = true,
	cooldown = 30
}
-- Displacer Beast
LCT_SpellData[102280] = {
	class = "DRUID",
	talent = true,
	cooldown = 30
}
-- Force of Nature
LCT_SpellData[106737] = {
	class = "DRUID",
	talent = true,
	offensive = true,
	duration = 15,
	cooldown = 60
}
-- Heart of the Wild
LCT_SpellData[108288] = {
	class = "DRUID",
	talent = true,
	offensive = true,
	defensive = true,
	duration = 45,
	cooldown = 360
}
-- Incarnation
LCT_SpellData[106731] = {
	class = "DRUID",
	talent = true,
	offensive = true,
	defensive = true,
	duration = 30,
	cooldown = 180
}
-- Mass Entaglement
LCT_SpellData[102359] = {
	class = "DRUID",
	talent = true,
	cc = true,
	cooldown = 30
}
-- Mighty Bash
LCT_SpellData[5211] = {
	class = "DRUID",
	talent = true,
	stun = true,
	cooldown = 50
}
-- Nature's Swiftness
LCT_SpellData[132158] = {
	class = "DRUID",
	talent = true,
	heal = true,
	cooldown_starts_on_aura_fade = true,
	cooldown = 60
}
-- Nature's Vigil
LCT_SpellData[124974] = {
	class = "DRUID",
	talent = true,
	offensive = true,
	defensive = true,
	duration = 30,
	cooldown = 90
}
-- Renewal
LCT_SpellData[108238] = {
	class = "DRUID",
	talent = true,
	heal = true,
	cooldown = 120
}
-- Typhoon
LCT_SpellData[132469] = {
	class = "DRUID",
	talent = true,
	knockback = true,
	cooldown = 30
}
-- Ursol's Vortex
LCT_SpellData[102793] = {
	class = "DRUID",
	talent = true,
	cc = true,
	cooldown = 60
}
-- Wild Charge
LCT_SpellData[102401] = {
	class = "DRUID",
	talent = true,
	cooldown = 15
}

-- Druid/Balance
-- Celestial Alignment
LCT_SpellData[112071] = {
	class = "DRUID",
	specID = { 102 },
	offensive = true,
	duration = 15,
	cooldown = 180
}
-- Remove Corruption
LCT_SpellData[2782] = {
	class = "DRUID",
	specID = { 102, 103, 104 },
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8
}
-- Solar Beam
LCT_SpellData[78675] = {
	class = "DRUID",
	specID = { 102 },
	interrupt = true,
	silence = true,
	duration = 10,
	cooldown = 60
}
-- Starfall
LCT_SpellData[48505] = {
	class = "DRUID",
	specID = { 102 },
	offensive = true,
	duration = 10,
	cooldown = 90
}
-- Starsurge
LCT_SpellData[78674] = {
	class = "DRUID",
	specID = { 102 },
	offensive = true,
	cooldown = 15
}
-- Wild Mushroom: Detonate
LCT_SpellData[88751] = {
	class = "DRUID",
	specID = { 102 },
	offensive = true,
	cooldown = 10
}

-- Druid/Feral
-- Berserk (Cat Form)
LCT_SpellData[106951] = {
	class = "DRUID",
	specID = { 103, 104 },
	offensive = true,
	sets_cooldown = { spellid = 50334, cooldown = 180 },
	duration = 15,
	cooldown = 180
}
-- Berserk (Bear Form)
LCT_SpellData[50334] = {
	class = "DRUID",
	specID = { 103, 104 },
	offensive = true,
	sets_cooldown = { spellid = 106951, cooldown = 180 },
	duration = 10,
	cooldown = 180
}
-- Skull Bash
LCT_SpellData[106839] = {
	class = "DRUID",
	specID = { 103, 104 },
	interrupt = true,
	cooldown = 15
}
-- Tiger's Fury
LCT_SpellData[5217] = {
	class = "DRUID",
	specID = { 103 },
	offensive = true,
	duration = 6,
	cooldown = 30
}

-- Druid/Guardian
-- Bear Hug
LCT_SpellData[102795] = {
	class = "DRUID",
	specID = { 104 },
	stun = true,
	duration = 3,
	cooldown = 60
}
-- Enrage
LCT_SpellData[5229] = {
	class = "DRUID",
	specID = { 104 },
	duration = 10,
	cooldown = 60
}
-- Survival Instincts
LCT_SpellData[61336] = {
	class = "DRUID",
	specID = { 104 },
	defensive = true,
	duration = 12,
	cooldown = 180
}

-- Druid/Restoration
-- Ironbark
LCT_SpellData[102342] = {
	class = "DRUID",
	specID = { 105 },
	defensive = true,
	duration = 12,
	cooldown = 120
}
-- Nature's Cure
LCT_SpellData[88423] = {
	class = "DRUID",
	specID = { 105 },
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8
}
-- Swiftmend
LCT_SpellData[18562] = {
	class = "DRUID",
	specID = { 105 },
	heal = true,
	cooldown = 15
}
-- Wild Growth
LCT_SpellData[48438] = {
	class = "DRUID",
	specID = { 105 },
	heal = true,
	cooldown = 8
}
