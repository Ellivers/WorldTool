execute at @s align xyz run tp @s ~ ~ ~
tag @s add wt_particles
tag @s remove outl_nX
tag @s remove outl_pX
tag @s remove outl_nY
tag @s remove outl_pY
tag @s remove outl_nZ
tag @s remove outl_pZ
execute store result score @s pos1x run data get entity @s Pos[0]
execute store result score @s pos1y run data get entity @s Pos[1]
execute store result score @s pos1z run data get entity @s Pos[2]
function worldtool:particles/mark_selection/pos
execute store result score @s pos2x run data get entity @e[type=minecraft:area_effect_cloud,tag=pos2,tag=outline_load,limit=1] Pos[0]
execute store result score @s pos2y run data get entity @e[type=minecraft:area_effect_cloud,tag=pos2,tag=outline_load,limit=1] Pos[1]
execute store result score @s pos2z run data get entity @e[type=minecraft:area_effect_cloud,tag=pos2,tag=outline_load,limit=1] Pos[2]

# "outl_nx" stands for "outline_negative_x"
execute if score @s rotX > @s pos2x run tag @s add outl_nX
execute if score @s rotX < @s pos2x run tag @s add outl_pX
execute if score @s rotY > @s pos2y run tag @s add outl_nY
execute if score @s rotY < @s pos2y run tag @s add outl_pY
execute if score @s rotZ > @s pos2z run tag @s add outl_nZ
execute if score @s rotZ < @s pos2z run tag @s add outl_pZ

execute at @s if score @s rotX = @s pos2x run tp @s ~.999 ~ ~
execute at @s if score @s rotY = @s pos2y run tp @s ~ ~.999 ~
execute at @s if score @s rotZ = @s pos2z run tp @s ~ ~ ~.999

execute if score @s rotX > @s pos2x run scoreboard players remove @s pos2x 1
execute if score @s rotX < @s pos2x run scoreboard players add @s pos2x 1
execute if score @s rotY > @s pos2y run scoreboard players remove @s pos2y 1
execute if score @s rotY < @s pos2y run scoreboard players add @s pos2y 1
execute if score @s rotZ > @s pos2z run scoreboard players remove @s pos2z 1
execute if score @s rotZ < @s pos2z run scoreboard players add @s pos2z 1

execute at @s[tag=outl_nX] run tp @s ~.999 ~ ~
execute at @s[tag=outl_nY] run tp @s ~ ~.999 ~
execute at @s[tag=outl_nZ] run tp @s ~ ~ ~.999