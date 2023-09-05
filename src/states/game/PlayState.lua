PlayState = Class {__includes = BaseState}

function PlayState:init(def)
    self.level = def.level
    self.map = Level(self.level)
end

function PlayState:enter()
end

function PlayState:update(dt)
    self.map:update(dt)
    if love.keyboard.wasPressed('a') then
        gStateStack:pop()
        gStateStack:push(PlayState({level = self.level}))
    end
end

function PlayState:render()
    self.map:render()
    if self.map.player.canPlace then
        love.graphics.setColor(0, 150/255, 0, 150/255)
        love.graphics.rectangle('fill', self.map.player.x - self.map.player.height / 2, self.map.player.y - self.map.player.height / 2 + TILE_SIZE * 6 + TILE_SIZE / 2 + 1, 16, 15, 4)
    end
end
