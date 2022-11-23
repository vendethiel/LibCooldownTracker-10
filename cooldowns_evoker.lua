-- ================ EVOKER ================

local SPEC_EVOKER_DEVASTATION = 1467
local SPEC_EVOKER_PRESERVATION = 1468

-- Evoker/Baseline
-- Fire Breath
LCT_SpellData[357208] = {
  class = "EVOKER",
  cooldown = 30,
  -- TODO: Fire Breath's CD is reduced when consuming essence bursts when
  --       talented into 'Feed the Flames'
}

-- Blessing of the Bronze
LCT_SpellData[364342] = {
  class = "EVOKER",
  cooldown = 15
}

-- Hover
LCT_SpellData[358267] = {
  class = "EVOKER",
  cooldown = 35,
  opt_charges = 2 -- Hover gets two charges with the 'Aerial Mastery' talent
}

-- Living Flame
LCT_SpellData[361469] = {
  class = "EVOKER",
  heal = true,
}

-- Deep Breath
LCT_SpellData[357210] = {
  class = "EVOKER",
  cooldown = 120,
  opt_lower_cooldown = 60 -- Reduced by the 'Onyx Legacy' talent
}

-- Fury of the Aspects
LCT_SpellData[390386] = {
  class = "EVOKER",
  cooldown = 300
}

-- Disintegrate
LCT_SpellData[356995] = {
  class = "EVOKER"
}

-- Azure Strike
LCT_SpellData[362969] = {
  class = "EVOKER"
}

-- Emerald Blossom
LCT_SpellData[355913] = {
  class = "EVOKER",
  cooldown = 30,
  heal = true,
}

-- Return
LCT_SpellData[361227] = {
  class = "EVOKER"
}

-- Evoker Talents
-- Obsidian Scales
LCT_SpellData[363916] = {
  class = "EVOKER",
  talent = true,
  duration = 12,
  cooldown = 150,
  defensive = true,
  opt_charges = 2 -- With the Obsidian Bulwalk talent
}

-- Oppressing Roar
LCT_SpellData[372048] = {
  class = "EVOKER",
  talent = true,
  cooldown = 120,
  duration = 10
  -- TODO: Oppressing Roar's cooldown can be reduced when talented into 'Overawe'
  --       which reduces the CD by 20s/Enrage removed.
}

-- Sleep Walk
LCT_SpellData[360806] = {
  class = "EVOKER",
  talent = true,
  cooldown = 15,
  cc = true,
}

-- Unravel
LCT_SpellData[368432] = {
  class = "EVOKER",
  talent = true,
  cooldown = 9
}

-- Expunge
LCT_SpellData[365585] = {
  class = "EVOKER",
  talent = true,
  cooldown = 8,
  dispel = true,
  cooldown_starts_on_dispel = true
}

-- Cauterizing Flame
LCT_SpellData[374251] = {
  class = "EVOKER",
  talent = true,
  cooldown = 60,
  dispel = true,
  cooldown_starts_on_dispel = true,
  heal = true,
}

-- Landslide
LCT_SpellData[358385] = {
  class = "EVOKER",
  talent = true,
  cooldown = 150,
  opt_lower_cooldown = 120 -- Reduced by the 'Forger of Mountains' talent
}

-- Quell
LCT_SpellData[351338] = {
  class = "EVOKER",
  talent = true,
  cooldown = 40,
  interrupt = true,
  opt_lower_cooldown = 20 -- Reduced by the 'Imposing Presence' talent
}

-- Renewing Blaze
LCT_SpellData[374348] = {
  class = "EVOKER",
  talent = true,
  cooldown = 150,
  duration = 8,
  heal = true,
  defensive = true,
  opt_lower_cooldown = 120 -- Reduced by the 'Fire Within' talent
}

-- Rescue
LCT_SpellData[370665] = {
  class = "EVOKER",
  talent = true,
  cooldown = 60
}

-- Verdant Embrace
LCT_SpellData[360995] = {
  class = "EVOKER",
  talent = true,
  cooldown = 24,
  heal = true
}

-- Tip the Scales
LCT_SpellData[370553] = {
  class = "EVOKER",
  talent = true,
  cooldown = 120
}

-- Time Spiral
LCT_SpellData[374968] = {
  class = "EVOKER",
  talent = true,
  cooldown = 120
}

-- Zephyr
LCT_SpellData[374227] = {
  class = "EVOKER",
  talent = true,
  duration = 8,
  cooldown = 120
}

-- Preservation Specific Abilities
-- Renewing Breath

-- Naturalize
LCT_SpellData[360823] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 8,
  dispel = true,
  cooldown_starts_on_dispel = true
}

-- Mass Return
LCT_SpellData[361178] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION }
}

-- Devastation Talents
-- Dragonrage
LCT_SpellData[375087] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_DEVASTATION },
  talent = true,
  offensive = true,
  cooldown = 120
}

-- Eternity Surge
LCT_SpellData[359073] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_DEVASTATION },
  talent = true,
  cooldown = 30
}

-- Shattering Star
LCT_SpellData[370452] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_DEVASTATION },
  talent = true,
  offensive = true,
  cooldown = 15
}

-- Pyre
LCT_SpellData[357211] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_DEVASTATION },
  talent = true
}

-- Firestorm
LCT_SpellData[368847] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_DEVASTATION },
  talent = true,
  cooldown = 20
}

-- Preservation Talents
-- Echo
LCT_SpellData[364343] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  heal = true,
}

-- Dream Breath
LCT_SpellData[355936] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 35,
  heal = true,
}

-- Temporal Anomaly
LCT_SpellData[373861] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  duration = 6,
  cooldown = 6,
  heal = true,
}

-- Time Dilation
LCT_SpellData[357170] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 60,
  duration = 8,
}

-- Spiritbloom
LCT_SpellData[367226] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 30,
  heal = true,
  opt_lower_cooldown = 20 -- Reduced by the 'Spiritual Clarity' talent
}

-- Rewind
LCT_SpellData[363534] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 240,
  heal = true,
  opt_lower_cooldown = 180 -- Reduced by the 'Temporal Artificer' talent
}

-- Stasis
LCT_SpellData[370537] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 150
}

-- Reversion
LCT_SpellData[366155] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 9,
  opt_charges = 2, -- Charges added with the 'Punctuality' talent
  heal = true
}

-- Dream Flight
LCT_SpellData[359816] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 120,
  heal = true
}

-- Emerald Communion
LCT_SpellData[370960] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 180,
  heal = true
}

-- Devastation PvP Talents
-- Nullifying Shroud
LCT_SpellData[378464] = {
  class = "EVOKER",
  talent = true,
  cooldown = 150
}

-- Chrono Loop
LCT_SpellData[383005] = {
  class = "EVOKER",
  talent = true,
  cooldown = 150
}

-- Time Stop
LCT_SpellData[378441] = {
  class = "EVOKER",
  talent = true,
  duration = 4,
  cooldown = 120,
  defensive = true
}

-- Swoop Up
LCT_SpellData[370388] = {
  class = "EVOKER",
  talent = true,
  cooldown = 150
}

-- Preservation PvP Talents
-- Dream Projection
LCT_SpellData[377509] = {
  class = "EVOKER",
  specID = { SPEC_EVOKER_PRESERVATION },
  talent = true,
  cooldown = 150
}

-- Covenant Abilities
-- Boon of the Covenants
LCT_SpellData[387168] = {
  class = "EVOKER",
  offensive = true,
  duration = 12,
  cooldown = 120
}
