# Called recursively and by worldtool:particles/general_selection/pos2/load
# Moves one block in the negative X direction

function worldtool:particles/colors/orange
scoreboard players remove #particlePosX worldtool 1
execute if score #particlePosX worldtool >= #pos2xt worldtool if score #particlePosX worldtool >= $outlineLengthLimitNegative worldtool positioned ~-1 ~ ~ run function worldtool:particles/general_selection/pos2/x/minus
