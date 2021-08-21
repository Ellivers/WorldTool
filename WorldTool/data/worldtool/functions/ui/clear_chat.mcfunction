# "Clear" the chat unless the option turns it off. Also, display a back button to the general tool menu if specified.
execute if entity @s[tag=wt_backbuttonplzthx] unless score $clearChat worldtool matches ..0 run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/check"}}]
execute if entity @s[tag=wt_backbuttonplzthx] if score $clearChat worldtool matches ..0 run tellraw @s {"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back to the main menu"},"clickEvent": {"action":"run_command","value": "/function worldtool:ui/check"}}
execute if entity @s[tag=!wt_backbuttonplzthx] unless score $clearChat worldtool matches ..0 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tag @s remove wt_backbuttonplzthx
