scoreboard players add #blockschecked worldtool 1

execute if entity @s[tag=!replacefill_reversed] unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:place_block
execute if entity @s[tag=replacefill_reversed] unless block ~ ~ ~ #worldtool:air_blocks unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:place_block

#If #blockschecked's worldtool score isn't more than a certain number (default: 4000) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:brush/paint/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:brush/paint/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:brush/paint/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:brush/paint/-y

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:brush/paint/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:brush/paint/-z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 4000) (check the function for explanation of why it's here)
execute if score #blockschecked worldtool >= $blocksPerTick worldtool run schedule function worldtool:load2_fill 1t