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