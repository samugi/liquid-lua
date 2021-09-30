package.path = package.path .. ";../?.lua"
-- require these components
local Liquid = require 'lib.liquid'

-- template to render
local mystr = '{% assign s = "1,2,3,4,5,6,7,8,9" | split: "," %}{% for k in s %} {% if k == "3" %} match:{{k}} {% else %} no:{{k}} {% endif %}{% endfor%}'

local template = Liquid.Template:parse(mystr)

local result = template:render( Liquid.InterpreterContext:new({}) )

print(result)
