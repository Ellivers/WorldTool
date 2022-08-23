# Called by worldtool:ui_general/options/paste/menu
# Prompts to select a block in the world

function worldtool:ui_general/check_tool
item modify entity @s weapon.mainhand worldtool:general_tool/pastepos
function worldtool:ui/sound.change_item

tag @s add wt.dont_remove_tags
function worldtool:ui/clear_chat
function worldtool:ui/reopen_menu/from_submenu.back_button

tellraw @s {"nbt":"Translation.\"info.select_paste_pos\"","storage": "worldtool:storage"}

function worldtool:ui/anti_feedback_chat_message/load
