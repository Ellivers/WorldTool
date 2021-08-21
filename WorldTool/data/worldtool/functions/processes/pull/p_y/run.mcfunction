scoreboard players add #blockschecked worldtool 1

execute if entity @s[tag=wt_pull_base] run function worldtool:processes/pull/run.base

# If #blockschecked's worldtool score isn't more than a certain number (default: 4000) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/pull/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/pull/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/pull/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/pull/-z

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposZ worldtool = $pos2z worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/pull/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposZ worldtool = $pos2z worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:processes/pull/-y

# Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 4000) (check the function for explanation of why it's here)
#execute if score #blockschecked worldtool >= $blocksPerTick worldtool run schedule function worldtool:load_process/load2_fill 1t
