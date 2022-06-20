# Called by worldtool:ui_general/options/save_load/paste/menu
# Prompts to select a block in the world

item modify entity @s weapon.mainhand worldtool:general_tool/pastepos
function worldtool:ui/sound.change_item

function worldtool:ui/clear_chat
function worldtool:ui/back_button

execute if entity @s[tag=wt.outline_selection] run tag @s add wt.particles
tag @s add wt.menu.select_paste_pos

tellraw @s {"nbt":"Translation.\"info.select_paste_pos\"","storage": "worldtool:storage"}

function worldtool:ui/anti_feedback_chat_message/load
