Level = Class{}

function Level:init(level)
    self.map = LevelData[tostring(level)].map

    self.world = love.physics.newWorld(0, 0)
    self.map:box2d_init(self.world)
    self.map.layers.Solid.visible = false
    
    self.player = Player{
        mapX = 10,
        mapY = 3,
        width = 16,
        height = 16,
        world = self.world
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
    self.world:update(dt)
end

function Level:render()
    self.map:draw()
    self.player:render()
end