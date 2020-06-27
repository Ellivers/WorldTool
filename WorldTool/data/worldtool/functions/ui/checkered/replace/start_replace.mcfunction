execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s[distance=..200] wt_ID = @p wt_ID run tag @s add checkered
function worldtool:load_function/start_check