PlayState = Class {__includes = BaseState}

function PlayState:init(def)
    self.level = def.level
    self.map = Level(self.level)
end

function PlayState:enter()

end

function PlayState:update(dt)
    self.map:update(dt)
end

function PlayState:render()
    self.map:render()
end

-- left and right entity render 
-- love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.currentAnimation:getCurrentFrame()],
-- math.floor(self.x) + 8, math.floor(self.y) + 10, 0, self.direction == 'right' and 1 or -1, 1, 8, 10)