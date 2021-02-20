scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:ui_general/measure/start.pos1
function worldtool:load_process/start_check1
