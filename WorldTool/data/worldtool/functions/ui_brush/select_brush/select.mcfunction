# Called by worldtool:ui_brush/main
# Select one of deez brushes

function worldtool:ui/clear_chat
function worldtool:ui_brush/back_button

execute unless predicate worldtool:brush_tool/brushes/paint run tellraw @s {"nbt":"Translation.\"button.brush.paint.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.paint.name\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_brush/paint"}}
execute if predicate worldtool:brush_tool/brushes/paint run tellraw @s {"nbt":"Translation.\"button.brush.paint.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.aleady_selected.description\"","storage": "worldtool:storage"}}}

function #worldtool:addon/ui_brush/brush_list

function worldtool:ui/anti_feedback_chat_message/load
