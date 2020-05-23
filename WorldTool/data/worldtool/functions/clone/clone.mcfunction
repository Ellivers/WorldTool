scoreboard players add #blockschecked worldtool 1

#Different options for cloning
execute if entity @s[tag=!moveclone] at @s run clone ~ ~ ~ ~ ~ ~ 0 1 13
execute unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool if entity @s[tag=moveclone,tag=!filtered,tag=!filtered_reversed] at @s run clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move

execute unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool if entity @s[tag=moveclone,tag=filtered] at @s if blocks 2 1 13 2 1 13 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move
execute unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool if entity @s[tag=moveclone,tag=filtered_reversed] at @s unless blocks 2 1 13 2 1 13 ~ ~ ~ all run clone ~ ~ ~ ~ ~ ~ 0 1 13 replace move

execute unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool at @e[type=minecraft:area_effect_cloud,tag=clonepos] run function worldtool:clone/check_place

#If #blockschecked's worldtool score isn't more than a certain number (default: 2600) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:clone/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:clone/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:clone/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:clone/-y

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:clone/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $clonedBlocksPerTick worldtool run function worldtool:clone/-z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 2600) (check the function for explanation of why it's here)
execute if score #blockschecked worldtool >= $clonedBlocksPerTick worldtool run schedule function worldtool:load2_fill 1t