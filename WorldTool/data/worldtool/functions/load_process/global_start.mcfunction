# Global starting function for most... functions. I really need to give them a better name.

tag @s remove placing_fill
tag @s remove in_menu
execute if entity @s[tag=wt_checkered_temp] run function worldtool:load_process/checkered_load
function worldtool:ui/player_removetags

# Place the selected block(s) and remove the block marker
execute at @s as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_check] if score @s wt_ID = @p wt_ID at @s run function worldtool:load_process/global_start.check_block

# Start
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s[distance=0..] wt_ID = @p wt_ID at @s run function worldtool:load_process/load_fill

function worldtool:ui/anti_feedback_chat_message/load