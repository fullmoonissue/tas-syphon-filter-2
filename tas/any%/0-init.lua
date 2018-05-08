local Input = require('utils/input')
require('utils/macro')
require('macro/game')

-- Init
local cf
local input = Input()
local macroGame = MacroGame(Macro(input))

input:cross(2580)
cf = macroGame:hardMode(2691, 4)
input:cross(cf + 16)
input:cross(cf + 25)

return input:all()