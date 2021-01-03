scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s[distance=0..] wt_ID = #ID_temp worldtool run tag @s add wt_destroy
function worldtool:load_process/start_check1