VictoryState = Class{__includes = BaseState}

function VictoryState:init(afterComplete)
    Timer.after(1 , function() 
        gStateStack:pop()
        afterComplete()
    end)
end

function VictoryState:render()
    love.graphics.setFont(gFonts['large'])
    love.graphics.printf("Level Complete", 0, VIRTUAL_HEIGHT / 3, VIRTUAL_WIDTH, 'center')
end