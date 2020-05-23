function worldtool:ui/summon_check_block/1

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run tag @s add filtered
tag @s add measure_filter
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n[Select a block]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Select a block to filter with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"(Air)  ","color":"reset","hoverEvent":{"action":"show_text","value":"Air/Water"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/measure/start.air"}},{"text":"[Cancel]","color":"reset","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load