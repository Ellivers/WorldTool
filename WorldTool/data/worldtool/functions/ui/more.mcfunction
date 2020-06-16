execute as @e[type=minecraft:area_effect_cloud,tag=check_block] if score @s wt_ID = @p wt_ID run kill @s

tag @s remove placing_fill

tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n[Checkered...]  ","color":"gold","hoverEvent":{"action":"show_text","value":"Place on every other block"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/checkered/select"}},{"text":"[Greenery...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Randomly place flowers and grass from a selected biome"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/foliage/select"}},{"text": "[Outline...]  ","color":"light_purple","hoverEvent": {"action": "show_text","value": "Place blocks in the corners of the selected area"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/fill_outline/select"}},{"text":"[Command block list]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"List the commands of the first command block chain found"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cmd_list"}}]
execute if entity @s[tag=!fun_menu] run tellraw @s {"text":"[Fun ▶...]","color":"blue","hoverEvent":{"action":"show_text","value":"Random functions that were implemented for fun"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/fun/toggle"}}
execute if entity @s[tag=fun_menu] run tellraw @s [{"text":"[Fun ▼...]","color":"blue","hoverEvent":{"action":"show_text","value":"Random functions that were implemented for fun"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/fun/toggle"}},{"text":"\n[Command block chain]","hoverEvent":{"action":"show_text","value":"Fill the selected area with a chain of chain command blocks"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/fun/cmd_block_fill"}}]
tellraw @s [{"text":"\n[⬅Back]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Go back to the main menu"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/select"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load