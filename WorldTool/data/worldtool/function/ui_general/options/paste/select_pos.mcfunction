# Called by worldtool:ui_general/options/paste/menu
# Prompts to select a block in the world

function worldtool:ui_general/check_tool
item modify entity @s weapon.mainhand worldtool:general_tool/pastepos
function worldtool:ui/sound.change_item

function worldtool:ui/clear_chat
function worldtool:ui/back_button
tag @s[tag=wt.helper_particles] add wt.particles
tag @s add wt.menu.select_paste_pos
tag @s add wt.reopen_after_reload

tellraw @s {"nbt":"Translation.\"info.select_paste_pos\"","storage": "worldtool:storage"}

function worldtool:ui/anti_feedback_chat_message/load
