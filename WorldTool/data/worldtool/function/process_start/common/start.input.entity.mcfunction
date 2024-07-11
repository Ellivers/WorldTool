# Called by worldtool:process_start/common/start.input
# Gives the process the selected blocks

data modify entity @s Pos set from storage worldtool:storage Processes[-1].BlockPositions.Primary
execute if data storage worldtool:storage Processes[-1].BlockPositions.Primary at @s run clone ~ ~ ~ ~ ~ ~ 27451 1 19 replace

data modify entity @s Pos set from storage worldtool:storage Processes[-1].BlockPositions.Secondary
execute if data storage worldtool:storage Processes[-1].BlockPositions.Secondary at @s run clone ~ ~ ~ ~ ~ ~ 27449 1 19 replace

kill @s
