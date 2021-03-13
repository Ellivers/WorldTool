# Global starting function for most processes

scoreboard players operation #ID_temp worldtool = @s wt_ID
tag @s remove placing_fill
tag @s remove in_menu
function worldtool:ui_general/player_removetags

# Place the selected block(s) and remove the block marker
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:load_process/global_start.check_block

function worldtool:load_process/load_check
