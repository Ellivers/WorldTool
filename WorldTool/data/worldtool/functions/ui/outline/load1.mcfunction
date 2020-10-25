execute as @e[type=minecraft:area_effect_cloud,tag=worldtool] unless entity @s[tag=!pos1,tag=!pos2] if score @s wt_ID = @p wt_ID run tag @s add outline_load
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1,tag=outline_load,limit=1] at @s run function worldtool:ui/outline/pos1
tag @s add outl_tick
schedule function worldtool:ui/outline/load.tick1 1t