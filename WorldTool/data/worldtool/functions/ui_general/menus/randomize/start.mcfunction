scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s add random2
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=randompoint] if score @s wt_ID = #ID_temp worldtool run tag @s add dostuff
function worldtool:process_load/start_check1

function worldtool:ui_general/menus/randomize/select
