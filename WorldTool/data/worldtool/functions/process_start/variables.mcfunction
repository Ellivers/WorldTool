# Called by worldtool:process_start/start
# Starts a function, setting variables

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set $processRunning worldtool 1

function worldtool:technical/common/fix_bpt_vars

## Common variables ##

scoreboard players set #blocksChecked worldtool 0
scoreboard players set #blocksPlaced worldtool 0

# Not so common but whatever
scoreboard players operation #midX worldtool = #pos1x worldtool
scoreboard players operation #midX worldtool += #pos2x worldtool
scoreboard players operation #midX worldtool /= #2 worldtool
scoreboard players operation #minX worldtool = #midX worldtool
scoreboard players operation #maxX worldtool = #midX worldtool


function #worldtool:addon/process_start/variables
