package.path = package.path .. ";../?.lua"
-- require these components
local Liquid = require 'lib.liquid'

-- template to render
local document = 'hello, {{name}}!'
-- variable to render
local var = {["name"] = "world" }

local template = Liquid.Template:parse(document)

-- the content of result is  'hello, world!'
local result = template:render( Liquid.InterpreterContext:new(var) )
print(result)
