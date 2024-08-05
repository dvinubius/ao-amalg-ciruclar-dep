do
local _ENV = _ENV
package.preload[ "dep1" ] = function( ... ) local arg = _G.arg;
local dep2 = require("dep2")

local mod = {}

mod.foo = function()
  print("IN dep1.foo")
end

mod.bar = function()
  print("IN dep1.bar")
  dep2.bar()
end

return mod
end
end

do
local _ENV = _ENV
package.preload[ "dep2" ] = function( ... ) local arg = _G.arg;
local dep1 = require("dep1")

local mod = {}

mod.foo = function()
  print("IN dep2.foo")
  dep1.foo()
end

mod.bar = function()
  print("IN dep2.bar")
end

return mod
end
end

local dep1 = require("dep1")
local dep2 = require("dep2")
