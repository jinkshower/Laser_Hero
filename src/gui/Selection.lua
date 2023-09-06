Selection = Class{}

function Selection:init(def)
    self.items = def.items
    self.x = def.x
    self.y = def.y

    self.height = def.height
    self.width = def.width

    self.gapWidth = self.width / #self.items

    self.currentSelection = 1
end

function Selection:update(dt)
    if love.keyboard.wasPressed('right') then
        if self.currentSelection == #self.items then
            self.currentSelection = 1
        else
            self.currentSelection = self.currentSelection + 1
        end
    elseif love.keyboard.wasPressed('left') then
        if self.currentSelection == 1 then
            self.currentSelection = #self.items
        else
            self.currentSelection = self.currentSelection - 1
        end
    elseif love.keyboard.wasPressed('x')then
        self.items[self.currentSelection].onSelect()
    end
end

function Selection:render()
    local currentX = self.x 
    
    for i = 1, #self.items do

        if i == self.currentSelection then
            love.graphics.setColor(1,0,1,1)
            love.graphics.rectangle('line', currentX, self.y + 3, BLOCK_WIDTH + 1, BLOCK_HEIGHT + 1)
            love.graphics.setColor(1,1,1,1)
        end
        
        love.graphics.draw(gTextures[self.items[i].texture], gFrames[self.items[i].texture][self.items[i].frame], currentX, self.y + 3)
        currentX = currentX + self.gapWidth
    end
end

