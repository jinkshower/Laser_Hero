StartState = Class{__includes = BaseState}

local highlighted = 1

function StartState:init() 
    
end

function StartState:update(dt)
    if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('down') then
        highlighted = highlighted == 1 and 2 or 1
    end

    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        -- if player press play
        if highlighted == 1 then
            gStateStack:pop()
            gStateStack:push(PlayState({level = 1}))
        -- if player press quit
        else
            love.event.quit()
        end
    end
end

function StartState:render()
    -- title
    love.graphics.setFont(gFonts['large'])
    love.graphics.printf("Laser Hero", 0, VIRTUAL_HEIGHT / 3, VIRTUAL_WIDTH, 'center')

    -- menu
    love.graphics.setFont(gFonts['medium'])
    if highlighted == 1 then
        love.graphics.setColor(100/255, 1, 1, 1)
    end
    love.graphics.printf("PLAY", 0, VIRTUAL_HEIGHT / 2 + 50, VIRTUAL_WIDTH, 'center')

    love.graphics.setColor(1, 1, 1, 1)

    if highlighted == 2 then
        love.graphics.setColor(100/255, 1, 1, 1)
    end
    love.graphics.printf("EXIT", 0, VIRTUAL_HEIGHT / 2 + 70, VIRTUAL_WIDTH, 'center')

    love.graphics.setColor(1, 1, 1, 1)
end
