execute if entity @s[tag=!keep] run tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text": "[Select a block]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Select a block to use for the outside"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"(Air)  ","color": "white","hoverEvent": {"action": "show_text","value": "Air/Water"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/fill_outline/start_del"}},{"text":"[Keep: Off]  ","color": "gold","hoverEvent": {"action": "show_text","value": "Toggle replacing existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/fill_outline/keep_toggle"}},{"text":"[Cancel]","hoverEvent": {"action": "show_text","value": "Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=keep] run tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text": "[Select a block]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Select a block to use for the outside"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~ ~ ~ "}},{"text":"[Keep: On]  ","color": "gold","hoverEvent": {"action": "show_text","value": "Toggle replacing existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/fill_outline/keep_toggle"}},{"text":"[Cancel]  ","hoverEvent": {"action": "show_text","value": "Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]