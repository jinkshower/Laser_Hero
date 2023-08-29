PlayState = Class {__includes = BaseState}

function PlayState:init()
    tutorialMap = Sti('graphics/firstMap.lua')
end

function PlayState:update(dt)
    
end

function PlayState:render()
    tutorialMap:draw()
    love.graphics.draw(gTextures['heroes'], gFrames['heroes'][1], 16, 48)
end

-- left and right entity render 
-- love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.currentAnimation:getCurrentFrame()],
-- math.floor(self.x) + 8, math.floor(self.y) + 10, 0, self.direction == 'right' and 1 or -1, 1, 8, 10)