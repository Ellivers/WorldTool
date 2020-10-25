function worldtool:ui/clear_chat

execute as @e[type=minecraft:area_effect_cloud,tag=worldtool,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/foliage/select_biome/select.pos1
tellraw @s {"text":"\n[⬅Back]","color":"gold","hoverEvent":{"action":"show_text","value":"Go back to the main Foliage menu"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/foliage/select"}}

function worldtool:ui/anti_feedback_chat_message/load