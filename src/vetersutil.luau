--!strict
--[[
	vetersutil (Veter's Utility) is a library full of many utility functions.
	docs page: https://veternitzz.github.io/vetersutil
]]

-- TODO: Improve docs, they suck atm.

-- // Library
local vetersutil = {}

-- // Functions

--[=[
	Checks `tbl` and returns true if any of the values in the table are true.

	@function any
	@param tbl {} -- The table to check
	@return boolean
]=]
function vetersutil.any(tbl: {}): boolean
	local index = #tbl
	
	if index == 0 then
		return false
	end
	
	for i,v in ipairs(tbl) do
		if v == true then
			return true
		end
	end
	
	return false
end

--[=[
	Checks `tbl` and returns true if all of the values in the table are true. Ignores non-boolean values. Also returns false if there are no boolean values.

	@function all
	@param tbl {} -- The table to check
	@return boolean
    @tag Table
]=]
function vetersutil.all(tbl: {}): boolean
    -- TODO: Reformat this to make it more performant, it's quite slow atm.
	local index = #tbl
	local truths = 0
	
	for i,v in ipairs(tbl) do
		
		if v ~= typeof('boolean') then
			index -= 1
		end
		
		if v == typeof('boolean') then
			if v == true then
				truths += 1
			end
		end
	end
	
	if truths == index then
		return true
	end
	
	if index == 0 then
		return false
	end
	
	return false
end

-- i don't even know if moonwave will return that tbh. 90/10 it doesn't.
-- hell, i don't even know what that is tbh.
--[=[
    Formats ``formatString`` and prints it to the output. Just a ``string.format`` wrapper lol.

    @function printf
    @param formatString string -- The string to format
    @param ... any -- The variables to format with
    @return ()
    @tag General
]=]
function vetersutil.printf(formatString: string, ...: any): ()
	print(string.format(formatString, ...))
end

--[=[
    Returns a clone of `tbl`, having removed all duplicate values. Pulled this one straight from python.

    @function set
    @param tbl {} -- The table to remove all duplicate values in
    @return {}
    @tag Table
]=]
function vetersutil.set(tbl: {}): {}
	local newTbl = table.clone(tbl)
	local duplicates = {}
	
	for i,v in ipairs(newTbl) do
		if not table.find(duplicates, v) then
			table.insert(duplicates, v)
		else
			table.remove(newTbl, i)
		end
	end
	
	return newTbl
end

-- i don't know if moonwave will let me group something with two tags. we're gonna find out.
--[=[
    Takes in ``tbl`` of strings and joins each string together using ``sep`` as a separator, then returns the new string. Set ``sep`` to an empty string for no separator.

    @function jstring
    @param tbl {string} -- The table to join
    @param sep string -- The separator to separate each string with
    @return string
    @tag String
    @tag Table
]=]
function vetersutil.jstring(tbl: {string}, sep: string): string	
	local str = ""
	
	for i,v in ipairs(tbl) do
		if i == 1 then
			str = str..v
		else
			str = str..sep..v
		end
		
	end
	
	return str
end

--[=[
    Looks through ``tbl`` and returns all a table containing the values which are the type specified by ``Type``. Returns nil if none match ``Type``.

    @function getValuesOfType
    @param tbl {} -- The table to look through
    @param Type string -- The type to check for
    @return {} | nil
]=]
function vetersutil.getValuesOfType(tbl: {}, Type: string): {} | nil
	local values = {}
	local returnNil = true
	
	for i,v in ipairs(tbl) do
		if v == typeof(Type) then
			table.insert(values, v)
			returnNil = false
		end
	end
	
	if not returnNil then
		return values
	end
	
	return nil
end

return vetersutil