scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add hollow
function worldtool:process_load/start_check1

function worldtool:ui_general/menus/hollow/select
