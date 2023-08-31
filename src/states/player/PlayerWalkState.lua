PlayerWalkState = Class{__includes = BaseState}

function PlayerWalkState:init(player)
    self.player = player
end

function PlayerWalkState:enter()
    self:move()
end

function PlayerWalkState:move()
    self.xVel, self.yVel = 0, 0

    if self.player.direction == 'left' then
        self.xVel = -PLAYER_SPEED
    elseif self.player.direction == 'right' then
        self.xVel = PLAYER_SPEED
    elseif self.player.direction == 'up' then
        self.yVel = -PLAYER_SPEED
    elseif self.player.direction == 'down' then
        self.yVel = PLAYER_SPEED
    end

    self.player.physics.body:setLinearVelocity(self.xVel, self.yVel)

    Timer.after(0.1, 
    function()
        if love.keyboard.isDown('left') then
            self.player.direction = 'left'
            self.player:changeState('walk')
        elseif love.keyboard.isDown('right') then
            self.player.direction = 'right'
            self.player:changeState('walk')
        elseif love.keyboard.isDown('up') then
            self.player.direction = 'up'
            self.player:changeState('walk')
        elseif love.keyboard.isDown('down') then
            self.player.direction = 'down'
            self.player:changeState('walk')
        else
            self.player:changeState('idle')
        end
    end)

end