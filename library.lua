--[[
	Callbacks:
		LCT_CooldownUsed(unitid, spellid)
		LCT_CooldownsReset(unit)

	Functions:
		lib:RegisterUnit(unitid)
		lib:UnregisterUnit(unitid)
		tpu = lib:GetUnitCooldownInfo(unitid, spellid)
		for spellid, spell_data in lib:IterateCooldowns(class, specID, race) do
		spell_data = lib:GetCooldownData(spellid)
		spells_data = lib:GetCooldownsData()
]]

local version = 1
local lib = LibStub:NewLibrary("LibCooldownTracker-1.0", version)

if not lib then return end

-- global functions
local pairs, type, next, select, assert = pairs, type, next, select, assert
local GetTime, UnitGUID, IsInInstance = GetTime, UnitGUID, IsInInstance

lib.frame = lib.frame or CreateFrame("Frame")
lib.callbacks = lib.callbacks or LibStub("CallbackHandler-1.0"):New(lib)

-- init event handler
local events = {}
do
	lib.frame:SetScript("OnEvent",
		function(self, event, ...)
			return events[event](lib, event, ...)
		end)
end

-- insert additional info into SpellData
do
	for spellid, spelldata in pairs(LCT_SpellData) do
		if type(spelldata) == "table" then
			-- add name and icon
			local name, _, icon = GetSpellInfo(spellid)	

			if not name then
				print("LibCooldownTracker-1.0: bad spellid: " .. spellid)
			else
				spelldata.name = name
				spelldata.icon = icon

				-- convert specID list into a more appropiate format for doing lookups
				if spelldata.specID then
					local specs = {}
					for i = 1, #spelldata.specID do
						specs[spelldata.specID[i]] = true
					end
					spelldata.specID_table = specs
				end
			end
		end
	end
end
local SpellData = LCT_SpellData
LCT_SpellData = nil

-- state
lib.guid_to_unitid = lib.guid_to_unitid or {} -- [guid] = unitid
lib.tracked_players = lib.tracked_players or {} --[[
	[unitid][spellid] = {
		["cooldown_start"] = time,
		["cooldown_end"] = time,
		["used_start"] = time,
		["used_end"] = time,
		["detected"] = boolean,
		[EVENT] = time
	}
]]
lib.registered_units = lib.registered_units or {} -- [unitid] = count

local function RemoveGUID(unit)
	-- find and delete old reference to that unit
	for guid, unitid in pairs(lib.guid_to_unitid) do
		if unitid == unit then
			lib.guid_to_unitid[guid] = nil
			break
		end
	end
end

local function UpdateGUID(unit)
	RemoveGUID(unit)

	local guid = UnitGUID(unit)
	if guid then
		lib.guid_to_unitid[guid] = unit
	end
end

local function CooldownUsed(event, unit, spellId)
	local spelldata = SpellData[spellId]
	if not spelldata then return end

	if type(spelldata) == "number" then
		spellId = spelldata
		spelldata = SpellData[spelldata]
	end

	if lib:IsUnitRegistered(unit) then
		local now = GetTime()

		if not lib.tracked_players[unit] then
			lib.tracked_players[unit] = {}
		end

		local tpu = lib.tracked_players[unit]

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

		lib.callbacks:Fire("LCT_CooldownUsed", unit, spellId)
	end
end

local function enable()
	lib.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
	lib.frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	lib.frame:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	lib.frame:RegisterEvent("UNIT_NAME_UPDATE")

	lib.tracked_players = {}
	lib.guid_to_unitid = {}

	for unitid in pairs(lib.registered_units) do
		UpdateGUID(unitid)
	end
end

local function disable()
	lib.frame:UnregisterAllEvents()
end

function lib.callbacks:OnUsed(target, event)
	if event == "LCT_CooldownUsed" then
		enable()
	end
end

