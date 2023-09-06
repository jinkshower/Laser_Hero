require 'src/Dependencies'

function love.load() 
    love.window.setTitle("LaserHero")
    love.graphics.setDefaultFilter('nearest', 'nearest')
    math.randomseed(os.time())

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        vsync = true,
        resizable = true
    })

    -- state stack
    gStateStack = StateStack()
    gStateStack:push(StartState())

    -- keyboard input array initailization
    love.keyboard.keysPressed = {}

    gSounds['background-music']:play()
    gSounds['background-music']:setLooping(true)
end


function love.keypressed(key)
    -- esc - >quit game 
    if key == 'escape' then
        love.event.quit()
    end
    -- for using keyboard input outside this function
    love.keyboard.keysPressed[key] = true
end

function love.keyboard.wasPressed(key)
    return love.keyboard.keysPressed[key]
end

function love.update(dt)
    Timer.update(dt)
    gStateStack:update(dt)

    love.keyboard.keysPressed = {}
end

function love.draw()
    push:start()
    gStateStack:render()
    push:finish()
end