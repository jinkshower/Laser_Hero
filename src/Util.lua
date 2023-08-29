function GenerateQuads(atlas, tilewidth, tileheight)
    local sheetWidth = atlas:getWidth() / tilewidth
    local sheetHeight = atlas:getHeight() / tileheight

    local sheetCounter = 1
    local spritesheet = {}

    for y = 0, sheetHeight - 1 do
        for x = 0, sheetWidth - 1 do
            spritesheet[sheetCounter] =
                love.graphics.newQuad(x * tilewidth, y * tileheight, tilewidth,
                tileheight, atlas:getDimensions())
            sheetCounter = sheetCounter + 1
        end
    end

    return spritesheet
end

function GenerateBeams(atlas)
    local x = 0
    local y = 0

    local counter = 1
    local quads = {}

    for j = 0, 5 do
        quads[counter] = love.graphics.newQuad(x, y, 16, 48, atlas:getDimensions())
        x = x + 16
        counter = counter + 1
    end

    for j = 0, 3 do 
        for i = 0, 2 do 
            if i == 2 then
                quads[counter] = love.graphics.newQuad(x, y, 8, 16, atlas:getDimensions())
                counter = counter + 1
                x = 96
                y = y + 16
            else
                quads[counter] = love.graphics.newQuad(x, y, 16, 16, atlas:getDimensions())
                x = x + 16 
                counter = counter + 1
            end
        end
    end

    return quads
end