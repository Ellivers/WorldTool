execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s remove inner_block
function worldtool:ui/summon_check_block/primary
tag @s remove wt_inner
function worldtool:ui/hollow/select