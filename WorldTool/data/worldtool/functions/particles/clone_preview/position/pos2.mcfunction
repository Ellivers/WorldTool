tag @s add wt_particles
tag @s remove outl_nX
tag @s remove outl_pX
tag @s remove outl_nY
tag @s remove outl_pY
tag @s remove outl_nZ
tag @s remove outl_pZ
execute store result score @s wt_pos1x run data get entity @s Pos[0]
execute store result score @s wt_pos1y run data get entity @s Pos[1]
execute store result score @s wt_pos1z run data get entity @s Pos[2]
execute store result score @s wt_pos2x run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1,tag=outline_load,limit=1] Pos[0]
execute store result score @s wt_pos2y run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1,tag=outline_load,limit=1] Pos[1]
execute store result score @s wt_pos2z run data get entity @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1,tag=outline_load,limit=1] Pos[2]

# "outl_nx" stands for "outline_negative_x"
execute if score @s wt_pos1x > @s wt_pos2x run tag @s add outl_nX
execute if score @s wt_pos1x < @s wt_pos2x run tag @s add outl_pX
execute if score @s wt_pos1y > @s wt_pos2y run tag @s add outl_nY
execute if score @s wt_pos1y < @s wt_pos2y run tag @s add outl_pY
execute if score @s wt_pos1z > @s wt_pos2z run tag @s add outl_nZ
execute if score @s wt_pos1z < @s wt_pos2z run tag @s add outl_pZ

execute if score @s wt_pos1x > @s wt_pos2x run scoreboard players remove @s wt_pos2x 1
execute if score @s wt_pos1x < @s wt_pos2x run scoreboard players add @s wt_pos2x 1
execute if score @s wt_pos1y > @s wt_pos2y run scoreboard players remove @s wt_pos2y 1
execute if score @s wt_pos1y < @s wt_pos2y run scoreboard players add @s wt_pos2y 1
execute if score @s wt_pos1z > @s wt_pos2z run scoreboard players remove @s wt_pos2z 1
execute if score @s wt_pos1z < @s wt_pos2z run scoreboard players add @s wt_pos2z 1

execute at @s align xyz run tp @s ~ ~ ~
execute at @s[tag=outl_nX] run tp @s ~.999 ~ ~
execute at @s[tag=outl_nY] run tp @s ~ ~.999 ~
execute at @s[tag=outl_nZ] run tp @s ~ ~ ~.999
tag @s remove outline_load
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1,tag=outline_load] remove outline_load