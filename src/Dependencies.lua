--
-- libraries
--

Class = require 'lib/class'
Event = require 'lib/knife.event'
push = require 'lib/push'
Timer = require 'lib/knife.timer'
Sti = require 'lib/sti'
Wf = require 'lib/windfield'


require 'src/Animation'
require 'src/constants'
require 'src/StateMachine'
require 'src/Util'

require 'src/states/BaseState'
require 'src/states/StateStack'

require 'src/states/game/StartState'
require 'src/states/game/PlayState'

require 'src/states/player/PlayerIdleState'
require 'src/states/player/PlayerWalkState'

require 'src/entity/Player'

require 'src/world/Level'
require 'src/world/LevelData'
-- require 'src/world/tile_ids'
-- require 'src/world/Tile'
-- require 'src/world/TileMap'


gFonts = {
    ['small'] = love.graphics.newFont('fonts/font.ttf', 8),
    ['medium'] = love.graphics.newFont('fonts/font.ttf', 16),
    ['large'] = love.graphics.newFont('fonts/font.ttf', 32)
}

gTextures = {
    ['heroes'] = love.graphics.newImage('graphics/heroes.png')
}

gFrames = {
    ['heroes'] = GenerateHeroes(gTextures['heroes'])
}