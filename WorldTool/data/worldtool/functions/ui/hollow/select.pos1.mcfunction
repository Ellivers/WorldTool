execute if entity @s[tag=keep] run tellraw @p {"text":"Keep is on","color":"green","italic":true}

execute if entity @s[tag=!keep,tag=!inner_block] run tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text": "[Select a block]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Select a block to use for the outside"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text":"(Air)  ","color": "white","hoverEvent": {"action": "show_text","value": "Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/hollow/start_hollow"}},{"text": "[Inner block: Off...]  ","color":"light_purple","hoverEvent": {"action": "show_text","value": "Fill the inside of the outline with a block"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/hollow/inner_block/select"}},{"text":"[Keep: Off]  ","color": "gold","hoverEvent": {"action": "show_text","value": "Toggle replacing existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/hollow/keep_toggle"}},{"text":"\n[Cancel]","hoverEvent": {"action": "show_text","value": "Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=keep,tag=!inner_block] run tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text": "[Select a block]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Select a block to use for the outside"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text": "[Inner block: Off...]  ","color":"light_purple","hoverEvent": {"action": "show_text","value": "Fill the inside of the outline with a block"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/hollow/inner_block/select"}},{"text":"[Keep: On]  ","color": "gold","hoverEvent": {"action": "show_text","value": "Toggle replacing existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/hollow/keep_toggle"}},{"text":"[Cancel]  ","hoverEvent": {"action": "show_text","value": "Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]

execute if entity @s[tag=!keep,tag=inner_block] run tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text": "[Select a block]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Select a block to use for the outside"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text":"(Air)  ","color": "white","hoverEvent": {"action": "show_text","value": "Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/hollow/start_hollow"}},{"text": "[Inner block: On]  ","color":"light_purple","hoverEvent": {"action": "show_text","value": "Fill the inside of the outline with a block"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/hollow/inner_block/off"}},{"text":"[Keep: Off]  ","color": "gold","hoverEvent": {"action": "show_text","value": "Toggle replacing existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/hollow/keep_toggle"}},{"text":"\n[Cancel]","hoverEvent": {"action": "show_text","value": "Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
execute if entity @s[tag=keep,tag=inner_block] run tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text": "[Select a block]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Select a block to use for the outside"},"clickEvent":{"action":"suggest_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID at @s run setblock ~1 ~ ~ "}},{"text": "[Inner block: On]  ","color":"light_purple","hoverEvent": {"action": "show_text","value": "Fill the inside of the outline with a block"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/hollow/inner_block/off"}},{"text":"[Keep: On]  ","color": "gold","hoverEvent": {"action": "show_text","value": "Toggle replacing existing blocks"},"clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,tag=pos1] if score @s wt_ID = @p wt_ID run function worldtool:ui/hollow/keep_toggle"}},{"text":"[Cancel]  ","hoverEvent": {"action": "show_text","value": "Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]