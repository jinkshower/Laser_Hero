PlayerWalkState = Class{__includes = BaseState}

function PlayerWalkState:init(player)
    self.player = player
end

function PlayerWalkState:enter()
    self:move()
end

function PlayerWalkState:move()
    local toX, toY = self.player.mapX, self.player.mapY

    if self.player.direction == 'left' then
        toX = toX - 1
    elseif self.player.direction == 'right' then
        toX = toX + 1
    elseif self.player.direction == 'up' then
        toY = toY - 1
    else
        toY = toY + 1
    end

    if toX < 1 or toX > 22 or toY < 1 or toY > 6 then
        self.player:changeState('idle')
        return
    end 

    self.player.mapY = toY
    self.player.mapX = toX

    Timer.tween(0.2, {
        [self.player] = {x = toX * TILE_SIZE, y = toY * TILE_SIZE - self.player.height / 2}
    }):finish(function()
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