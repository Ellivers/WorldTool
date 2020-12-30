scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_generation_marker] if score @s wt_ID = #ID_temp worldtool run kill @s
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=wt_shape_preview] if score @s wt_ID = #ID_temp worldtool run kill @s
tag @s remove wt_check_block_shge
tag @s remove grabbing_block
tag @s remove grabbing_block_gentool
function worldtool:ui/clear_chat
tellraw @s "Cancelled"
function worldtool:ui/anti_feedback_chat_message/load
