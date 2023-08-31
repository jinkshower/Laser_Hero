Player = Class{}

function Player:init(def)
    self.mapX = def.mapX
    self.mapY = def.mapY
    self.direction = 'down'

    self.width = def.width
    self.height = def.height

    self.x = (self.mapX) * TILE_SIZE 
    self.y = (self.mapY) * TILE_SIZE - self.height / 2

    self.xVel = 0
    self.yVel = 0
    self.maxSpeed = 4000
    self.acceleration = 4000
    -- self.friction = 3500

    self.world = def.world
    self.physics = {}
    self.physics.body = love.physics.newBody(self.world, self.x, self.y, "dynamic")
    self.physics.body:setFixedRotation(true)
    self.physics.shape = love.physics.newRectangleShape(self.width - 1, self.height - 1)
    self.physics.fixture = love.physics.newFixture(self.physics.body, self.physics.shape)
end

function Player:changeAnimation(name)

end

function Player:changeState(name, params)
    self.stateMachine:change(name, params)
end

function Player:update(dt)
    self:syncPhysics()
    self.stateMachine:update(dt)
end

function Player:syncPhysics()
    self.x , self.y = self.physics.body:getPosition()
end

function Player:render()
    love.graphics.draw(gTextures['heroes'], gFrames['heroes'][1], self.x - self.height / 2, self.y - self.height / 2)
end