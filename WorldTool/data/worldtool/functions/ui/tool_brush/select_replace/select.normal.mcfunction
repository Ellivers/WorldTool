tag @s add replacebrush
tag @s add check_block_replacebrush
function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/tool_brush/select_replace/select"}}

execute if predicate worldtool:brush/replace_normal run tellraw @s [{"text": "Currently replacing: "},{"entity": "@s","nbt": "SelectedItem.tag.ReplaceBlock.BlockState.Name","color": "aqua"},"\n"]
execute if predicate worldtool:brush/replace_exclude run tellraw @s [{"text": "Currently set to not replace: "},{"entity": "@s","nbt": "SelectedItem.tag.ReplaceBlock.BlockState.Name","color": "aqua"},"\n"]
tellraw @s ["",{"text":"[Select which block to replace]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Select which block you want to replace"},"clickEvent":{"action":"suggest_command","value":"/summon falling_block ~ ~ ~ {Tags:[switch_block_brush,worldtool],BlockState:{Name:\"NAME_HERE\"}}"}},{"text":"[Pick block...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Pick a block to replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/tool_brush/set/start_grab_replace"}},{"text":"[Cancel]  ","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]

function worldtool:ui/anti_feedback_chat_message/load