execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=cmdpos1] run function worldtool:ui/clone_rotate/mirror_off
scoreboard players set $rotX worldtool 0
scoreboard players set $rotY worldtool 0
scoreboard players set $rotZ worldtool 0