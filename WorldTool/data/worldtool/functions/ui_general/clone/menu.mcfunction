# Called by worldtool:ui_general/page_1.display
# Shows the clone menu

function worldtool:ui/clear_chat
function worldtool:ui/back_button

tag @s add wt.menu.clone

tellraw @s [{"nbt":"Translation.\"button.clone.copy.name\"","storage": "worldtool:storage","color": "dark_green","clickEvent":{"action":"run_command","value":"/function worldtool:ui_general/clone/select_destination/copy"},"hoverEvent":{"action":"show_text","contents": {"nbt":"Translation.\"button.clone.copy.description\""}}},{"nbt":"Translation.\"button.clone.move.name\"","storage": "worldtool:storage","color": "light_purple","clickEvent":{"action": "run_command","value": "/function worldtool:ui_general/clone/select_destination/move"},"hoverEvent":{"action":"show_text","contents":{"nbt":"Translation.\"button.clone.move.description\"","storage": "worldtool:storage"}}}]

function worldtool:ui/anti_feedback_chat_message/load
