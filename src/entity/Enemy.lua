Enemy = Class {}

function Enemy:init (def)
    self.x = def.x
    self.y = def.y

    self.width = ENEMY_WIDTH
    self.height = ENEMY_HEIGHT

    self.animations = self:createAnimations(def.animations)

    self:changeAnimation('intact')

    local hitboxX, hitboxY, hitboxWidth, hitboxHeight
    hitboxX = self.x
    hitboxY = self.y + self.height / 2
    hitboxWidth = self.width
    hitboxHeight = self.height / 2 

    self.enemyHitbox = Hitbox(hitboxX, hitboxY, hitboxWidth, hitboxHeight)

    self.alive = true
end

function Enemy:update(dt)
    if self.currentAnimation then
        self.currentAnimation:update(dt)
    end
end

function Enemy:changeAnimation(name)
    self.currentAnimation = self.animations[name]
end

function Enemy:createAnimations(animations)
    local animationsReturned = {}

    for k, animationDef in pairs(animations) do
        animationsReturned[k] = Animation {
            texture = animationDef.texture or 'enemy',
            frames = animationDef.frames,
            interval = animationDef.interval
        }
    end

    return animationsReturned
end

function Enemy:render()
    local anim = self.currentAnimation
    love.graphics.draw(gTextures[anim.texture], gFrames[anim.texture][anim:getCurrentFrame()],
    self.x, self.y )

    -- debug
    love.graphics.setColor(1,0,1,1)
    love.graphics.rectangle('line', self.enemyHitbox.x, self.enemyHitbox.y, self.enemyHitbox.width, self.enemyHitbox.height)
    love.graphics.setColor(1,1,1,1)
end