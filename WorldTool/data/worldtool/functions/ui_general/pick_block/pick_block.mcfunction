# Called by worldtool:ui_general/pick_block/primary, worldtool:ui_general/pick_block/secondary, and various [Pick block] buttons in the general tool's menu
# Shows the pick block message and adds a tag that lets you pick a block

item modify entity @s weapon.mainhand worldtool:general_tool/pick_block
function worldtool:ui/sound.change_item

tag @s add wt.dont_clear_tags
function worldtool:ui/clear_chat

tellraw @s [{"nbt":"Translation.\"button.back.name\"","storage": "worldtool:storage","color":"yellow","hoverEvent": {"action": "show_text","contents": {"nbt":"Translation.\"button.back.description\"","storage": "worldtool:storage"}},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_general/pick_block/back"}},"\n"]

tellraw @s ["\n",{"nbt":"Translation.\"info.pick_block\"","storage": "worldtool:storage"}]
function worldtool:ui/anti_feedback_chat_message/load
