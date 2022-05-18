# Called by worldtool:process_start/start
# Starts a function, setting variables

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set $processRunning worldtool 1

function worldtool:technical/common/fix_bpt_vars

## Common variables ##

scoreboard players set #totalBlocksChecked worldtool 0
scoreboard players set #blocksChecked worldtool 0
scoreboard players set #blocksPlaced worldtool 0

# Not so common but whatever
scoreboard players set #minX worldtool 2147483647
scoreboard players set #maxX worldtool -2147483648
scoreboard players set #minY worldtool 2147483647
scoreboard players set #maxY worldtool -2147483648
scoreboard players set #minZ worldtool 2147483647
scoreboard players set #maxZ worldtool -2147483648


function #worldtool:addon/process_start/variables
