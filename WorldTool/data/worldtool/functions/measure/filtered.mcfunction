scoreboard players add #blockschecked worldtool 1

execute unless score #blockschecked worldtool >= $blocksPerTick worldtool if entity @s[tag=filtered] if blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run scoreboard players add $blocksplaced worldtool 1
execute unless score #blockschecked worldtool >= $blocksPerTick worldtool if entity @s[tag=filtered_reversed] unless blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run scoreboard players add $blocksplaced worldtool 1

#If #blockschecked's worldtool score isn't more than a certain number (default: 4000) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:measure/filtered/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:measure/filtered/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:measure/filtered/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:measure/filtered/-y

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:measure/filtered/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:measure/filtered/-z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 4000) (check the function for explanation of why it's here)
#execute if score #blockschecked worldtool >= $blocksPerTick worldtool run schedule function worldtool:process_load/load2_fill 1t