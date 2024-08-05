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
