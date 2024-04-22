# Called recursively and by worldtool:particles/general_selection/pos1/load
# Moves one block in the positive X direction

function worldtool:particles/colors/blue
scoreboard players add #particlePosX worldtool 1
execute if score #particlePosX worldtool <= #pos2xt worldtool if score #particlePosX worldtool <= $outlineLengthLimit worldtool positioned ~1 ~ ~ run function worldtool:particles/general_selection/pos1/x/plus
