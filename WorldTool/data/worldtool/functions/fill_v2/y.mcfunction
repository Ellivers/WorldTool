scoreboard players operation $pos2z worldtool = $pos1z worldtool
scoreboard players operation $pos1z worldtool = $drawingposZ worldtool
scoreboard players operation $pos2x worldtool = $pos1x worldtool
scoreboard players operation $pos1x worldtool = $drawingposX worldtool

# If #blockschecked's worldtool score isn't more than a certain number (default: 4000) move the y coordinates
execute if score $drawingposY worldtool < $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:fill_v2/p_y
execute if score $drawingposY worldtool > $pos2y worldtool unless score #blockschecked worldtool >= $blocksPerTick worldtool run function worldtool:fill_v2/n_y
