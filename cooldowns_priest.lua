-- ================ PRIEST ================

local SPEC_PRIEST_DISC = 256
local SPEC_PRIEST_HOLY = 257
local SPEC_PRIEST_SHADOW = 258

-- Smite
LCT_SpellData[585] = {
  class = "PRIEST",
  reduce = { spellid = 88625, duration = 4 } -- Chastise
}

-- Priest/baseline
-- Shadow Word: Death
LCT_SpellData[32379] = {
	class = "PRIEST",
	talent = true,
	cooldown = 18,
	opt_lower_cooldown = 9, -- Kiss of Death legendary
}
-- Symbol of hope
LCT_SpellData[64901] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	defensive = true,
	duration = 12,
	cooldown = 300
}
-- Power Infusion
LCT_SpellData[10060] = {
	class = "PRIEST",
	offensive = true,
	duration = 20,
	cooldown = 120,
}

-- Fade
LCT_SpellData[586] = {
	class = "PRIEST",
	defensive = true,
	duration = 10,
	cooldown = 30
}
-- Rapture
LCT_SpellData[73325] = {
	class = "PRIEST",
	specID = { 256 },
	defensive = true,
	duration = 8,
	cooldown = 90,
}
-- Leap of Faith
LCT_SpellData[73325] = {
	class = "PRIEST",
	defensive = true,
	cooldown = 90,
  opt_charges = 2,
}
-- Desperate Prayer
LCT_SpellData[19236] = {
	class = "PRIEST",
	defensive = true,
	cooldown = 120
}
-- Mass Dispel
LCT_SpellData[32375] = {
	class = "PRIEST",
	mass_dispel = true,
	cooldown = 45
}
-- Psychic Scream
LCT_SpellData[8122] = {
	class = "PRIEST",
	cc = true,
	cooldown = 60,
	opt_lower_cooldown = 30, -- Some holy priests don't spec into chastise stun, and keep the 60s cd on fear.
	cooldown_overload = {
		[SPEC_PRIEST_DISC] = 30, -- Most disc priests play with -30s talent, therefore make it baseline.
	}
}
-- Priest/talents
-- Thoughtsteal
LCT_SpellData[316262] = {
	class = "PRIEST",
  talent = true,
  duration = 20,
	cooldown = 90
}
-- Priest/mixed
-- Purify
LCT_SpellData[527] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC, SPEC_PRIEST_HOLY },
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8,
	opt_charges = 2 -- With PVP talent, disc only
}
-- Shadowfiend
LCT_SpellData[34433] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC, SPEC_PRIEST_SHADOW },
	offensive = true,
	duration = 12,
	cooldown = 180,
}
-- Priest/mixed/talents
-- Divine Star
LCT_SpellData[110744] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC, SPEC_PRIEST_HOLY },
	talent = true,
	offensive = true,
	heal = true,
	cooldown = 15
}
-- Angelic Feather
LCT_SpellData[121536] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC, SPEC_PRIEST_HOLY },
	talent = true,
	charges = 3,
	cooldown = 20
}
-- Shining Force
LCT_SpellData[204263] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC, SPEC_PRIEST_HOLY },
	talent = true,
	cc = true,
	cooldown = 45,
}
-- Halo
LCT_SpellData[120517] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC, SPEC_PRIEST_HOLY },
	talent = true,
	heal = true,
	cooldown = 40
}

-- Priest/Discipline
-- Dark Archangel
LCT_SpellData[197871] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	talent = true,
	offensive = true,
	duration = 8,
	cooldown = 60
}
-- Archangel
LCT_SpellData[197862] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	talent = true,
	offensive = true,
	duration = 15,
	cooldown = 60
}
-- Penance
LCT_SpellData[47540] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	heal = true,
	duration = 2,
	cooldown = 9,
}
-- Pain Suppression
LCT_SpellData[33206] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	defensive = true,
	duration = 8,
	cooldown = 180,
}
-- Power Word: Radiance
LCT_SpellData[194509] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	defensive = true,
	cooldown = 20,
	charges = 2,
}
-- Power Word: Barrier
LCT_SpellData[62618] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	defensive = true,
	duration = 10,
	cooldown = 180,
	opt_lower_cooldown = 90, -- with 197590 Dome of Light
}
-- Rapture
LCT_SpellData[47536] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	defensive = true,
	duration = 10,
	cooldown = 90,
}

-- Priest/Discipline/talents
-- Spirit Shell
LCT_SpellData[109964] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	talent = true,
	defensive = true,
	cooldown = 90,
}
-- Schism
LCT_SpellData[214621] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	talent = true,
	offensive = true,
	cooldown = 24,
}
-- Spirit of the Redemptor
LCT_SpellData[214621] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	talent = true,
	cooldown = 180,
	-- replaces = 20711 -- Spirit of Redemption
}
-- Power Word: Solace
LCT_SpellData[129250] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	talent = true,
	offensive = true,
	cooldown = 12,
}
-- Evangelism
LCT_SpellData[246287] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	talent = true,
	heal = true,
	cooldown = 75,
}

