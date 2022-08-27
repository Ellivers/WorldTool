# Called by worldtool:ui_brush/menu
# Select one of deez brushes

function worldtool:ui/clear_chat
function worldtool:ui_brush/back_button

# Paint brush
execute unless predicate worldtool:brush_tool/brushes/paint run tellraw @s {"nbt":"Translation.\"button.brush.paint.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.paint.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_brush/paint"}}
execute if predicate worldtool:brush_tool/brushes/paint run tellraw @s {"nbt":"Translation.\"button.brush.paint.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.aleady_selected.description\"","storage": "worldtool:storage"}}}

# Place brush
execute unless predicate worldtool:brush_tool/brushes/place run tellraw @s {"nbt":"Translation.\"button.brush.place.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.place.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_brush/place"}}
execute if predicate worldtool:brush_tool/brushes/place run tellraw @s {"nbt":"Translation.\"button.brush.place.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.aleady_selected.description\"","storage": "worldtool:storage"}}}

# Replace brush
execute unless predicate worldtool:brush_tool/brushes/replace run tellraw @s {"nbt":"Translation.\"button.brush.replace.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.replace.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_brush/replace/set"}}
execute if predicate worldtool:brush_tool/brushes/replace run tellraw @s {"nbt":"Translation.\"button.brush.replace.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.aleady_selected.description\"","storage": "worldtool:storage"}}}

# Circle brush
execute unless predicate worldtool:brush_tool/brushes/circle run tellraw @s {"nbt":"Translation.\"button.brush.circle.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.circle.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_brush/circle"}}
execute if predicate worldtool:brush_tool/brushes/circle run tellraw @s {"nbt":"Translation.\"button.brush.circle.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.aleady_selected.description\"","storage": "worldtool:storage"}}}

# Sphere brush
execute unless predicate worldtool:brush_tool/brushes/sphere run tellraw @s {"nbt":"Translation.\"button.brush.sphere.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.sphere.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_brush/sphere"}}
execute if predicate worldtool:brush_tool/brushes/sphere run tellraw @s {"nbt":"Translation.\"button.brush.sphere.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.aleady_selected.description\"","storage": "worldtool:storage"}}}

# Structure brush
execute unless predicate worldtool:brush_tool/brushes/structure run tellraw @s {"nbt":"Translation.\"button.brush.structure.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.structure.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_brush/select_brush/structure"}}
execute if predicate worldtool:brush_tool/brushes/structure run tellraw @s {"nbt":"Translation.\"button.brush.structure.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.brush.aleady_selected.description\"","storage": "worldtool:storage"}}}

function #worldtool:addon/ui_brush/brush_list

function worldtool:ui/anti_feedback_chat_message/load
