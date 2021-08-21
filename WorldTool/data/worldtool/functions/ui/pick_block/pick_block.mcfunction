# Called by worldtool:ui/pick_block/primary, worldtool:ui/pick_block/secondary, and various [Pick block] buttons in the general tool's menu
# Shows the pick block message and adds the grabbing_block tag, which lets you pick a block
function worldtool:ui/clear_chat
loot replace entity @s weapon.mainhand loot worldtool:pick_block_tool

tellraw @s {"text": "[⬅Back]\n","color":"aqua","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/back_using_tags"}}

tellraw @s [{"text":"Select a block to pick","color":"aqua"},{"text":"\n[Cancel]","color":"red","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load
