function worldtool:ui/summon_check_block/both

tag @s remove hollowing
tag @s add placing_hollow_inner
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n[Select a block]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Select a block to fill the inner part with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~-1 ~ ~ "}},{"text":"(Air)  ","color":"white","hoverEvent":{"action":"show_text","value":"Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/hollow/inner_block/selected"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load