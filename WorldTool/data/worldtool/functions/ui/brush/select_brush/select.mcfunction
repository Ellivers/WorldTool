function worldtool:ui/clear_chat
tellraw @s {"text":"Select a new brush:\n\n\n\n","color":"light_purple","bold":true}

execute unless predicate worldtool:brushes/paint run tellraw @p [{"text":"[Paint]","color":"green","hoverEvent":{"action":"show_text","value":"Paint existing blocks with a block of your choice"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/paint"}}]
execute if predicate worldtool:brushes/paint run tellraw @p [{"text":"[Paint]","color":"gray"}]

execute unless predicate worldtool:brushes/place run tellraw @p [{"text":"[Place]","color":"green","hoverEvent":{"action":"show_text","value":"Place blocks on existing ones"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/place"}}]
execute if predicate worldtool:brushes/place run tellraw @p [{"text":"[Place]","color":"gray"}]

#execute unless predicate worldtool:brushes/color run tellraw @p [{"text":"[Color]","color":"green","hoverEvent":{"action":"show_text","value":"Change blocks to their closest colored counterpart"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/color"}}]
#execute if predicate worldtool:brushes/color run tellraw @p [{"text":"[Color]","color":"gray"}]

execute unless predicate worldtool:brushes/replace run tellraw @p [{"text":"[Replace]","color":"green","hoverEvent":{"action":"show_text","value":"Choose a block to replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/replace"}}]
execute if predicate worldtool:brushes/replace run tellraw @p [{"text":"[Replace]","color":"gray"}]

execute unless predicate worldtool:brushes/sphere run tellraw @p [{"text":"[Sphere]","color":"green","hoverEvent":{"action":"show_text","value":"Place a sphere"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/sphere"}}]
execute if predicate worldtool:brushes/sphere run tellraw @p [{"text":"[Sphere]","color":"gray"}]

execute unless predicate worldtool:brushes/circle run tellraw @p [{"text":"[Circle]","color":"green","hoverEvent":{"action":"show_text","value":"Place a circle"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/circle"}}]
execute if predicate worldtool:brushes/circle run tellraw @p [{"text":"[Circle]","color":"gray"}]

execute unless predicate worldtool:brushes/flat_paint run tellraw @p [{"text":"[Flat - Paint]","color":"green","hoverEvent":{"action":"show_text","value":"Paint existing blocks in a flat square shape"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/flat_paint"}}]
execute if predicate worldtool:brushes/flat_paint run tellraw @p [{"text":"[Flat - Paint]","color":"gray"}]

execute unless predicate worldtool:brushes/flat_place run tellraw @p [{"text":"[Flat - Place]","color":"green","hoverEvent":{"action":"show_text","value":"Place blocks in a flat square shape"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select_brush/flat_place"}}]
execute if predicate worldtool:brushes/flat_place run tellraw @p [{"text":"[Flat - Place]","color":"gray"}]

execute if score $brushAddons worldtool matches 1.. run tellraw @p {"text": "\nAddon brushes:\n","color":"light_purple"}
function #worldtool:brush_list

tellraw @s {"text":"\n\n[⬅Back]","color":"gold","hoverEvent":{"action":"show_text","value":"Back to the main selection screen"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/select"}}
function worldtool:ui/anti_feedback_chat_message/load