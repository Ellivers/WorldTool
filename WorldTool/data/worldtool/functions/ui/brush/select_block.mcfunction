tag @s add check_block_brush

function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main brush menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/brush/select"}}

tellraw @s [{"text": "Current block: "},{"entity": "@s","nbt": "SelectedItem.tag.Block.BlockState.Name","color": "light_purple"},"\n"]
tellraw @s [{"text":"[Select a block]  ","color":"aqua","hoverEvent":{"action":"show_text","value":"Select a block to use the brush with"},"clickEvent":{"action":"suggest_command","value":"/summon falling_block ~ ~ ~ {Tags:[switch_block_brush,worldtool],BlockState:{Name:\"NAME_HERE\"}}"}},{"text":"[Pick block...]  ","color":"green","hoverEvent":{"action":"show_text","value":"Choose an existing block to use"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/set/start_grab"}},{"text":"(Air)  ","color":"white","hoverEvent":{"action":"show_text","value":"Air"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/brush/set/set_block.air"}},{"text":"[Cancel]","color":"white","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
function worldtool:ui/anti_feedback_chat_message/load
