execute if block ~ ~ ~ #worldtool:water run setblock ~ 1 ~ water
execute unless block ~ ~ ~ #worldtool:water run setblock ~ 1 ~ air
tellraw @s [{"text":"\n\n\n"},{"text":"[Select which block to replace with]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Select a block to replace the other block with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"(Air)  ","color":"white","hoverEvent":{"action":"show_text","value":"Air/Water"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/replace/start_replace.air"}},{"text":"[Cancel]  ","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
tag @s remove replacing_fill1
tag @s add replacing_fill2

function worldtool:ui/anti_feedback_chat_message/load