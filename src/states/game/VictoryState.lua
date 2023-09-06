VictoryState = Class{__includes = BaseState}

function VictoryState:init(level, afterComplete)
    self.level = level
    self.levelMax = getSize(LevelData)
    Timer.after(1 , function() 
        gStateStack:pop()
        afterComplete()
    end)
end

function VictoryState:render()
    love.graphics.setFont(gFonts['large'])
    if self.level == self.levelMax then 
        love.graphics.printf("Thanks For Playing", 0, VIRTUAL_HEIGHT / 3, VIRTUAL_WIDTH, 'center')
    else
        love.graphics.printf("Level Complete", 0, VIRTUAL_HEIGHT / 3, VIRTUAL_WIDTH, 'center')        
    end
end