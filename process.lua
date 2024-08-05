local dep1 = require("dep1")
local dep2 = require("dep2")

Handlers.add(
  'test',
  Handlers.utils.hasMatchingTag('Action', 'Test'),
  function()
    print("IN test")
    print("Calling dep1.foo")
    dep1.foo()
    print("Calling dep1.bar")
    dep1.bar()
    print("Calling dep2.foo")
    dep2.foo()
    print("Calling dep2.bar")
    dep2.bar()
  end
)
