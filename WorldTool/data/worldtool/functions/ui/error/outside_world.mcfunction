# Called by worldtool:technical/common/get_dim_bottom/load

function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.outside_world\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load
