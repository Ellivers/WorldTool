execute at @s as @e[type=minecraft:area_effect_cloud] unless entity @s[tag=!wt_clone_preview_pos1,tag=!wt_clone_preview_pos2] if score @s wt_ID = @p wt_ID run tag @s add outline_load
execute as @e[type=minecraft:area_effect_cloud,tag=wt_clone_preview_pos1,tag=outline_load,limit=1] at @s run function worldtool:particles/clone_preview/position/pos1

execute as @e[type=minecraft:area_effect_cloud,tag=wt_clone_preview_pos2,tag=outline_load,limit=1] at @s run function worldtool:particles/clone_preview/position/pos2