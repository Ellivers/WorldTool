scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool] unless entity @s[tag=!wt_clone_preview_pos1,tag=!wt_clone_preview_pos2] if score @s wt_ID = #ID_temp worldtool run tag @s add outline_load
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos1,tag=outline_load,limit=1] at @s run function worldtool:particles/clone_preview/position/pos1

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_clone_preview_pos2,tag=outline_load,limit=1] at @s run function worldtool:particles/clone_preview/position/pos2
