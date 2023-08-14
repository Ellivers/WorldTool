# Called by worldtool:ui_shapes/menu
# A few additional options for the shape generation tool's menu

function worldtool:ui/clear_chat
function worldtool:ui_shapes/back_button
tag @s add wt.menu.shapes.options
tag @s add wt.reopen_after_reload

function #rx.playerdb:api/v2/get/self
function worldtool:ui/undo_redo/display

tellraw @s ["\n",{"nbt":"Translation.\"button.selection_options.name\"","storage": "worldtool:storage","color": "light_purple","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.selection_options.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_shapes/options/selection/menu"}},"\n"]

function worldtool:ui/particles/display_option

tellraw @s ["\n",{"nbt":"Translation.\"button.settings.name\"","storage": "worldtool:storage","color": "green","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.settings.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/settings/menu"}}]

tellraw @s ["\n",{"nbt":"Translation.\"button.kill_process.name\"","storage": "worldtool:storage","color": "red","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.kill_process.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/kill_process"}}," ",{"nbt":"Translation.\"button.empty_queue.name\"","storage": "worldtool:storage","color": "#b5146d","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.empty_queue.description\"","storage": "worldtool:storage"}},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/options/empty_queue"}}]

function worldtool:ui/anti_feedback_chat_message/load
