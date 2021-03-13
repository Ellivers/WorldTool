execute at @s align xyz run tp @s ~ ~ ~
tag @s add wt_particles
tag @s remove outl_nX
tag @s remove outl_pX
tag @s remove outl_nY
tag @s remove outl_pY
tag @s remove outl_nZ
tag @s remove outl_pZ

function worldtool:particles/clone_preview/position/get_pos1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,tag=outline_load,limit=1] run function worldtool:particles/clone_preview/position/get_pos2

# "outl_nx" stands for "outline_negative_x"
execute if score $pos1xt worldtool > $pos2xt worldtool run tag @s add outl_nX
execute if score $pos1xt worldtool < $pos2xt worldtool run tag @s add outl_pX
execute if score $pos1yt worldtool > $pos2yt worldtool run tag @s add outl_nY
execute if score $pos1yt worldtool < $pos2yt worldtool run tag @s add outl_pY
execute if score $pos1zt worldtool > $pos2zt worldtool run tag @s add outl_nZ
execute if score $pos1zt worldtool < $pos2zt worldtool run tag @s add outl_pZ

execute at @s if score $pos1xt worldtool = $pos2xt worldtool run tp @s ~.999 ~ ~
execute at @s if score $pos1yt worldtool = $pos2yt worldtool run tp @s ~ ~.999 ~
execute at @s if score $pos1zt worldtool = $pos2zt worldtool run tp @s ~ ~ ~.999

execute if score $pos1xt worldtool > $pos2xt worldtool run scoreboard players remove $pos2xt worldtool 1
execute if score $pos1xt worldtool < $pos2xt worldtool run scoreboard players add $pos2xt worldtool 1
execute if score $pos1yt worldtool > $pos2yt worldtool run scoreboard players remove $pos2yt worldtool 1
execute if score $pos1yt worldtool < $pos2yt worldtool run scoreboard players add $pos2yt worldtool 1
execute if score $pos1zt worldtool > $pos2zt worldtool run scoreboard players remove $pos2zt worldtool 1
execute if score $pos1zt worldtool < $pos2zt worldtool run scoreboard players add $pos2zt worldtool 1

scoreboard players operation @s wt_pos1x = $pos1xt worldtool
scoreboard players operation @s wt_pos1y = $pos1yt worldtool
scoreboard players operation @s wt_pos1z = $pos1zt worldtool

scoreboard players operation @s wt_pos2x = $pos2xt worldtool
scoreboard players operation @s wt_pos2y = $pos2yt worldtool
scoreboard players operation @s wt_pos2z = $pos2zt worldtool

execute at @s[tag=outl_nX] run tp @s ~.999 ~ ~
execute at @s[tag=outl_nY] run tp @s ~ ~.999 ~
execute at @s[tag=outl_nZ] run tp @s ~ ~ ~.999