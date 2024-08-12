--!strict

--[=[
    @class Set
    A class for creating and interacting with sets.

    Sets are tables which can not contain any duplicates. Upon calling Set.new() it will return a Set which will contain a table object. This library also contains insert,
    remove and clear function

    You should not insert, remove or clear the set by accessing the table object.
]=]
local Set = {}
Set.__index = Set

--[=[
    @prop tbl {}
    @within Set
    A reference to the table used in a set.
]=]

--[=[
    @type Set {tbl: {}}
    @within Set
    A table which cannot contain any duplicates.
]=]
export type Set = {tbl: {}}

--[=[
    @tag Constructor
    @function new

]=]
function Set.new(tbl: {}): Set
    local class = {}
    class.tbl = tbl
    return class
end

function Set.insert(set: Set, value: any): ()
    local insertIndex = 0
    
    for i,v in ipairs(set.tbl) do
        -- account for all the used indexes
        insertIndex += 1
    end

    -- add one to write to the last index
    insertIndex += 1

    -- write to the last index
    set.tbl[insertIndex] = value
end

