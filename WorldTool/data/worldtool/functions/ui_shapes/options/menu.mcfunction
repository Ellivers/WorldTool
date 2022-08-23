# Called by worldtool:ui_shapes/menu
# A few additional options for the shape generation tool's menu

function worldtool:ui/clear_chat
function worldtool:ui_shapes/back_button
tag @s add wt.menu.shapes.options

function #rx.playerdb:api/v2/get/self
function worldtool:ui/undo_redo/display

tellraw @s ["\n",{"nbt":"Translation.\"button.settings.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/menu"}}]

function worldtool:ui/anti_feedback_chat_message/load
