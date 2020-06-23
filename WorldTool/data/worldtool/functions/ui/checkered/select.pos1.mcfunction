tag @s remove wt_destroy

execute if entity @s[tag=keep] run tellraw @p {"text":"Keep is on","color":"green","italic":true}

execute if entity @s[tag=keep] run tellraw @p [{"text":"\n\n\n"},{"text": "[Select a block...]  ","color": "aqua","hoverEvent":{"action":"show_text","value":"Select a block to make the pattern with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text":"(Air)  ","hoverEvent":{"action":"show_text","value":"Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/checkered/start"}},{"text":"[Replace...]  ","color": "light_purple","hoverEvent":{"action":"show_text","value":"Choose a certain block to replace another block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/checkered/replace/select_replace"}},{"text":"[Keep: On]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/checkered/keep"}},{"text":"[Cancel]  ","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=!keep] run tellraw @p [{"text":"\n\n\n"},{"text": "[Select a block...]  ","color": "aqua","hoverEvent":{"action":"show_text","value":"Select a block to make the pattern with"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text":"(Air)  ","hoverEvent":{"action":"show_text","value":"Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/checkered/start"}},{"text":"[Replace...]  ","color": "light_purple","hoverEvent":{"action":"show_text","value":"Choose a certain block to replace another block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/checkered/replace/select_replace"}},{"text":"[Keep: Off]  ","color": "gold","hoverEvent":{"action":"show_text","value":"Don't replace any existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/checkered/keep"}},{"text":"[Cancel]  ","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load