function worldtool:ui_general/clear_chat

scoreboard players operation #ID_temp worldtool = @s wt_ID
execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = #ID_temp worldtool run function worldtool:ui_general/foliage/select_biome/select.pos1
tellraw @s {"text":"\n[⬅Back]","color":"gold","hoverEvent":{"action":"show_text","value":"Go back to the main Foliage menu"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/foliage/select"}}

function worldtool:ui_general/anti_feedback_chat_message/load