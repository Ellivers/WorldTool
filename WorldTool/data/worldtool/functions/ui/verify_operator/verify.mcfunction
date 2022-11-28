# Called by worldtool:ui/verify_operator/display
# Verifies that the player is an operator

tag @s add wt.user
tellraw @s ["\n",{"nbt":"Translation.\"info.verify_operator_success\"","storage": "worldtool:storage","color": "green"}]

function worldtool:ui/anti_feedback_chat_message/load
