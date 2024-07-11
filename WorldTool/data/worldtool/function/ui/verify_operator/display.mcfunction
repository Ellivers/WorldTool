# Called by worldtool:process_start/brush/load and worldtool:use_tool/ray_hit/load
# Displays a menu that allows you to verify yourself as an operator

tellraw @s {"nbt":"Translation.\"info.verify_operator\"","storage": "worldtool:storage","color": "gold"}
tellraw @s {"nbt":"Translation.\"button.verify_operator.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.verify_operator.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/verify_operator/verify"}}

tag @s add wt.no_space
function worldtool:ui/anti_feedback_chat_message/load
