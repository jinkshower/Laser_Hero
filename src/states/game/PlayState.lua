PlayState = Class {__includes = BaseState}

function PlayState:init(def)
    self.level = def.level
    self.map = Level(self.level)

    self.map.player.placing = false 
end

function PlayState:enter()
end

function PlayState:update(dt)
    self.map:update(dt)
    self:victoryCheck()
end

function PlayState:render()
    self.map:render()
    love.graphics.setColor(0, 150/255, 0, 150/255)
    love.graphics.rectangle('fill', self.map.player.x - self.map.player.height / 2, self.map.player.y - self.map.player.height / 2 + TILE_SIZE * 6 + TILE_SIZE / 2 + 1, 16, 15, 4)
end

function PlayState:victoryCheck()
    -- victory check
    local count = 0
    for k, enemy in pairs(self.map.map.enemies) do
        if enemy.alive == false then
            count = count + 1
        end
    end

    if count == #self.map.map.enemies then
        gStateStack:pop()
        gStateStack:push(FadeInState({r = 0, g = 0, b = 0}, 1, 
        function() 
            gStateStack:push(VictoryState(
                function()
                    gStateStack:push(FadeOutState({r = 0, b = 0, g= 0}, 1, 
                    function()
                        -- if self.level < 2 then 
                            gStateStack:push(PlayState({level = self.level + 1}))
                        -- else
                            -- congratulation state and game over 
                        -- end
                    end
                ))
                end
            ))
        end))
    end
end