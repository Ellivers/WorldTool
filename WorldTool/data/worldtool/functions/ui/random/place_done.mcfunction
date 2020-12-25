scoreboard players set $functionRunning worldtool 0
tag @a remove wt.started_function
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove random1
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_drawer] if score @s wt_ID = @p wt_ID run kill @s

execute at @s run function worldtool:ui/random/select
