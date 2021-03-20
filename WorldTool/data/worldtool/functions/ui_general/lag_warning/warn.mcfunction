function worldtool:ui_general/menus/options/bpt/get

scoreboard players set #displayLagWarning worldtool 0
execute if entity @s[tag=wt_customBPT] run tellraw @s [{"text": "Your world seems so be lagging. To change the amount of blocks read per tick to High (currently set to a custom value), ","color":"gold"},{"text": "[click here]","color":"green","hoverEvent": {"action": "show_text","value": "Set to High"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/lag_warning/set_high"}}]
execute if entity @s[tag=wt_maximumBPT] run tellraw @s [{"text": "Your world seems so be lagging. To reduce the amount of blocks read per tick to High (currently set to Maximum), ","color":"gold"},{"text": "[click here]","color":"green","hoverEvent": {"action": "show_text","value": "Set to High"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/lag_warning/set_high"}}]
execute if entity @s[tag=wt_highBPT] run tellraw @s ["",{"text": "Your world seems so be lagging. To reduce the amount of blocks read per tick to Medium (currently set to High), ","color":"gold"},{"text": "[click here]","color":"green","hoverEvent": {"action": "show_text","value": "Set to Medium"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/lag_warning/set_medium"}}]
execute if entity @s[tag=wt_mediumBPT] run tellraw @s ["",{"text": "Your world seems so be lagging. To reduce the amount of blocks read per tick to Low (currently set to Medium), ","color":"gold"},{"text": "[click here]","color":"green","hoverEvent": {"action": "show_text","value": "Set to Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui_general/lag_warning/set_low"}}]

tag @s remove wt_customBPT
tag @s remove wt_maximumBPT
tag @s remove wt_highBPT
tag @s remove wt_mediumBPT
tag @s remove wt_lowBPT