function lib.callbacks:OnUnused(target, event)
	if event == "LCT_CooldownUsed" then
		disable()
	end
end

--- Registers an unit to be tracked by the library. While the same unit may be registered more than once, it is important that
-- UnregisterUnit is called exactly once for each call to RegisterUnit.
-- @param unitid the unitid to register.
function lib:RegisterUnit(unitid)
	local count = (lib.registered_units[unitid] or 0) + 1
	if count == 1 then
		UpdateGUID(unitid)
	end
	lib.registered_units[unitid] = count
	return count
end

--- Unregisters an unit. While the same unit may be registered more than once, it is important that
-- UnregisterUnit is called exactly once for each call to RegisterUnit.
-- @param unitid the unitid to unregister.
function lib:UnregisterUnit(unitid)
	assert(lib.registered_units[unitid] ~= nil, "Attempting to unregister a unit not registered")

	local count = lib.registered_units[unitid] - 1
	if count == 0 then
		lib.registered_units[unitid] = nil
		RemoveGUID(unitid)
	else
		lib.registered_units[unitid] = count
	end
	return count
end

function lib:IsUnitRegistered(unitid)
	return lib.registered_units[unitid]
end

--- Returns a table with the state of a unit's cooldown, or nil if there is no state stored about it.
-- @param unitid the unit unitid
-- @param spellid the cooldown spellid
-- @return The table returned by this function contains the following values (times are as returned by GetTime()):
-- <<	["cooldown_start"] = time>>
-- <<	["cooldown_end"] = time>>
-- <<	["used_start"] = time>>
-- <<	["used_end"] = time>>
-- <<	["detected"] = boolean -- true if the unit has been detected using this spell before (useful to confirm is a unit has a specific talent or glyph)>>
function lib:GetUnitCooldownInfo(unitid, spellid)
	local tpu = lib.tracked_players[unitid]
	return tpu and tpu[spellid]
end

--- Returns the raw data of all the cooldowns. See the cooldowns_*.lua data files for more details about its structure.
function lib:GetCooldownsData()
	return SpellData
end

--- Returns the raw data of a specified cooldown spellid.
function lib:GetCooldownData(spellid)
	return SpellData[spellid]
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
				if state.specID and spelldata.specID_table and spelldata.specID_table[state.specID] then
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

--- Iterates over the cooldowns that apply to a unit of the specified //class//, //specID// and //race//.
-- @param class the unit class. Can be nil.
-- @param specID the unit talent spec ID. Can be nil.
-- @param race the unit race. Can be nil.
function lib:IterateCooldowns(class, specID, race)
	local state = {}
	state.class = class
	state.specID = specID
	state.race = race
	return CooldownIterator, state
end

function events:PLAYER_ENTERING_WORLD()
	local instanceType = select(2, IsInInstance())

	-- reset cooldowns when joining an arena
	if instanceType == "arena" then
		for unit in pairs(lib.tracked_players) do
			lib.tracked_players[unit] = nil
			lib.callbacks:Fire("LCT_CooldownsReset", unit)
		end
	end
end

function events:UNIT_SPELLCAST_SUCCEEDED(event, unit, spellName, rank, lineaID, spellId)
	CooldownUsed("SPELL_CAST_SUCCESS", unit, spellId)
end

function events:COMBAT_LOG_EVENT_UNFILTERED(_, timestamp, event, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId, spellName, spellSchool)
	if not lib.guid_to_unitid[sourceGUID] then return end
	local spelldata = SpellData[spellId]
	if not spelldata then return end

	if event == "SPELL_DISPEL" or
	   event == "SPELL_AURA_REMOVED" or
	   event == "SPELL_AURA_APPLIED" or
	   event == "SPELL_CAST_SUCCESS" then
		CooldownUsed(event, lib.guid_to_unitid[sourceGUID], spellId)
	end
end

function events:UNIT_NAME_UPDATE(event, unit)
	UpdateGUID(unit)
end