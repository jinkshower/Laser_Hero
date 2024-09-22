# Block Hero
2D Puzzle game by Hyun Tae Im, implemented in lua using love2d framework.

## Distinctiveness and Complexity
This project is a 2D puzzle game implemented in lua using love2d framework. Three main parts - Start of the game, six levels to solve and victory state- make up the game.  The main goal of the game is by shooting a block, touching (defeating) all the alien enemies. 

But I wanted make this not just a shooter but a puzzle also. Players can control the main character by arrows keys and shoot the block pressing 'c' but they can't move the shot block. They have to predict and adjust the trajectory of the block which runs along the wall. For this player has the ability to place object-blocks pressing 'x' and select the block they want by using arrows keys. Object-blocks consist of four kinds of blocks - left, right, up and down. They can see the number of remaining blocks and can reset the level by pressing 'z'. Players should place the object-blocks before shooting so that they can adjust the path of the shot block.

The main logic for this game is spatial reasoning. To accomplish this I placed some limitations on game. First, I made object block limits for each level so that players cannot just fill up the map with object blocks. This makes each level must be solved by player's choice and reasoning. Second, I contained player's movement to only half up the level and let them preview the block placement in the lower part of the map so that players can predict where should they put object blocks and how the shot block travels. Third, when players shoot the block, I locked the ability of placing object block so that players have to decide the answer before they can see how that attempt goes. 

To make each level has different solutions, I made some variations to referred limitations. Each level has different object block limit and has its unique upper map which restricts player movement and different  enemy placement. There are total six levels including tutorial level. After they beat every level, they can restart the game.

## How to play
BUTTTON | ACTION
--- | :---:
**arrows** | move player
**x** | place fourway blocks
**c** | shoot the block 
**z** | reset level
**escape** | quit the game

## Development
Tools used:
1. Lua
2. Love2d
3. Libraries
    1. Class
    2. Push
    3. Knife
    4. STI
4. VS Code
5. Tiled
6. Ubuntu
