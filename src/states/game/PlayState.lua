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
end

function PlayState:render()
    self.map:render()
    love.graphics.setColor(0, 150/255, 0, 150/255)
    love.graphics.rectangle('fill', self.map.player.x - self.map.player.height / 2, self.map.player.y - self.map.player.height / 2 + TILE_SIZE * 6 + TILE_SIZE / 2 + 1, 16, 15, 4)
end

-- left and right entity render 
-- love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.currentAnimation:getCurrentFrame()],
-- math.floor(self.x) + 8, math.floor(self.y) + 10, 0, self.direction == 'right' and 1 or -1, 1, 8, 10)