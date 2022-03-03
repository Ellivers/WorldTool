# Called by worldtool:process_start/start
# Starts a function, setting variables

scoreboard players operation #ID_temp worldtool = @s wt.ID

scoreboard players set $processRunning worldtool 1

function worldtool:technical/common/fix_bpt_vars

## Common variables ##

scoreboard players set #blocksChecked worldtool 0
scoreboard players set #blocksPlaced worldtool 0

function #worldtool:addon/process_start/variables
