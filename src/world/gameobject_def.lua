GAME_OBJECT_DEFS = {
    ['block'] = {
        type = 'block',
        texture = 'blocks',
        frame = 1,
        width = 16,
        height = 16,
        solid = true,
        defaultState = 'intact',
        states = {
            ['intact'] = {
                frame = 1
            }
        }
    },
    ['enemy'] = {
        type = 'enemy',
        texture = 'heroes',
        frame = 1,
        width = 16,
        height = 16,
        solid = true,
        defaultState = 'intact',
        states = {
            ['intact'] = {
                frame = 1
            }
        }
    }
}