tag @s add wt_check_block_shge
tag @s remove grabbing_block
tag @s remove grabbing_block_gentool

function worldtool:ui/clear_chat

tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main generation menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/tool_shapes/select"}}

tellraw @s ["",{"text": "Current block: "},{"entity": "@s","nbt": "SelectedItem.tag.Block.BlockState.Name","color": "light_purple"},"\n"]
tellraw @s ["",{"text":"[Select a block]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Select a block to use"},"clickEvent":{"action":"suggest_command","value":"/summon falling_block ~ ~ ~ {Tags:[switch_gen_block,worldtool],BlockState:{Name:\"NAME_HERE\"}}"}},{"text":"[Pick block...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Choose an existing block to use"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/tool_shapes/select/pick_block_menu"}},{"text":"(Air)  ","color":"white","hoverEvent":{"action":"show_text","value":"Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/tool_shapes/select/block_selected.air"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/tool_shapes/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load
