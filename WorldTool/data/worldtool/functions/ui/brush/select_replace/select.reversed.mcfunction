tag @s add replacebrush_reversed
tag @s add check_block_replacebrush
function worldtool:ui/clear_chat

execute if predicate worldtool:brush/replace_normal run tellraw @s [{"text": "Currently replacing: "},{"entity": "@s","nbt": "SelectedItem.tag.ReplaceBlock.BlockState.Name","color": "aqua"},"\n"]
execute if predicate worldtool:brush/replace_exclude run tellraw @s [{"text": "Currently set to not replace: "},{"entity": "@s","nbt": "SelectedItem.tag.ReplaceBlock.BlockState.Name","color": "aqua"},"\n"]
tellraw @s ["",{"text":"[Select which block to not replace]  ","color":"light_purple","hoverEvent":{"action":"show_text","value":"Select which block you don't want to replace"},"clickEvent":{"action":"suggest_command","value":"/summon falling_block ~ ~ ~ {Time:1,Tags:[switch_block_brush,worldtool],BlockState:{Name:\"NAME_HERE\"}}"}},{"text":"[Pick block...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Pick a block to not replace"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/set/start_grab_replace"}},{"text":"[Cancel]  ","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]

function worldtool:ui/anti_feedback_chat_message/load