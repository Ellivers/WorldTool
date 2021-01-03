# Global starting function for most... functions. I really need to give them a better name.

scoreboard players operation #ID_temp worldtool = @s wt_ID
tag @s remove placing_fill
tag @s remove in_menu
execute if entity @s[tag=wt_checkered_temp] run function worldtool:load_process/checkered_load
function worldtool:ui/player_removetags

# Place the selected block(s) and remove the block marker
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = #ID_temp worldtool at @s run function worldtool:load_process/global_start.check_block

function worldtool:load_process/load_check
