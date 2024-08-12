--!strict

--[=[
    @ignore
    @class Set
    A class for creating and interacting with sets.

    Sets are tables which can not contain any duplicates. Upon calling Set.new() it will return a Set which will contain a table object. This library also contains insert,
    remove and clear function

    You should not insert, remove or clear the set by accessing the table object.
]=]
local Set = {}
Set.__index = Set

--[=[
    @ignore
    @prop tbl {}
    @within Set
    A reference to the table used in a set.
]=]

--[=[
    @ignore
    @type Set {tbl: {}}
    @within Set
    A table which cannot contain any duplicates.
]=]
export type Set = {tbl: {}}

export type SetRemoveOptions = {value: any | nil, index: any | nil}

--[=[
    @ignore
    @tag Constructor
    @function new
	@within Set

]=]
function Set.new(tbl: {}): Set
	local class = {}
	class.tbl = tbl
	return class
end

function Set.insert(set: Set, value: any): ()
	-- if we find a duplicate then return immediately
	if table.find(set.tbl, value) then
		return
	end

	-- otherwise, define the current index we are at
	local insertIndex = 0
	local overWroteNil = false

	-- loop through the set's table to find the last written index
	for i,v in ipairs(set.tbl) do
		-- lets check if v is nil and overWroteNil is false
		if v == nil and not overWroteNil then
			set.tbl[i] = value
		else
			-- otherwise account for all the used indexes
			insertIndex += 1
		end
	end
	
	-- if we used a nil space then return
	if overWroteNil then
		return
	end
	
	-- add one to write to the last index
	insertIndex += 1

	-- write to the last index
	set.tbl[insertIndex] = value
	return
end

function Set.remove(set: Set, options: SetRemoveOptions)
	-- if index is not nil, then we can set the index in the table to nil and return 
	if options.index ~= nil then
		set.tbl[options.index] = nil
		return
	end

	-- now, because no index was provided, if no value was provided there is nothing to search for and we should error
	if options.value == nil then
		error("did not provide index or value in Set.remove arg #2", 3)
		return
	end

	-- otherwise, loop through and find the value and remove it
	for i,v in ipairs(set.tbl) do
		if v == options.value then
			set.tbl[i] = nil
			return 
		end
	end

	return
end

function Set.clear(set: Set)
	-- just call table.clear on the set's table and return
	table.clear(set.tbl)
	return
end

return Set