execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/measure/start.pos1
function worldtool:load_process/start_check1