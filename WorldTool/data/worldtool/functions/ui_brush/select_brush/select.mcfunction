function worldtool:ui_general/clear_chat
tellraw @s {"text":"Select a new brush:\n\n","color":"light_purple","bold":true}

execute unless predicate worldtool:brushes/paint run tellraw @p {"text":"[Paint]","color":"green","hoverEvent":{"action":"show_text","value":"Paint existing blocks with a block of your choice"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/paint"}}
execute if predicate worldtool:brushes/paint run tellraw @p {"text":"[Paint]","color":"gray","hoverEvent": {"action": "show_text","value": "Already selected"}}

execute unless predicate worldtool:brushes/place run tellraw @p {"text":"[Place]","color":"green","hoverEvent":{"action":"show_text","value":"Place blocks on existing ones"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/place"}}
execute if predicate worldtool:brushes/place run tellraw @p {"text":"[Place]","color":"gray","hoverEvent": {"action": "show_text","value": "Already selected"}}

execute unless predicate worldtool:brushes/replace run tellraw @p {"text":"[Replace]","color":"green","hoverEvent":{"action":"show_text","value":"Choose a block to replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/replace"}}
execute if predicate worldtool:brushes/replace run tellraw @p {"text":"[Replace]","color":"gray","hoverEvent": {"action": "show_text","value": "Already selected"}}

execute unless predicate worldtool:brushes/sphere run tellraw @p {"text":"[Sphere]","color":"green","hoverEvent":{"action":"show_text","value":"Place a sphere"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/sphere"}}
execute if predicate worldtool:brushes/sphere run tellraw @p {"text":"[Sphere]","color":"gray","hoverEvent": {"action": "show_text","value": "Already selected"}}

execute unless predicate worldtool:brushes/circle run tellraw @p {"text":"[Circle]","color":"green","hoverEvent":{"action":"show_text","value":"Place a circle"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/circle"}}
execute if predicate worldtool:brushes/circle run tellraw @p {"text":"[Circle]","color":"gray","hoverEvent": {"action": "show_text","value": "Already selected"}}

execute unless predicate worldtool:brushes/structure run tellraw @p {"text":"[Structure]","color":"green","hoverEvent":{"action":"show_text","value":"Load a structure"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select_brush/structure"}}
execute if predicate worldtool:brushes/structure run tellraw @p {"text":"[Structure]","color":"gray","hoverEvent": {"action": "show_text","value": "Already selected"}}

execute if score $brushAddons worldtool matches 1.. run tellraw @p {"text": "\nAddon brushes:\n","color":"light_purple"}
function #worldtool:brush/select_brush

tellraw @s {"text":"\n[⬅Back]","color":"gold","hoverEvent":{"action":"show_text","value":"Back to the main brush menu"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui_brush/select"}}
function worldtool:ui_general/anti_feedback_chat_message/load
