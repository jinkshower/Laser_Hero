--
-- libraries
--

Class = require 'lib/class'
Event = require 'lib/knife.event'
push = require 'lib/push'
Timer = require 'lib/knife.timer'
Sti = require 'lib/sti'


require 'src/Animation'
require 'src/constants'
require 'src/StateMachine'
require 'src/Util'
require 'src/Hitbox'

require 'src/gui/Menu'
require 'src/gui/Panel'
require 'src/gui/Selection'


require 'src/states/BaseState'
require 'src/states/StateStack'

require 'src/states/game/StartState'
require 'src/states/game/PlayState'
require 'src/states/game/BlockChooseState'
require 'src/states/game/FadeInState'
require 'src/states/game/FadeOutState'
require 'src/states/game/VictoryState'
require 'src/states/game/InstructionState'

require 'src/states/player/PlayerIdleState'
require 'src/states/player/PlayerWalkState'
require 'src/states/player/PlayerBlockPlaceState'
require 'src/states/player/PlayerLaserShootState'


require 'src/entity/Player'
require 'src/entity/Laser'
require 'src/entity/enemy_def'
require 'src/entity/Enemy'

require 'src/world/Level'
require 'src/world/LevelData'
require 'src/world/gameobject_def'
require 'src/world/GameObject'



gFonts = {
    ['small'] = love.graphics.newFont('fonts/font.ttf', 8),
    ['medium'] = love.graphics.newFont('fonts/font.ttf', 16),
    ['large'] = love.graphics.newFont('fonts/font.ttf', 32)
}

gTextures = {
    ['heroes'] = love.graphics.newImage('graphics/heroes.png'),
    ['blocks'] = love.graphics.newImage('graphics/blocks.png'),
    ['lasers'] = love.graphics.newImage('graphics/laser.png'),
    ['enemy'] = love.graphics.newImage('graphics/enemy.png'),
    ['fourwayblocks'] = love.graphics.newImage('graphics/4wayblocks.png')
}

gFrames = {
    ['heroes'] = GenerateHeroes(gTextures['heroes']),
    ['blocks'] = GenerateQuads(gTextures['blocks'], 16, 16),
    ['lasers'] = GenerateQuads(gTextures['lasers'], 5, 8),
    ['enemy'] = GenerateQuads(gTextures['enemy'], 16, 16),
    ['fourwayblocks'] = GenerateQuads(gTextures['fourwayblocks'], 16, 16)
}

gSounds = {
    ['background-music'] = love.audio.newSource('sounds/through_space.ogg', 'static'),
    ['block-hit'] = love.audio.newSource('sounds/Hit_Hurt.wav', 'static'),
    ['wall-hit'] = love.audio.newSource('sounds/Hit_Hurt7.wav', 'static'),
    ['enemy-hit'] = love.audio.newSource('sounds/Powerup2.wav', 'static'),
    ['blip'] = love.audio.newSource('sounds/Blip.wav','static'),
    ['shoot'] = love.audio.newSource('sounds/Laser_Shoot.wav','static')
}