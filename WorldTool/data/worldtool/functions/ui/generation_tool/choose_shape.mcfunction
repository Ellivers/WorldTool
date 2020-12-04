function worldtool:ui/clear_chat

tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main generation menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/generation_tool/select"}}

execute unless predicate worldtool:shapes/circle run tellraw @s {"text": "[Circle]","color": "green","hoverEvent": {"action": "show_text","value": "Draw a flat circle"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/select/circle"}}
execute if predicate worldtool:shapes/circle run tellraw @s {"text": "[Circle]","color": "gray","hoverEvent": {"action": "show_text","value": "Draw a flat circle"}}

execute unless predicate worldtool:shapes/cylinder run tellraw @s {"text": "[Cylinder]","color": "green","hoverEvent": {"action": "show_text","value": "Cylinder"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/select/cylinder"}}
execute if predicate worldtool:shapes/cylinder run tellraw @s {"text": "[Cylinder]","color": "gray","hoverEvent": {"action": "show_text","value": "Cylinder"}}

execute unless predicate worldtool:shapes/sphere run tellraw @s {"text": "[Sphere]","color": "green","hoverEvent": {"action": "show_text","value": "Sphere"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/select/sphere"}}
execute if predicate worldtool:shapes/sphere run tellraw @s {"text": "[Sphere]","color": "gray","hoverEvent": {"action": "show_text","value": "Sphere"}}

execute unless predicate worldtool:shapes/cone run tellraw @s {"text": "[Cone]","color": "green","hoverEvent": {"action": "show_text","value": "Cone"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/generation_tool/select/cone"}}
execute if predicate worldtool:shapes/cone run tellraw @s {"text": "[Cone]","color": "gray","hoverEvent": {"action": "show_text","value": "Cone"}}

function worldtool:ui/anti_feedback_chat_message/load
