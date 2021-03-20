execute if entity @s[tag=!wt_dont_move_pos1] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] at @s run tp @s ~ ~-1 ~
execute if entity @s[tag=!wt_dont_move_pos2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] at @s run tp @s ~ ~-1 ~
function worldtool:ui_general/menus/options/nudge/select