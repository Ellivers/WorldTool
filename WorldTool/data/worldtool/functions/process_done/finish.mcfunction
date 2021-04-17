# Woo-hoo! It's done!

scoreboard players operation #ID_temp worldtool = @s wt_ID

# The drawer gets to do some stuff too ♥
execute as 35c1ab68-9d4c-11eb-a8b3-0242ac130003 if score @s wt_ID = #ID_temp worldtool run function worldtool:process_done/finish.wed

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randompoint,tag=dostuff] if score @s wt_ID = #ID_temp worldtool run tag @s remove dostuff
