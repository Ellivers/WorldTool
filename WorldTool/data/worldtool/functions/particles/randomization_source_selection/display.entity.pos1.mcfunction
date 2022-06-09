# Called by worldtool:particles/randomization_source_selection/display
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
execute if score #pos1xt worldtool < #pos2xt worldtool at @s align x run tp ~ ~ ~
execute if score #pos1yt worldtool < #pos2yt worldtool at @s align y run tp ~ ~ ~
execute if score #pos1zt worldtool < #pos2zt worldtool at @s align z run tp ~ ~ ~
