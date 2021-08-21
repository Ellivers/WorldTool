function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/random/select"}}
tellraw @s [{"text":"Set corner 1 of the source for random blocks     ","color":"aqua"},{"text":"\n[Set position at player]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Set the first random source position at yourself"},"clickEvent":{"action":"run_command","value":"/function worldtool:ray/ray_hit_r1"}},{"text":"[Cancel]  ","color":"red","hoverEvent":{"action":"show_text","value":"Close all menus and cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
tag @s remove setpos2
tag @s remove placing_fill
item replace entity @s weapon.mainhand with minecraft:air
loot give @s loot worldtool:randompos_tools/1
function worldtool:ui/anti_feedback_chat_message/load