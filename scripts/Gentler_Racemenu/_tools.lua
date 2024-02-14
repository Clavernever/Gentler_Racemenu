-- ALL THESE GENERIC FUNCTIONS HEREBY PRESENTED CAN BE COPIED AND REUSED WHEREVER WHO READS DESIRES.|
-- No need to ask, notify, credit or even make note of my existence. It's all generic stuff readily available on the internet.

-- For floating point operations. | NEVER EVER COMPARE FLOATS WITH ~= YOU'LL REGRET IT | Also this is lua so remember EVERYTHING IS A FLOAT
local statdiff = 0
local eps = 0.001
--function assert_n(num) = assert(type(num) == 'number', 'DEBUG || Passed '.. type(num) ..' expected number') --| Debugging. Might come in handy.
function int(num)                          --[[assert_n(num)]] return math.floor(num + eps)                                    end
function less_than(a,b)                    --[[assert_n(num)]] return (b - a > eps)                                            end
function more_than(a,b)                    --[[assert_n(num)]] return (a - b > eps)                                            end
function equal(a,b)                        --[[assert_n(num)]] return (math.abs(b - a) < eps)                                  end
local function less_or_equal(a,b)          --[[assert_n(num)]] return (a - b < eps)                                            end
local function more_or_equal(a,b)          --[[assert_n(num)]] return (b - a < eps)                                            end
local function quotient(dividend, divisor) --[[assert_n(num)]] return ((int(dividend) - int(dividend) % divisor) / divisor)    end

-- For 'deep copying' AKA MAKING SURE YOU'RE NOT CHANGING STUFF YOU DON'T MEAN TO * breathes * I wish it was default behaviour, but muh memory or something.
local function get_n(num)                  --[[assert_n(num)]] return num                                                      end
local function get(var) -- var must be serializable, recursions WILL stack overflow :D
    if type(var)  ~= 'table' then return var
    else
        local deepcopy = {}
        for _key, _value in pairs(var) do deepcopy[_key] = get(_value) end
        return deepcopy
    end
end

-- For removing from tables. Setting to nil is absolutely fine and standard, but I think remove is more explicit in what behaviour it represents.. especially if you aren't too familiar with lua.
local function table_remove(table, key) table[key] = nil end

-- Find <thing> in <table> | For numbers, it uses equal(a, b)

local function table_find(table, thing)
    if type(thing) == 'number' then
        for k, v in pairs(table) do
            if equal(v, thing) then return thing end
        end
    else
        for k, v in pairs(table) do
            if v == thing then return thing end
        end
    end
end

-- For comparing two tables shallowly by their keys only. I use it to check if active spells have changed, but it can be used for inventories and the like as well.
local function table_keys_equal(a, b)
    for k in pairs(a) do
        if b[k] == nil then return false end
    end
    for k in pairs(b) do
        if a[k] == nil then return false end
    end
    return true
end

-- For dynamically making value-value enums out of an array/numbered enum.
local function makeKeyEnum(keys)
local result = {}
for _, key in ipairs(keys) do
  result[key] = key
end
return result
end
-- EXAMPLE:
MODULES = makeEnum { 'vanilla_races', 'vanilla_birthsigns', 'reincarnate', 'moonlight', 'karts_custom_boi' }

-- For dynamically making an index->key enum out of a .
local function makeIndexEnum(t)
    local RESULT = {}
    local i = 1
    for _k, _ in pairs(t) do
        RESULT[i] = _k
        i = i + 1
    end
    return RESULT
end

-- For turning a table with missing indices into an iterable table with indices 1...n where n is the ammount of original indices. Keeps the numeric order of the source table.
function get_iterable_table(t)
    local t_indexes = {}
    for _k, _ in pairs(t) do table.insert(t_indexes, _k) end
    table.sort(t_indexes)
    local iterable_t = {}
    for i, v in ipairs(t_indexes) do iterable_t[i] = t[v] end
    return iterable_t
end


-- on stat set test block:
--                 -- TESTING
--                 local totalattributes = 0
--                 for _name, _attribute in pairs(types.Player.stats.attributes) do
--                     totalattributes = totalattributes + get_val(types.Player.stats.attributes[_name](self).base)
--                 end
--                 local totalskills = 0
--                 for _name, _skill in pairs(types.Player.stats.skills) do
--                     totalskills = totalskills + get_val(types.Player.stats.skills[_name](self).base)
--                 end
--                 ui.showMessage('Totals: '.. totalattributes .. ' || ' .. totalskills)
--                 -- END TEST

-- setGlobals test block to start with a "birthsign"

-- -- TESTING
-- local types = require('openmw.types')
-- types.Player.setBirthSign(world.players[1], 'fay')
-- -- END

-- -- If the characther has no birthsign for whatever reason (most likely the testing launcher option) then add a token sign so the mod doesn't explode.
-- do
--     local sign = types.Player.getBirthSign(self)
--     if (sign == '') or (not sign) then types.Player.setBirthSign(self, types.Player.birthSigns.records[1].id) end
-- end
