require('utils/class')

MacroGame = class(function(macroGame, macro)
    macroGame.input = macro:getInputManager()
end)

function MacroGame:hardMode(frame, iterations)
    return self.input:add(
            frame,
            iterations,
            {
                [self.input.currentPlayer .. ' Square'] = true,
                [self.input.currentPlayer .. ' Circle'] = true,
                [self.input.currentPlayer .. ' L1'] = true,
                [self.input.currentPlayer .. ' R2'] = true,
                [self.input.currentPlayer .. ' Up'] = true,
                [self.input.currentPlayer .. ' Cross'] = true,
                [self.input.currentPlayer .. ' Select'] = true,
            }
    )
end

function MacroGame:roll(frame)
    return self.input:add(
            frame,
            4,
            {
                [self.input.currentPlayer .. ' Circle'] = true,
            }
    )
end

function MacroGame:shoot(frame)
    return self.input:add(
            frame,
            4,
            {
                [self.input.currentPlayer .. ' Square'] = true,
            }
    )
end

function MacroGame:reload(frame)
    return self.input:add(
            frame,
            1,
            {
                [self.input.currentPlayer .. ' Triangle'] = true,
            }
    )
end

function MacroGame:nextWeapon(frame)
    return self.input:add(
            frame,
            4,
            {
                [self.input.currentPlayer .. ' Select'] = true,
            }
    )
end