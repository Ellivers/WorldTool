#setblock ~ 254 ~ minecraft:stone
clone ~ ~ ~ ~ ~ ~ ~ 1 ~ replace move
tellraw @s [{"text":"\n\n\n"},{"text":"[Select which block to replace with]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Select a block to replace the other block with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text":"(Air)  ","hoverEvent":{"action":"show_text","value":"Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:load_function/global_start"}},{"text":"[Cancel]  ","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
tag @s remove replacing_fill1
tag @s add replacing_fill2

function worldtool:ui/anti_feedback_chat_message/load