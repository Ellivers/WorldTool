# Called by worldtool:particles/paste_preview/display
# Displays randomization source selection particles

scoreboard players operation #particlePosX worldtool = #pos1xt worldtool
scoreboard players operation #particlePosY worldtool = #pos1yt worldtool
scoreboard players operation #particlePosZ worldtool = #pos1zt worldtool

data modify storage worldtool:storage Temp.Pos set value [0d, 0d, 0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #particlePosX worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #particlePosY worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #particlePosZ worldtool
data modify entity @s Pos set from storage worldtool:storage Temp.Pos

execute at @s align xyz run tp ~.999 ~.999 ~.999
