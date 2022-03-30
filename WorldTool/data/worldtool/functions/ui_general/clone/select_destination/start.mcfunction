# Called by worldtool:ui_general/clone/select_destination/copy and worldtool:ui_general/clone/select_destination/move
# Gives the clone destination tool and displays a nice little message

item modify entity @s weapon.mainhand worldtool:general_tool/clonepos
function worldtool:ui/sound.change_item

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat

tellraw @s [{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color":"yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/clone/menu"}},"\n"]

tellraw @s {"nbt":"Translation.\"info.select_clone_destination\"","storage": "worldtool:storage","color": "aqua"}

function worldtool:ui/anti_feedback_chat_message/load
