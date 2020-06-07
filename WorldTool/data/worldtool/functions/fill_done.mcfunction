#Woohoo! It's done!
scoreboard players reset $drawingposX worldtool
scoreboard players reset $drawingposY worldtool
scoreboard players reset $drawingposZ worldtool

#The drawer gets to do some stuff too ♥
execute as @e[type=minecraft:area_effect_cloud,tag=wt_drawer] if score @s wt_ID = @p wt_ID run function worldtool:fill_done_wed

execute as @e[type=minecraft:area_effect_cloud,tag=clipboard_marker1] if score @s wt_ID = @p wt_ID at @s run function worldtool:clipboard/place_pos2

#DELET
execute as @e[type=minecraft:area_effect_cloud,tag=randompoint,tag=dostuff] if score @s wt_ID = @p wt_ID run tag @s remove dostuff
kill @e[type=minecraft:area_effect_cloud,tag=wt_drawer]
kill @e[type=minecraft:area_effect_cloud,tag=clonepos]