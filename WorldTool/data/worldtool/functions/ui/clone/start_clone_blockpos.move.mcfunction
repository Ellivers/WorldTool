execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add moveclone
function worldtool:ui/clone/start_clone_blockpos