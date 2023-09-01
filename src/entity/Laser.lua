Laser = Class {}

function Laser:init(map)
    self.map = map

    self.x = TILE_SIZE
    self.y = TILE_SIZE * 10

    self.width = LASER_WIDTH
    self.height = LASER_HEIGHT

    self.dx = LASER_SPEED
    self.dy = 0

    self.direction = 'right'
end

function Laser:update(dt)
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt

    if self.dx > 0 then
        self.direction = 'right'
    elseif self.dx < 0 then
        self.direction = 'left'
    elseif self.dy < 0 then
        self.direction = 'up'
    elseif self.dy > 0 then
        self.direction = 'down'
    end

    self:blockCollision ()

    self:wallCollision()

end

function Laser:render()
    love.graphics.draw(gTextures['blocks'], gFrames['blocks'][1], self.x, self.y, 0, 0.5, 0.5)
end

function Laser:collide(target)
    return not (self.x + self.width < target.x or self.x > target.x + target.width or
                self.y + self.height < target.y or self.y > target.y + target.height)
end

function Laser:wallCollision()
    -- left 
    if self.x <= LEFT_WALL then
        if self.y < UPPER_WALL + TILE_SIZE * 3 then
            self.x = LEFT_WALL + 1
            self.dx = 0
            self.dy = LASER_SPEED
        else
            self.x = LEFT_WALL + 1
            self.dx = 0
            self.dy = -LASER_SPEED
        end
    elseif self.x >= RIGHT_WALL then
        if self.y < UPPER_WALL + TILE_SIZE * 3 then
            self.x = RIGHT_WALL - 1
            self.dx = 0
            self.dy = LASER_SPEED
        else
            self.x = RIGHT_WALL - 1
            self.dx = 0
            self.dy = -LASER_SPEED
        end
    elseif self.y <= UPPER_WALL then
        if self.x < TILE_SIZE * 12 then
            self.y = UPPER_WALL + 1
            self.dy = 0
            self.dx = LASER_SPEED
        else
            self.y = UPPER_WALL + 1
            self.dy = 0
            self.dx = -LASER_SPEED
        end
    elseif self.y >= LOWER_WALL then
        if self.x < TILE_SIZE * 12 then
            self.y = LOWER_WALL - 1
            self.dy = 0
            self.dx = LASER_SPEED
        else
            self.y = LOWER_WALL - 1
            self.dy = 0
            self.dx = -LASER_SPEED
        end
    end
end

function Laser:blockCollision()
    for k, object in pairs(self.map.objects) do 
        if self:collide(object) then
            if self.direction == 'right' then
                self.dx = 0
                self.dy = 0 
                self.x = object.x - 10

                self.dx = -LASER_SPEED
                
            elseif self.direction == 'left' then
                self.dx = 0
                self.dy = 0
                self.x = object.x + object.width + 1

                self.dx = LASER_SPEED

            elseif self.direction == 'up' then
                self.dx = 0
                self.dy = 0
                self.y = object.y + object.height + 1

                self.dy = LASER_SPEED

            elseif self.direction == 'down' then
                self.dx = 0
                self.dy = 0
                self.y = object.y - 8

                self.dy = -LASER_SPEED
            end
        end
    end
end