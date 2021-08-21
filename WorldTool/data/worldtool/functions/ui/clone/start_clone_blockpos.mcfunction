function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/clone/select_clone"}}
tellraw @s [{"text":"Place the cloning destination in the same corner as the first position of the cloned blocks     ","color":"aqua"},{"text":"[Cancel]  ","color":"red","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
tag @s remove setpos2
tag @s remove placing_fill
tag @s[tag=wt_outline_selection] add wt_clone_preview
execute if entity @s[tag=wt_outline_selection] run function worldtool:particles/clone_preview/delay
item replace entity @s weapon.mainhand with minecraft:air
loot give @s loot worldtool:clone_destination_tool
function worldtool:ui/anti_feedback_chat_message/load