PlayerBlockPlaceState = Class{__includes = BaseState}

function PlayerBlockPlaceState:init(player, map)
    self.player = player
    self.map = map
end

function PlayerBlockPlaceState:enter(params)
    -- instance block
    -- local count = 0
    -- for k, object in pairs(self.map.objects)do 
    --     if object.type == 'block' then
    --         count = count + 1
    --     end
    -- end

    -- if count < 100 then
    self.direction = params.direction
        self:placeBlock(self.direction)
    -- end
end

function PlayerBlockPlaceState:update(dt)
    -- if love.keyboard.wasPressed('p') then
        self.player:changeState('idle')
    -- end
end

function PlayerBlockPlaceState:placeBlock(direction)
    local block = GameObject(
        GAME_OBJECT_DEFS[direction ..'-block'],
        self.player.x - self.player.width / 2,
        self.player.y + TILE_SIZE * 6
    )
    table.insert(self.map.objects, block)
end