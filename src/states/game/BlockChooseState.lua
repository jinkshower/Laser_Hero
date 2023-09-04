BlockChooseState = Class{__includes = BaseState}

function BlockChooseState:init(player)
    self.player = player
    if self.player.x > VIRTUAL_WIDTH - 70 then
        self.playerX = self.player.x - 70
    else 
        self.playerX = self.player.x
    end
    self.blockmenu = Menu{
        x = self.playerX,
        y = self.player.y + 16,
        width = 70,
        height = 24,
        items = {
            {
                texture = 'fourwayblocks',
                frame = 1,
                onSelect = function()
                    gStateStack:pop()
                    self.player:changeState('block-place', {direction = 'right'})
                end
            },
            {
                texture = 'fourwayblocks',
                frame = 2,
                onSelect = function()
                    gStateStack:pop()
                    self.player:changeState('block-place', {direction = 'left'})
                end
            },
            {
                texture = 'fourwayblocks',
                frame = 3,
                onSelect = function()
                    gStateStack:pop()
                    self.player:changeState('block-place', {direction = 'up'})
                end
            },
            {
                texture = 'fourwayblocks',
                frame = 4,
                onSelect = function()
                    gStateStack:pop()
                    self.player:changeState('block-place', {direction = 'down'})
                end
            }
        }
    }
end

function BlockChooseState:update(dt)
   self.blockmenu:update(dt)
end

function BlockChooseState:render()
    self.blockmenu:render()
end