tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\nSet corner 1 of the source for random blocks     ","color":"aqua"},{"text":"\n[Set position at player]  ","color":"yellow","hoverEvent":{"action":"show_text","value":"Set the first random source position at yourself"},"clickEvent":{"action":"run_command","value":"/function worldtool:ray/ray_hit_r1"}},{"text":"[Cancel]  ","color":"red","hoverEvent":{"action":"show_text","value":"Cancel"},"clickEvent":{"action":"run_command","value":"/function worldtool:ui/cancel"}}]
tag @s remove setpos2
tag @s remove placing_fill
replaceitem entity @s weapon.mainhand minecraft:air
give @s minecraft:carrot_on_a_stick{worldTool:1b,Unbreakable:1b,Enchantments:[{}],Type:4b,display:{Name:'{"text":"Select random position 1","italic":false}'}}
function worldtool:ui/anti_feedback_chat_message/load