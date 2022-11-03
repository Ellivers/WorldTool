# Called by various functions
# The process functionality for Repeat

scoreboard players add #blocksChecked worldtool 1

execute if score #originPosX worldtool = #pos2x worldtool if score #originPosY worldtool = #pos2y worldtool if score #originPosZ worldtool = #pos2z worldtool run function worldtool:process/repeat/next/main

execute at @s run clone ~ ~ ~ ~ ~ ~ 27451 1 19
execute at 9880ccfe-fdf6-4538-838a-ddc75a54608e unless blocks ~ ~ ~ ~ ~ ~ 27451 1 19 all unless score #blocksChecked worldtool >= #blocksPerTick worldtool run function worldtool:process/repeat/check_place

# Move the process entity
execute if score #originPosX worldtool < #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/repeat/x
execute if score #originPosX worldtool > #pos2x worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/repeat/-x

execute if score #originPosX worldtool = #pos2x worldtool if score #originPosZ worldtool < #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/repeat/z
execute if score #originPosX worldtool = #pos2x worldtool if score #originPosZ worldtool > #pos2z worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/repeat/-z

execute if score #originPosX worldtool = #pos2x worldtool if score #originPosZ worldtool = #pos2z worldtool if score #originPosY worldtool < #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/repeat/y
execute if score #originPosX worldtool = #pos2x worldtool if score #originPosZ worldtool = #pos2z worldtool if score #originPosY worldtool > #pos2y worldtool unless score #blocksChecked worldtool >= #blocksPerTick worldtool at @s run function worldtool:process/repeat/-y
