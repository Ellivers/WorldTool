# Called by worldtool:ui_brush/select_block/normal/pick_block and worldtool:ui_brush/select_block/replace/pick_block

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat
function worldtool:ui/back_button

tellraw @s ["\n",{"nbt":"Translation.\"info.pick_block\"","storage": "worldtool:storage"}]
function worldtool:ui/anti_feedback_chat_message/load
