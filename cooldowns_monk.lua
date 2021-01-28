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
-- Paralysis
LCT_SpellData[115078] = {
	class = "MONK",
	cc = true,
	cooldown = 45,
}
-- Transcendence
LCT_SpellData[101643] = {
	class = "MONK",
	cooldown = 10,
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
	opt_lower_cooldown = 50, -- with Tiger Tail Sweep
}
-- Provoke
LCT_SpellData[115546] = {
	class = "MONK",
	cooldown = 8
}
-- Touch of Death
LCT_SpellData[322109] = {
	class = "MONK",
	offensive = true,
	cooldown = 180,
}
-- Monk/mixed
-- Detox
LCT_SpellData[218164] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER, SPEC_MONK_BREWMASTER },
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8,
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
-- Tiger's Lust
LCT_SpellData[116841] = {
	class = "MONK",
	talent = true,
	defensive = true,
	duration = 6,
	cooldown = 30,
}
-- Dampen Harm
LCT_SpellData[122278] = {
	class = "MONK",
	talent = true,
	defensive = true,
	duration = 10,
	cooldown = 120,
}
-- Chi Burst
LCT_SpellData[123986] = {
	class = "MONK",
	talent = true,
	offensive = true,
	cooldown = 30,
}
-- Chi Torpedo
LCT_SpellData[115008] = {
	class = "MONK",
	talent = true,
	charges = 2,
	cooldown = 20,
	replaces = 109132 -- Roll
}
-- Chi Wave
LCT_SpellData[115098] = {
	class = "MONK",
	talent = true,
	cooldown = 15
}
-- Ring of Peace
LCT_SpellData[116844] = {
	class = "MONK",
	talent = true,
	defensive = true,
	duration = 5,
	cooldown = 45,
}
-- Monk/mixed/talents
-- Diffuse Magic (mistweaver & windwalker)
LCT_SpellData[122783] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER, SPEC_MONK_WINDWALKER },
	talent = true,
	defensive = true,
	duration = 6,
	cooldown = 90
}
-- Grapple Weapon
LCT_SpellData[233759] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER, SPEC_MONK_WINDWALKER },
	talent = true,
	cc = true,
	duration = 6,
	cooldown = 60
}

-- Monk/Brewmaster
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
-- Purifying Brew
LCT_SpellData[119582] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	cooldown = 15,
	charges = 3, -- TODO shared with Ironskin Brew
}
-- Fortifying Brew (Brewmaster)
LCT_SpellData[115203] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	defensive = true,
	duration = 15,
	cooldown = 360,
}
-- Fortifying Brew (Mistweaver/Windwalker)
LCT_SpellData[115203] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER, SPEC_MONK_WINDWALKER },
	defensive = true,
	duration = 15,
	cooldown = 180,
}
-- Breath of Fire
LCT_SpellData[115181] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	offensive = true,
	cooldown = 15,
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
-- Black Ox Brew
LCT_SpellData[115399] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	talent = true,
	talent = true,
	cooldown = 120
}
-- Invoke Niuzao, the Black Ox
LCT_SpellData[132578] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	talent = true,
	cooldown = 180
}
-- Summon Black Ox Statue
LCT_SpellData[115315] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	talent = true,
	cooldown = 10,
}
-- Rushing Jade Wind (BM)
LCT_SpellData[116847] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	talent = true,
	cooldown = 6
}
-- Mighty Ox Kick
LCT_SpellData[202370] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	talent = true,
	cooldown = 30
}
-- Guard
LCT_SpellData[115295] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	talent = true,
	defensive = true,
	cooldown = 30
}
-- Craft: Nimble Brew
LCT_SpellData[213658] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	talent = true,
	charges = 2,
	cooldown = 60
}
-- Admonishment
LCT_SpellData[207025] = {
	class = "MONK",
	specID = { SPEC_MONK_BREWMASTER },
	cooldown = 20,
	replaces = 115546 -- Provoke
}
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
-- Storm, Earth, and Fire
LCT_SpellData[137639] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	offensive = true,
	charges = 2,
	cooldown = 90,
}
-- Energizing Elixir
LCT_SpellData[115288] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	talent = true,
	offensive = true,
	cooldown = 60,
}
-- Fists of Fury
LCT_SpellData[113656] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	offensive = true,
	cooldown = 24,
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
-- Rushing Jade Wind (WW)
LCT_SpellData[261715] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	talent = true,
	cooldown = 6
}
-- Invoke Xuen, the White Tiger
LCT_SpellData[123904] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	duration = 20,
	cooldown = 120,
}
-- Mond/Windwalker/talents
-- Whirling Dragon Punch
LCT_SpellData[152175] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	talent = true,
	offensive = true,
	cooldown = 24
}
-- Fist of the White Tiger
LCT_SpellData[261947] = {
	class = "MONK",
	specID = { SPEC_MONK_WINDWALKER },
	talent = true,
	cooldown = 30,
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
-- Detox
LCT_SpellData[115450] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	dispel = true,
	cooldown_starts_on_dispel = true,
	cooldown = 8,
}
-- Essence Font
LCT_SpellData[191837] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	cooldown = 12,
}
-- Life Cocoon
LCT_SpellData[116849] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	heal = true,
	duration = 12,
	cooldown = 75, -- Technically 120, but most monks play with -45s talent.
}
-- Renewing Mist
LCT_SpellData[115151] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	heal = true,
	cooldown = 9
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
	cooldown = 30
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
-- Zen Focus Tea
LCT_SpellData[209584] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	talent = true,
	duration = 5,
	cooldown = 45
}
-- Healing Sphere
LCT_SpellData[205234] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	talent = true,
	heal = true,
	charges = 3,
	cooldown = 15
}
-- Refreshing Jade Wind
LCT_SpellData[196725] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	talent = true,
	heal = true,
	cooldown = 9
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
-- Song of Chi-Ji
LCT_SpellData[198898] = {
	class = "MONK",
	specID = { SPEC_MONK_MISTWEAVER },
	talent = true,
	cc = true,
	cooldown = 30,
}

-- Covenant Abilities
-- Weapons of Order
LCT_SpellData[310454] = {
	class = "MONK",
  	covenant = "KYRIAN",
	offensive = true,
	duration = 30,
	cooldown = 120
}

-- Fallen Order
LCT_SpellData[326860] = {
	class = "MONK",
	covenant = "VENTHYR",
	offensive = true,
	duration = 24,
	cooldown = 180
}

-- Bonedust Brew
LCT_SpellData[325216] = {
	class = "MONK",
	covenant = "NECROLORD",
	offensive = true,
	duration = 10,
	cooldown = 60
}

-- Faeline Stomp
LCT_SpellData[327104] = {
	class = "MONK",
	covenant = "NIGHTFAE",
	offensive = true,
	duration = 30,
	cooldown = 30
}
