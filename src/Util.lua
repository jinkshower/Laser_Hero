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

function GenerateHeroes(atlas)
    local x = 16
    local y = 48

    local counter = 1
    local quads = {}

    for j = 0, 5 do
        quads[counter] = love.graphics.newQuad(x, y, 16, 16, atlas:getDimensions())
        x = x + 16
        counter = counter + 1
    end

    return quads
end

function getSize(tbl)
    local count = 0
    for k, key in pairs(tbl) do
        count = count + 1
    end

    return count
end