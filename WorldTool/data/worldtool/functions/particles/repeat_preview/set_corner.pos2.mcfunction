# Called by worldtool:particles/repeat_preview/main
# Positions the entity in the corner

scoreboard players operation #particlePosX worldtool = #pos2xt worldtool
scoreboard players operation #particlePosY worldtool = #pos2yt worldtool
scoreboard players operation #particlePosZ worldtool = #pos2zt worldtool

data modify storage worldtool:storage Temp.Pos set value [0d, 0d, 0d]
execute store result storage worldtool:storage Temp.Pos[0] double 1 run scoreboard players get #tempPosX worldtool
execute store result storage worldtool:storage Temp.Pos[1] double 1 run scoreboard players get #tempPosY worldtool
execute store result storage worldtool:storage Temp.Pos[2] double 1 run scoreboard players get #tempPosZ worldtool
data modify entity @s Pos set from storage worldtool:storage Temp.Pos

execute at @s align xyz run tp ~ ~ ~
execute if score #pos1xt worldtool < #pos2xt worldtool at @s align x run tp ~.999 ~ ~
execute if score #pos1yt worldtool < #pos2yt worldtool at @s align y run tp ~ ~.999 ~
execute if score #pos1zt worldtool < #pos2zt worldtool at @s align z run tp ~ ~ ~.999
