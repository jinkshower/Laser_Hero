GameObject = Class{}

function GameObject:init(def, x, y)
    self.type = def.type
    self.texture = def.texture
    self.frame = def.frame or 1 

    self.solid = def.solid

    self.defaultState = def.defaultState
    self.state = self.defaultState
    self.states = def.states

    -- dimensions
    self.x = x
    self.y = y
    self.width = def.width
    self.height = def.height

    self.onCollide = function() end
end

function GameObject:render()
    love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.states[self.state].frame or self.frame],
        self.x, self.y)
end

function GameObject:overlapCheck(map, x, y)
    local overlap = false

    self.map = map
    
    for k, object in pairs(self.map.objects) do
    end

    for k, entity in pairs(self.map.entities) do

    end


    return overlap
end