#Woohoo! It's done!
scoreboard players reset $drawingposX worldtool
scoreboard players reset $drawingposY worldtool
scoreboard players reset $drawingposZ worldtool

scoreboard players operation #ID_temp worldtool = @p wt_ID

#The drawer gets to do some stuff too ♥
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer] if score @s wt_ID = #ID_temp worldtool run function worldtool:fill_done_wed

#execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clipboard_marker1] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:clipboard/place_pos2

#DELET
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randompoint,tag=dostuff] if score @s wt_ID = #ID_temp worldtool run tag @s remove dostuff
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer]
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos]

tag @s remove wt.started_function
scoreboard players set $functionRunning worldtool 0
scoreboard players set $brushFunctionRunning worldtool 0
