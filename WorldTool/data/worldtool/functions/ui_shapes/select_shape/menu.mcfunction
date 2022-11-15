# Called by worldtool:ui_shapes/menu
# Menu for selecting a shape

function worldtool:ui/clear_chat
function worldtool:ui_shapes/back_button

# Cylinder
execute if predicate worldtool:shape_tool/shapes/cylinder run tellraw @s {"nbt":"Translation.\"button.shape.cylinder.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shape.already_selected.description\"","storage": "worldtool:storage"}}}
execute unless predicate worldtool:shape_tool/shapes/cylinder run tellraw @s {"nbt":"Translation.\"button.shape.cylinder.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shape.cylinder.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/cylinder"}}

# Cone
execute if predicate worldtool:shape_tool/shapes/cone run tellraw @s {"nbt":"Translation.\"button.shape.cone.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shape.already_selected.description\"","storage": "worldtool:storage"}}}
execute unless predicate worldtool:shape_tool/shapes/cone run tellraw @s {"nbt":"Translation.\"button.shape.cone.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shape.cone.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/cone"}}

# Sphere
execute if predicate worldtool:shape_tool/shapes/sphere run tellraw @s {"nbt":"Translation.\"button.shape.sphere.name\"","storage": "worldtool:storage","color": "gray","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shape.already_selected.description\"","storage": "worldtool:storage"}}}
execute unless predicate worldtool:shape_tool/shapes/sphere run tellraw @s {"nbt":"Translation.\"button.shape.sphere.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.shape.sphere.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/select_shape/sphere"}}

function #worldtool:hooks/ui_shapes/shape_list

function worldtool:ui/anti_feedback_chat_message/load
