--[=[
    @class General

    A collection of general purpose utilities.
]=]
local General = {}
General.__index = General

--[=[
	Formats ``formatString`` and prints it to the output. Just a [``string.format``](https://create.roblox.com/docs/reference/engine/libraries/string#format) wrapper lol.

	@function printf
	@param formatString string -- The string to format
	@param ... any -- The variables to format with
	@return ()
	@within General
]=]
local function printf(formatString: string, ...: any): ()
	print(string.format(formatString, ...))
end

General.printf = printf

return General