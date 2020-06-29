function worldtool:ui/clear_chat
tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the previous menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/clone/select_clone"}}
tellraw @s [{"text":"Place the cloning destination in the same corner as the first position of the cloned blocks     ","color":"aqua"},{"text":"[Cancel]  ","color":"red","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
tag @s remove setpos2
tag @s remove placing_fill
replaceitem entity @s weapon.mainhand minecraft:air
give @s minecraft:carrot_on_a_stick{worldTool:1b,Unbreakable:1b,Enchantments:[{}],Type:3b,display:{Name:'{"text":"Select cloning destination","italic":false}'}}
function worldtool:ui/anti_feedback_chat_message/load