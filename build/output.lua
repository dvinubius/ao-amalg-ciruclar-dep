do
local _ENV = _ENV
package.preload[ "dep1" ] = function( ... ) local arg = _G.arg;
local dep2 = require("dep2")

local mod = {}

return mod
end
end

do
local _ENV = _ENV
package.preload[ "dep2" ] = function( ... ) local arg = _G.arg;
local dep1 = require("dep1")

local mod = {}

return mod
end
end

local dep1 = require("dep1")
local dep2 = require("dep2")
