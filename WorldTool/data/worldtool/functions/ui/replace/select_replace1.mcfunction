tag @s add replacing_fill1

function worldtool:ui/summon_check_block/1

execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if entity @s[tag=replacefill,tag=!replacefill_reversed] if score @s wt_ID = @p wt_ID run tellraw @p [{"text":"\n\n\n"},{"text":"[Select which block to replace]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Select which block you want to replace"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"(Air)  ","color":"white","hoverEvent":{"action":"show_text","value":"Air/Water"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/replace/select_replace2.air"}},{"text":"[Cancel]  ","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if entity @s[tag=replacefill_reversed,tag=!replacefill] if score @s wt_ID = @p wt_ID run tellraw @p [{"text":"\n\n\n"},{"text":"[Select which block to not replace]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Select which block you don't want to replace"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"(Air)  ","color":"white","hoverEvent":{"action":"show_text","value":"Air/Water"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/replace/select_replace2.air"}},{"text":"[Cancel]  ","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]

function worldtool:ui/anti_feedback_chat_message/load