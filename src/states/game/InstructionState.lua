InstructionState = Class{__includes = BaseState}

function InstructionState:init()
    INSTRUCTION_VISIBILITY = true
end

function InstructionState:render()
    if INSTRUCTION_VISIBILITY then
        love.graphics.setFont(gFonts['medium'])
        love.graphics.printf("Block drop X", 0, 20, VIRTUAL_WIDTH, 'center')
        love.graphics.printf("Shoot C",0, 40, VIRTUAL_WIDTH, 'center')
        love.graphics.printf("Reset Z",0, 80, VIRTUAL_WIDTH, 'center')
    end
end