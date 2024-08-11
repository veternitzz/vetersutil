--!strict

--[=[
    @class Set
    A class for creating and interacting with sets.

    Sets are tables which can not contain any duplicates. Upon calling Set.new() it will return a Set which will contain a table object and a remove, insert, getValues and 
    clear method.

    You should not insert, remove or clear the set by accessing the table object.
]=]
local Set = {}
Set.__index = Set

--[=[
    @type Set {table: {}, remove: any, insert: any, getValues: any, clear: any}
    @within Set
    A table which cannot contain any duplicates.
]=]
export type Set = {tbl: {}, remove: any, insert: any, getValues: any, clear: any}

--[=[
    @function new

]=]
function Set.new(tbl: {})
    local metatable = setmetatable({}, Set)
    metatable.__yes = "yes"
end

function Set:insert()
    
end