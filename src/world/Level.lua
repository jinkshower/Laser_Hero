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
        world = self.world,
        canPlace = true
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

    for k, laser in pairs(self.map.lasers) do
        laser:update(dt)
    end

    for k, enemy in pairs(self.map.enemies) do
        enemy:update(dt)
    end
    self:victoryCheck()

    if #self.map.lasers > 0 or #self.map.objects > 2 then
        self.player.canPlace = false
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

function Level:victoryCheck()
    -- victory check
    local count = 0
    for k, enemy in pairs(self.map.enemies) do
        if enemy.alive == false then
            count = count + 1
        end
    end

    if count == #self.map.enemies then
        gStateStack:pop()
        gStateStack:push(FadeInState({r = 0, g = 0, b = 0}, 1, 
        function() 
            gStateStack:push(VictoryState(self.level,
                function()
                    gStateStack:push(FadeOutState({r = 0, b = 0, g= 0}, 1, 
                    function()
                        if self.level < 2 then 
                            gStateStack:push(PlayState({level = self.level + 1}))
                        else
                            gStateStack:push(StartState())
                        end
                    end
                ))
                end
            ))
        end))
    end
end