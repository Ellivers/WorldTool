scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run tag @s remove inner_block
function worldtool:ui_general/summon_check_block/primary
tag @s remove wt_inner
function worldtool:ui_general/menus/hollow/select