-- ================ MONK ================

local SPEC_MONK_BREWMASTER = 268
local SPEC_MONK_WINDWALKER = 269
local SPEC_MONK_MISTWEAVER = 270

-- Monk/baseline
-- Roll
LCT_SpellData[109132] = {
	class = "MONK",
	charges = 2,
	cooldown = 20,
}
-- Chi Torpedo
LCT_SpellData[115008] = 109132
-- Paralysis
LCT_SpellData[115078] = {
	class = "MONK",
	cc = true,
	cooldown = 15,
}
-- Transcendence
LCT_SpellData[101643] = {
	class = "MONK",
	cooldown = 45,
}
-- Transcendence: Transfer
LCT_SpellData[119996] = {
	class = "MONK",
	cooldown = 45,
}
-- Leg Sweep
LCT_SpellData[119381] = {
	class = "MONK",
	stun = true,
	cooldown = 60,
	opt_lower_cooldown = 50, -- with 264348 Tiger Tail Sweep
}
-- Chi Burst
LCT_SpellData[115399] = {
	class = "MONK",
	charges = 2,
	cooldown = 45
}
-- Tiger's Lust
LCT_SpellData[116841] = {
	class = "MONK",
	defensive = true,
	duration = 6,
	cooldown = 30,
}
-- Chi Burst
LCT_SpellData[123986] = {
	class = "MONK",
	offensive = true,
	cooldown = 30,
}
-- Healing Elixir
LCT_SpellData[122281] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER, SPEC_MONK_WINDWALKER },
	cooldown = 30,
	charges = 2,
}
-- Spear Hand Strike
LCT_SpellData[116705] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER, SPEC_MONK_WINDWALKER },
	interrupt = true,
	silence = true,
	cooldown = 15,
}
-- Monk/talents
-- Chi Wave
LCT_SpellData[115098] = {
	class = "MONK",
	talent = true,
	cooldown = 15
}
-- Dampen Harm (mistweaver & windwalker)
LCT_SpellData[122278] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER, SPEC_MONK_WINDWALKER },
	talent = true,
	defensive = true,
	duration = 10,
	cooldown = 120,
}
-- Diffuse Magic (mistweaver & windwalker)
LCT_SpellData[122783] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER, SPEC_MONK_WINDWALKER },
	talent = true,
	defensive = true,
	duration = 6,
	cooldown = 90
}
-- Ring of Peace
LCT_SpellData[116844] = {
	class = "MONK",
	talent = true,
	defensive = true,
	duration = 8,
	cooldown = 45,
}
-- Rushing Jade Wind
LCT_SpellData[116847] = {
	class = "MONK",
	talent = true,
	offensive = true,
	cooldown = 6,
}
-- Monk/mixed
-- Detox (WW/BM)
LCT_SpellData[218164] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER, SPEC_MONK_BREWMASTER },
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8,
}

-- Monk/Brewmaster
-- Exploding Keg
LCT_SpellData[214326] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	offensive = true,
	cooldown = 75,
}
-- Ironskin Brew
LCT_SpellData[115308] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	defensive = true,
	duration = 3,
	cooldown = 15,
	charges = 3, -- TODO shared with Purifying Brew
}
-- Keg Smash
LCT_SpellData[121253] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	offensive = true,
	cooldown = 8,
}
-- Summon Black Ox
LCT_SpellData[115315] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	cooldown = 120,
}
-- Purifying Brew
LCT_SpellData[119582] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	cooldown = 15,
	charges = 3, -- TODO shared with Ironskin Brew
}
-- Fortifying Brew
LCT_SpellData[115203] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	defensive = true,
	duration = 15,
	cooldown = 420,
}
-- Zen Meditation
LCT_SpellData[115176] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	defensive = true,
	duration = 8,
	cooldown = 300,
}
-- Monk/Brewmaster/talents
-- Double Barrel
LCT_SpellData[202335] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	talent = true,
	cooldown = 45,
}
-- Avert Harm
LCT_SpellData[202162] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	talent = true,
	cooldown = 45,
}

-- Monk/Windwalker
-- Zen Moment
LCT_SpellData[201325] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	defensive = true,
	duration = 10,
	cooldown = 45
}
-- Touch of Death
LCT_SpellData[115080] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	offensive = true,
	cooldown = 120,
}
-- Storm, Earth, and Fire
LCT_SpellData[137639] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	offensive = true,
	cooldown = 90,
}
-- Grapple Weapon
LCT_SpellData[233759] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	disarm = true, -- V: TODO disarms
	cooldown = 60
}
-- Energizing Brew
LCT_SpellData[115288] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	offensive = true,
	duration = 6,
	cooldown = 60,
}
-- Fists of Fury
LCT_SpellData[113656] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	offensive = true,
	duration = 4,
	cooldown = 25,
}
-- Flying Serpent Kick
LCT_SpellData[101545] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	cooldown = 25,
}
-- Rising Sun Kick
LCT_SpellData[107428] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	offensive = true,
	cooldown = 8,
}
-- Touch of Karma
LCT_SpellData[122470] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	offensive = true,
	defensive = true,
	duration = 10,
	cooldown = 90
}
-- Mond/Windwalker/talents
-- Fist of the White Tiger
LCT_SpellData[261947] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	talent = true,
	cooldown = 30,
}
-- Invoke Xuen, the White Tiger
LCT_SpellData[123904] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	talent = true,
	duration = 20,
	cooldown = 120,
}
-- Serenity
LCT_SpellData[152173] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	talent = true,
	offensive = true,
	duration = 8,
	cooldown = 90,
	replaces = 137639 -- Storm, Earth, and Fire
}

-- Monk/Mistweaver
-- Detox (MW)
LCT_SpellData[115450] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8,
}
-- Life Cocoon
LCT_SpellData[116849] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	heal = true,
	duration = 12,
	cooldown = 120,
}
-- Renewing Mist
LCT_SpellData[115151] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	heal = true,
	cooldown = 8
}
-- Revival
LCT_SpellData[115310] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	mass_dispel = true,
	cooldown = 180
}
-- Thunder Focus Tea
LCT_SpellData[116680] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	heal = true,
	duration = 30,
	cooldown = 45
}
-- Monk/Mistweaver/talents
-- Summon Jade Serpent
LCT_SpellData[115313] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	talent = true,
	heal = true,
	cooldown = 10
}
-- Invoke Chi-Ji, red crane
LCT_SpellData[198664] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	talent = true,
	heal = true,
	duration = 45,
	cooldown = 180
}
-- Mana Tea
LCT_SpellData[197908] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	talent = true,
	heal = true,
	duration = 10,
	cooldown = 90
}
-- Way of the Crane
LCT_SpellData[216113] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	talent = true,
	duration = 15,
	cooldown = 60
}
-- Song of Chi-Ji
LCT_SpellData[198898] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	talent = true,
	cc = true,
	cooldown = 30,
}