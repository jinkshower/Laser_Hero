PlayerLaserShootState = Class{__includes = BaseState}

function PlayerLaserShootState:init(player, map)
    self.player = player
    self.map = map
end

function PlayerLaserShootState:enter()
    -- instance laser
    gSounds['shoot']:stop()
    gSounds['shoot']:play()
    if #self.map.lasers == 0 then
        self:shootLaser()
    end
end

function PlayerLaserShootState:update(dt)

    self.player:changeState('idle')
end

function PlayerLaserShootState:shootLaser()
    local laser = Laser(self.map)
    table.insert(self.map.lasers, laser)
end