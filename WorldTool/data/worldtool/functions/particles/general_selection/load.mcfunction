# Called by worldtool:particles/display
# Checks if particles can be displayed

scoreboard players operation #ID_temp worldtool = @s wt.ID

# execute if entity @s[tag=wt.pos1] run function worldtool:technical/common/temp_pos1
# execute if entity @s[tag=wt.pos2] run function worldtool:technical/common/temp_pos2

scoreboard players operation #particlePosX worldtool = @s wt.pos1x
scoreboard players operation #particlePosY worldtool = @s wt.pos1y
scoreboard players operation #particlePosZ worldtool = @s wt.pos1z

scoreboard players operation #pos2xt worldtool = @s wt.pos2x
scoreboard players operation #pos2yt worldtool = @s wt.pos2y
scoreboard players operation #pos2zt worldtool = @s wt.pos2z

execute if entity @s[tag=wt.pos1] run function worldtool:particles/general_selection/pos1/load
execute if entity @s[tag=wt.pos2] run function worldtool:particles/general_selection/pos2/load
