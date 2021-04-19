scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add wt_fill
function worldtool:process_load/start_check1

execute if entity @s[tag=replacing_fill2] run function worldtool:ui_general/menus/replace/select_replace
execute if entity @s[tag=placing_fill] run function worldtool:ui_general/menus/page1
