VictoryState = Class{__includes = BaseState}

function VictoryState:init(level, afterComplete)
    self.level = level
    Timer.after(1 , function() 
        gStateStack:pop()
        afterComplete()
    end)
end

function VictoryState:render()
    love.graphics.setFont(gFonts['large'])
    if self.level == 3 then 
        love.graphics.printf("Thanks For Playing", 0, VIRTUAL_HEIGHT / 3, VIRTUAL_WIDTH, 'center')
    else
        love.graphics.printf("Level Complete", 0, VIRTUAL_HEIGHT / 3, VIRTUAL_WIDTH, 'center')        
    end
end