local version = 1
local lib = LibStub:NewLibrary("LibCooldownTracker-1.0", version)

if not lib then return end

lib.callbacks = lib.callbacks or LibStub("CallbackHandler-1.0"):New(lib)

if not lib.frame then
	lib.frame = CreateFrame("Frame")
	lib.frame:SetScript("OnEvent",
		function(self, event, ...)
			return lib[event](lib, event, ...)
		end)
end

-- global functions
local tinsert, tsort = table.insert, table.sort
local pairs, ipairs, select, type = pairs, ipairs, select, type
local min, max = math.min, math.max
local GetTime, UnitExists, UnitFactionGroup, UnitRace, UnitGUID = GetTime, UnitExists, UnitFactionGroup, UnitRace, UnitGUID
local SpellData = LCT_SpellData
LCT_SpellData = nil

-- state
local guid_to_unitid = {} -- [guid] = unitid
local tracked_players = {} --[[
	[unitid][spellid] = {
		["cooldown_start"] = time,
		["cooldown_end"] = time,
		["used_start"] = time,
		["used_end"] = time,
		["detected"] = boolean,
		[EVENT] = time
	}
]]
local registered_units = {} -- [unitid] = count

-- Callbacks
-- CooldownUsed(unitid, spellid)

-- RegisterUnit(unitid)
-- UnregisterUnit(unitid)
-- tpu = GetUnitCooldownInfo(unitid, spellid)
-- spellid, spell_data in IterateCooldowns(class, specId, race)
-- SpellData = GetCooldownsData()
-- spell_data = GetCooldownData(spellid)

function lib:Enable()
	self.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
	self.frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	self.frame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	self.frame:RegisterEvent("UNIT_NAME_UPDATE")

	tracked_players = {}
	guid_to_unitid = {}
	for unitid in pairs(tracked_players) do
		self:UpdateGUID(unitid)
	end
end

function lib:Disable()
	self.frame:UnregisterAllEvents()
end

function lib.callbacks:OnUsed(target, event)
	if event == "CooldownUsed" then
		lib:Enable()
	end
end

function lib.callbacks:OnUnused(target, event)
	if event == "CooldownUsed" then
		lib:Disable()
	end
end

function lib:RegisterUnit(unitid)
	local count = (registered_units[unitid] or 0) + 1
	if count == 1 then
		self:UpdateGUID(unitid)
	end
	registered_units[unitid] = count
	return count
end

function lib:UnregisterUnit(unitid)
	assert(registered_units[unitid] ~= nil, "Attempting to unregister a unit not registered")

	local count = registered_units[unitid] - 1
	if count == 0 then
		registered_units[unitid] = nil
		self:RemoveGUID(unitid)
	else
		registered_units[unitid] = count
	end
	return count
end

function lib:IsUnitRegistered(unitid)
	return registered_units[unitid]
end

function lib:GetUnitCooldownInfo(unitid, spellid)
	local tpu = tracked_players[unitid]
	return tpu and tpu[spellid]
end

function lib:GetCooldownsData()
	return SpellData
end

function lib:GetCooldownData(spellid)
	return SpellData[spellid]
end

function lib:PLAYER_ENTERING_WORLD()
	local instanceType = select(2, IsInInstance())

	-- reset cooldowns when joining an arena
	if instanceType == "arena" then
		for unit in pairs(tracked_players) do
			tracked_players[unit] = nil
			self.callbacks:Fire("CooldownsReset", unit)
		end
	end
end

function lib:UNIT_SPELLCAST_SUCCEEDED(event, unit, spellName, rank, lineaID, spellId)
	self:CooldownUsed("SPELL_CAST_SUCCESS", unit, spellId)
end

function lib:COMBAT_LOG_EVENT_UNFILTERED(_, timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId, spellName, spellSchool)
	if not guid_to_unitid[sourceGUID] then return end
	local spelldata = SpellData[spellId]
	if not spelldata then return end

	if event == "SPELL_DISPEL" or
	   event == "SPELL_AURA_REMOVED" or
	   event == "SPELL_AURA_APPLIED" or
	   event == "SPELL_CAST_SUCCESS" then
		self:CooldownUsed(event, guid_to_unitid[sourceGUID], spellId)
	end
end

function lib:UNIT_NAME_UPDATE(event, unit)
	-- hopefully at this point the opponent's faction is known
	self:UpdateGUID(unit)
end

