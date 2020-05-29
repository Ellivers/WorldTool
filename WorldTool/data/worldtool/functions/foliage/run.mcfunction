scoreboard players add #blockschecked worldtool 1

execute if entity @s[tag=wt_replace_foliage] if block ~ ~1 ~ #worldtool:plants run setblock ~ ~1 ~ minecraft:air
execute unless score #blockschecked worldtool >= $greeneryBlocksPerTick worldtool if entity @s[tag=!desert] if block ~ ~ ~ #worldtool:plantable if block ~ ~1 ~ #worldtool:air_blocks positioned ~ ~1 ~ run function worldtool:foliage/place1
execute unless score #blockschecked worldtool >= $greeneryBlocksPerTick worldtool if entity @s[tag=desert] if block ~ ~ ~ #worldtool:sand if block ~ ~1 ~ #worldtool:air_blocks positioned ~ ~1 ~ run function worldtool:foliage/place1

#If #blockschecked's worldtool score isn't more than a certain number (default: 1600) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $greeneryBlocksPerTick worldtool run function worldtool:foliage/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $greeneryBlocksPerTick worldtool run function worldtool:foliage/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $greeneryBlocksPerTick worldtool run function worldtool:foliage/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $greeneryBlocksPerTick worldtool run function worldtool:foliage/-y

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $greeneryBlocksPerTick worldtool run function worldtool:foliage/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $greeneryBlocksPerTick worldtool run function worldtool:foliage/-z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 4000) (check the function for explanation of why it's here)
execute if score #blockschecked worldtool >= $greeneryBlocksPerTick worldtool run schedule function worldtool:load2_fill 1t