# Called by worldtool:process_start/start
# Starts a function, setting variables

scoreboard players operation #ID_temp worldtool = @s wt.ID

## Common variables ##

scoreboard players set #blocksChecked worldtool 0
scoreboard players set #blocksPlaced worldtool 0

function #worldtool:addon/process_start/variables
