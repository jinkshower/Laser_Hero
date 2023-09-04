Level = Class{}

function Level:init(level)
    self.level = level
    self.map = LevelData[tostring(self.level)].map

    self.world = love.physics.newWorld(0, 0)
    self.map:box2d_init(self.world)
    self.map.layers.Solid.visible = false

    self.map.objects = {}
    self.map.lasers = {}

    self.map.enemies = {}
    self:spawnEnemies(self.level)

    self.player = Player{
        mapX = 10,
        mapY = 3,
        width = 16,
        height = 16,
        world = self.world
    }

    self.player.stateMachine = StateMachine{
        ['idle'] = function() return PlayerIdleState(self.player) end,
        ['walk'] = function() return PlayerWalkState(self.player) end,
        ['block-place'] = function() return PlayerBlockPlaceState(self.player, self.map) end,
        ['laser-shoot'] = function() return PlayerLaserShootState(self.player, self.map) end
    }

    self.player.stateMachine:change('idle')
end

function Level:update(dt)
    self.map:update(dt)
    self.player:update(dt)
    self.world:update(dt)

    for k, object in pairs(self.map.lasers) do
        object:update(dt)
    end

    for k, enemy in pairs(self.map.enemies) do
        enemy:update(dt)
    end
end

function Level:render()
    self.map:draw()
    self.player:render()
    for k, object in pairs(self.map.objects) do
        object:render()
    end

    for k, laser in pairs(self.map.lasers) do
        laser:render()
    end

    for k, enemy in pairs(self.map.enemies) do
        enemy:render()
    end

    -- debug code
    -- love.graphics.setColor(1, 0, 1, 1)
    -- love.graphics.rectangle('line', self.entity.x, self.entity.y, self.entity.width, self.entity.height)
    -- love.graphics.setColor(1, 1, 1, 1)
end

function Level:spawnEnemies(level)
    self.enemy = LevelData[tostring(level)].enemy

    for i = 1, #self.enemy.x do 
        local enemy = Enemy {
            animations = ENEMY_DEFS['enemy'].animations,
            x = self.enemy.x[i],
            y = self.enemy.y[i]
        }
        table.insert(self.map.enemies, enemy)
    end
end