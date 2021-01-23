scoreboard players add #blockschecked worldtool 1

execute unless entity @s[tag=wt_exclude_east] if score $drawingposX worldtool = #furthestEast worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute unless entity @s[tag=wt_exclude_west] if score $drawingposX worldtool = #furthestWest worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block

execute unless entity @s[tag=wt_exclude_up] if score $drawingposY worldtool = #furthestUp worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute unless entity @s[tag=wt_exclude_down] if score $drawingposY worldtool = #furthestDown worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block

execute unless entity @s[tag=wt_exclude_south] if score $drawingposZ worldtool = #furthestSouth worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block
execute unless entity @s[tag=wt_exclude_north] if score $drawingposZ worldtool = #furthestNorth worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool unless blocks ~ ~ ~ ~ ~ ~ 0 1 13 all run function worldtool:block_place/place_block

execute if entity @s[tag=inner_block] unless score $drawingposZ worldtool = $pos2z worldtool unless score $drawingposZ worldtool = $pos1z worldtool unless score $drawingposY worldtool = $pos2y worldtool unless score $drawingposY worldtool = $pos1y worldtool unless score $drawingposX worldtool = $pos2x worldtool unless score $drawingposX worldtool = $pos1x worldtool unless blocks ~ ~ ~ ~ ~ ~ 2 1 13 all run function worldtool:block_place/place_block_v2

#If #blockschecked's worldtool score isn't more than a certain number (default: 3300) move the x, y and z coordinates
execute if score $drawingposX worldtool < $pos2x worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool run function worldtool:processes/hollow/x
execute if score $drawingposX worldtool > $pos2x worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool run function worldtool:processes/hollow/-x

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool run function worldtool:processes/hollow/y
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool run function worldtool:processes/hollow/-y

execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool < $pos2z worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool run function worldtool:processes/hollow/z
execute if score $drawingposX worldtool = $pos2x worldtool if score $drawingposY worldtool = $pos2y worldtool if score $drawingposZ worldtool > $pos2z worldtool unless score #blockschecked worldtool >= $hollowBlocksPerTick worldtool run function worldtool:processes/hollow/-z

#Schedules a function if #blockschecked's worldtool score is more or equals to a certain number (default: 3300) (check the function for explanation of why it's here)
#execute if score #blockschecked worldtool >= $hollowBlocksPerTick worldtool run schedule function worldtool:load_process/load2_fill 1t