execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID at @s run function worldtool:ui/measure/start.pos1
function worldtool:load_function/start_check1