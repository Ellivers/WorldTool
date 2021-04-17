# DELET
kill 35c1ab68-9d4c-11eb-a8b3-0242ac130003
kill @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=clonepos]

tag @s remove wt_started_function
scoreboard players set $functionRunning worldtool 0
scoreboard players set $brushFunctionRunning worldtool 0

scoreboard players reset $drawingposX worldtool
scoreboard players reset $drawingposY worldtool
scoreboard players reset $drawingposZ worldtool