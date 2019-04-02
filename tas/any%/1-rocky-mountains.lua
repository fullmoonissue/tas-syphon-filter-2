local Input = require('utils/input')
require('utils/macro')
require('macro/game')

-- Level 1 : Rocky Mountains
local cf = 3250
local input = Input()
local macroGame = MacroGame(Macro(input))

-- Skip cutscene
cf = input:cross(cf)
-- Skip briefing
cf = input:cross(cf + 465)
-- Skip dialog
cf = input:cross(cf + 163)

-- Sky driving
cf = input:left(cf + 40, 87)
cf = input:right(cf + 1, 15)
cf = input:left(cf + 1, 15)
cf = input:right(cf + 1, 15)
cf = input:left(cf + 1, 15)
cf = input:right(cf + 1, 15)
cf = input:left(cf + 1, 15)
cf = input:right(cf + 1, 15)
cf = input:left(cf + 1, 15)
cf = input:right(cf + 1, 15)
cf = input:left(cf + 1, 15)
cf = input:right(cf + 1, 15)
cf = input:left(cf + 1, 15)
cf = input:right(cf + 1, 15)
cf = input:left(cf + 1, 15)
cf = input:right(cf + 1, 15)
cf = input:left(cf + 1, 15)
cf = input:right(cf + 1, 15)

-- Go to first question asked to GI
cf = input:up(cf + 69, 60)
cf = input:left(cf + 1, 10)
cf = input:up(cf + 1, 60)

return input:all()