-- Mindbender (Disc)
LCT_SpellData[123040] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	talent = true,
	offensive = true,
	duration = 15,
	cooldown = 60,
	replaces = 34433, -- Shadowfiend
}

-- Priest/Holy
-- Symbol of hope
LCT_SpellData[64901] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	defensive = true,
	duration = 12,
	cooldown = 300
}
-- Prayer of Mending
LCT_SpellData[33076] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	heal = true,
	cooldown = 12
}
-- Guardian Spirit
LCT_SpellData[47788] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	defensive = true,
	duration = 10,
	cooldown = 180,
  cooldown_on_full_aura_duration = 60,
}
-- Apotheosis
LCT_SpellData[200183] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	talent = true,
	defensive = true,
	duration = 20,
	cooldown = 120,
}
-- Divine Hymn
LCT_SpellData[64843] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	heal = true,
	duration = 8,
	cooldown = 180
}
-- Holy Word: Chastise
LCT_SpellData[88625] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	cc = true,
	cooldown = 60
}
-- Holy Word: Serenity
LCT_SpellData[2050] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	heal = true,
	cooldown = 60
}
-- Priest/Holy/talents
-- Greater Fade
LCT_SpellData[213602] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY, SPEC_PRIEST_SHADOW },
	talent = true,
	defensive = true,
	cooldown = 45,
	replaces = 586 -- Fade
}
-- Ray of Hope
LCT_SpellData[197268] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	talent = true,
	cooldown = 60
}
-- Holy Word: Sanctify
LCT_SpellData[34861] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	heal = true,
	cooldown = 60
}
-- Holy Ward
LCT_SpellData[213610] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	talent = true,
	defensive = true,
	cooldown = 30
}
-- Holy Word: Salvation
LCT_SpellData[265202] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_HOLY },
	talent = true,
	defensive = true,
	cooldown = 720 -- 12min
}

-- Priest/Shadow
-- Mind Blast
LCT_SpellData[8092] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	offensive = true,
	cooldown = 7.5,
}
-- Dispersion
LCT_SpellData[47585] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	defensive = true,
	duration = 6,
	cooldown = 120,
	opt_lower_cooldown = 90
}
-- Vampiric Embrace
LCT_SpellData[15286] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	defensive = true,
	duration = 6,
	cooldown = 120
}
-- Silence
LCT_SpellData[15487] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	silence = true,
	cooldown = 45
}
-- Priest/Shadow/talents
-- Void torrent
LCT_SpellData[263165] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	talent = true,
	cooldown = 45
}
-- Mindbender (Shadow)
LCT_SpellData[200174] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_DISC },
	talent = true,
	offensive = true,
	duration = 15,
	cooldown = 60,
	replaces = 34433, -- Shadowfiend
}
-- Psychic Horror
LCT_SpellData[64044] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	talent = true,
	cc = true,
	cooldown = 45
}
-- Surrender to Madness
LCT_SpellData[193223] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	talent = true,
	cooldown = 240
}
-- Void Shift
LCT_SpellData[108968] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	talent = true,
	cooldown = 300
}
-- Psyfiend
LCT_SpellData[211522] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	talent = true,
	cooldown = 45,
}
-- Shadow Word: Void
LCT_SpellData[205351] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	talent = true,
	offensive = true,
	cooldown = 9,
	replaces = 8092, -- Mindblast
	charges = 2,
}
-- Mind Bomb
LCT_SpellData[205369] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	talent = true,
	cc = true,
	cooldown = 30,
	replaces = 8122
}
-- Void Shift
LCT_SpellData[123040] = {
	class = "PRIEST",
	specID = { SPEC_PRIEST_SHADOW },
	talent = true,
	defensive = true,
	cooldown = 300
}

-- Covenant Abilities
-- Boon of the Ascended
LCT_SpellData[325013] = {
	class = "PRIEST",
  covenant = "KYRIAN",
	offensive = true,
	duration = 10,
	cooldown = 180
}

-- Mindgames
LCT_SpellData[323673] = {
	class = "PRIEST",
	covenant = "VENTHYR",
	offensive = true,
	duration = 5,
	cooldown = 45
}

-- Unholy Nova
LCT_SpellData[324724] = {
	class = "PRIEST",
	covenant = "NECROLORD",
	offensive = true,
	cooldown = 60
}

-- Fae Guardians
LCT_SpellData[327661] = {
	class = "PRIEST",
	covenant = "NIGHTFAE",
	offensive = true,
	duration = 20,
	cooldown = 90
}
