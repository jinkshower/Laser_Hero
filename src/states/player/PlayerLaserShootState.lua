PlayerLaserShootState = Class{__includes = BaseState}

function PlayerLaserShootState:init(player, map)
    self.player = player
    self.map = map
end

function PlayerLaserShootState:enter()
    -- instance laser
    self:shootLaser()
end

function PlayerLaserShootState:update(dt)
    -- if love.keyboard.wasPressed('p') then
        self.player:changeState('idle')
    -- end
end

function PlayerLaserShootState:shootLaser()
    local laser = Laser(self.map)
    table.insert(self.map.lasers, laser)

end