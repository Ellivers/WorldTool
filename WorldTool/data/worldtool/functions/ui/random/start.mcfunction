execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add random2
execute as @e[type=minecraft:area_effect_cloud,tag=randompoint] if score @s wt_ID = @p wt_ID run tag @s add dostuff
function worldtool:load_function/start_check