function lib:CooldownUsed(event, unit, spellId)
	local spelldata = SpellData[spellId]
	if not spelldata then return end

	if type(spelldata) == "number" then
		spellId = spelldata
		spelldata = SpellData[spelldata]
	end

	if self:IsUnitRegistered(unit) then
		local now = GetTime()

		if not tracked_players[unit] then
			tracked_players[unit] = {}
		end

		local tpu = tracked_players[unit]

		-- check if the same spell cast was detected recently
		-- if so, we assume that the first detection time is more accurate and ignore this one
		if tpu[spellId] then
			if (event == "SPELL_CAST_SUCCESS" or event == "SPELL_AURA_APPLIED") and (
				(tpu[spellId]["SPELL_AURA_APPLIED"] and (tpu[spellId]["SPELL_AURA_APPLIED"] + 3) > now) or
				(tpu[spellId]["SPELL_CAST_SUCCESS"] and (tpu[spellId]["SPELL_CAST_SUCCESS"] + 3) > now))
				then
				return
			end
		else
			tpu[spellId] = { detected = true }
		end

		tpu[spellId][event] = now

		-- find what actions are needed
		local used_start, used_end, cooldown_start

		if spelldata.cooldown_starts_on_dispel then
			if event == "SPELL_DISPEL" then
				used_start = true
				cooldown_start = true
			end
		elseif spelldata.cooldown_starts_on_aura_fade then
			if event == "SPELL_CAST_SUCCESS" or event == "SPELL_AURA_APPLIED" then
				used_start = true
			elseif event == "SPELL_AURA_REMOVED" then
				cooldown_start = true
			end
		else
			if event == "SPELL_CAST_SUCCESS" or event == "SPELL_AURA_APPLIED" then
				used_start = true
				cooldown_start = true
			elseif event == "SPELL_AURA_REMOVED" then
				used_end = true
			end
		end

		if used_start then
			tpu[spellId].used_start = now
			tpu[spellId].used_end = spelldata.duration and (now + spelldata.duration)

			-- reset other cooldowns (Cold Snap, Preparation)
			if spelldata.resets then
				for i = 1, #spelldata.resets do
					local rspellid = spelldata.resets[i]
					if tpu[rspellid] then
						tpu[rspellid].cooldown_start = 0
						tpu[rspellid].cooldown_end = 0
					end
				end
			end
		end
		if used_end then
			tpu[spellId].used_end = now
		end

		if cooldown_start then
			tpu[spellId].cooldown_start = spelldata.cooldown and now
			tpu[spellId].cooldown_end = spelldata.cooldown and (now + spelldata.cooldown)

			-- set other cooldowns
			if spelldata.sets_cooldown then
				local cspellid = spelldata.sets_cooldown.spellid
				local cspelldata = SpellData[cspellid]
				if (tpu[cspellid] and tpu[cspellid].detected) or (not cspelldata.talent and not cspelldata.glyph) then
					if not tpu[cspellid] then
						tpu[cspellid] = {}
					end
					if not tpu[cspellid].cooldown_end or (tpu[cspellid].cooldown_end < (now + spelldata.sets_cooldown.cooldown)) then
						tpu[cspellid].cooldown_start = now
						tpu[cspellid].cooldown_end = now + spelldata.sets_cooldown.cooldown
						tpu[cspellid].used_start = tpu[cspellid].used_start or 0
						tpu[cspellid].used_end = tpu[cspellid].used_end or 0
					end
				end
			end
		end

		self.callbacks:Fire("CooldownUsed", unit, spellId)
	end
end

local function CooldownIterator(state, spellid)
	while true do
		spellid = next(SpellData, spellid)
		if spellid == nil then
			return
		end
		local spelldata = SpellData[spellid]
		-- ignore references to other spells
		if type(spelldata) ~= "number" then
			if state.class and state.class == spelldata.class then
				if state.specID and spelldata.specID and spelldata.specID[state.specID] then
					-- add spec
					return spellid, spelldata
				elseif not spelldata.specID then
					-- add base
					return spellid, spelldata
				end
			end

			if state.race and state.race == spelldata.race then
				-- return racial
				return spellid, spelldata
			end

			if spelldata.item then
				-- return item
				return spellid, spelldata
			end
		end
	end
end

function lib:IterateCooldowns(class, specID, race)
	local state = {}
	state.class = class
	state.specID = specID
	state.race = race
	return CooldownIterator, state
end

function lib:RemoveGUID(unit)
	-- find and delete old reference to that unit
	for guid, unitid in pairs(guid_to_unitid) do
		if unitid == unit then
			guid_to_unitid[guid] = nil
			break
		end
	end
end

function lib:UpdateGUID(unit)
	self:RemoveGUID(unit)

	local guid = UnitGUID(unit)
	if guid then
		guid_to_unitid[guid] = unit
	end
end
