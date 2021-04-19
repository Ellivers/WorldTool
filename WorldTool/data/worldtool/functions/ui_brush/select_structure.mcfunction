tag @s add check_brush_structure
tag @s add wt_block_check

function worldtool:ui_general/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main brush menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui_brush/select"}}

tellraw @s [{"text": "Current structure: "},{"entity": "@s","nbt": "SelectedItem.tag.BrushSettings.Structure","color": "light_purple"},"\n"]
tellraw @s ["",{"text": "[Enter a structure name]  ","color": "aqua","hoverEvent": {"action": "show_text","value": "Enter the name of a structure"},"clickEvent": {"action": "suggest_command","value": "/summon minecraft:item ~ ~ ~ {Tags:[wt_set_structure,worldtool],PickupDelay:60s,Item:{id:\"minecraft:stick\",Count:1b,tag:{Structure:\"NAME_HERE\"}}}"}},{"text": "[Close]","color": "white","hoverEvent": {"action": "show_text","value": "Close all menus and cancel"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/cancel"}}]
function worldtool:ui_general/anti_feedback_chat_message/load
