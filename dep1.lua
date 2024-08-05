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
