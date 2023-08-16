# Called by worldtool:particles/display
# Checks if particles can be displayed

scoreboard players set #particlePosX worldtool 0
scoreboard players set #particlePosY worldtool 0
scoreboard players set #particlePosZ worldtool 0

scoreboard players operation #pos2xt worldtool = @s wt.pos2x
scoreboard players operation #pos2yt worldtool = @s wt.pos2y
scoreboard players operation #pos2zt worldtool = @s wt.pos2z

scoreboard players operation #pos2xt worldtool -= @s wt.pos1x
scoreboard players operation #pos2yt worldtool -= @s wt.pos1y
scoreboard players operation #pos2zt worldtool -= @s wt.pos1z

execute if entity @s[tag=wt.pos1] run function worldtool:particles/general_selection/pos1/load
execute if entity @s[tag=wt.pos2] run function worldtool:particles/general_selection/pos2/load
