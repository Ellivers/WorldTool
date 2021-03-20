scoreboard players operation #ID_temp worldtool = @s wt_ID
execute if entity @s[tag=!wt_dont_move_pos1] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool at @s run tp @s ~ ~1 ~
execute if entity @s[tag=!wt_dont_move_pos2] as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos2] if score @s wt_ID = #ID_temp worldtool at @s run tp @s ~ ~1 ~
function worldtool:ui_general/menus/options/nudge/select