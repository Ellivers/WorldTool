scoreboard players operation #ID_temp worldtool = @s wt_ID

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s[distance=0..] wt_ID = #ID_temp worldtool run tag @s add wt_found
tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=wt_found,limit=1] add checkered
execute if entity @s[tag=wt_nochX] run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=wt_found,limit=1] add wt_nochX
execute if entity @s[tag=wt_nochY] run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=wt_found,limit=1] add wt_nochY
execute if entity @s[tag=wt_nochZ] run tag @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=wt_found,limit=1] add wt_nochZ
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s[distance=0..] wt_ID = #ID_temp worldtool run tag @s remove wt_found

function worldtool:process_load/start_check1
