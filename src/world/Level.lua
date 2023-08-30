Level = Class{}

function Level:init(level)
    self.map = LevelData[tostring(level)].map
    self.player = Player{
        mapX = 10,
        mapY = 4,
        width = 16,
        height = 16,
    }

    self.player.stateMachine = StateMachine{
        ['idle'] = function() return PlayerIdleState(self.player) end,
        ['walk'] = function() return PlayerWalkState(self.player) end
    }

    self.player.stateMachine:change('idle')
end

function Level:update(dt)
    self.map:update(dt)
    self.player:update(dt)
end

function Level:render()
    self.map:draw()
    self.player:render()
end