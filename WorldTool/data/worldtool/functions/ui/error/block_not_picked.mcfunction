# Called by worldtool:pick_block/other/attempt2

function worldtool:ui/clear_chat
tellraw @s {"nbt":"Translation.\"error.block_not_picked\"","storage": "worldtool:storage","color": "red"}
function worldtool:ui/anti_feedback_chat_message/load
