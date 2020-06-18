function worldtool:ui/summon_check_block/1

tag @s add placing_replace_foliage
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n[Select a block]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Select a block to replace"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load