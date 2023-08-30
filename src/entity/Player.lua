Player = Class{}

function Player:init(def)
    self.mapX = def.mapX
    self.mapY = def.mapY
    self.direction = 'down'

    self.width = def.width
    self.height = def.height

    self.x = (self.mapX) * TILE_SIZE
    self.y = (self.mapY) * TILE_SIZE - self.height / 2
end

function Player:changeAnimation(name)

end

function Player:changeState(name, params)
    self.stateMachine:change(name, params)
end

function Player:update(dt)
    self.stateMachine:update(dt)
end

function Player:render()
    love.graphics.draw(gTextures['heroes'], gFrames['heroes'][1], self.x, self.y)
end