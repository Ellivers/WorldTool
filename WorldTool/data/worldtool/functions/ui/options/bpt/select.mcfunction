tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n[Back]","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/settings"}},{"text": "\nSettings/Blocks per tick","bold": true,"color":"green"}]

execute if score $blocksPerTick worldtool matches 4000 run tag @s add blocksPerTick_default
execute if score $clonedBlocksPerTick worldtool matches 2600 run tag @s add clonedBlocksPerTick_default
execute if score $destroyedBlocksPerTick worldtool matches 3700 run tag @s add destroyedBlocksPerTick_default
execute if score $randomizedBlocksPerTick worldtool matches 3900 run tag @s add randomizedBlocksPerTick_default
execute if score $checkeredBlocksPerTick worldtool matches 3400 run tag @s add checkeredBlocksPerTick_default
execute if score $greeneryBlocksPerTick worldtool matches 1400 run tag @s add greeneryBlocksPerTick_default

execute if score $blocksPerTick worldtool matches 2000 run tag @s add blocksPerTick_medium
execute if score $clonedBlocksPerTick worldtool matches 2000 run tag @s add clonedBlocksPerTick_medium
execute if score $destroyedBlocksPerTick worldtool matches 2000 run tag @s add destroyedBlocksPerTick_medium
execute if score $randomizedBlocksPerTick worldtool matches 2000 run tag @s add randomizedBlocksPerTick_medium
execute if score $checkeredBlocksPerTick worldtool matches 2000 run tag @s add checkeredBlocksPerTick_medium
execute if score $greeneryBlocksPerTick worldtool matches 1400 run tag @s add greeneryBlocksPerTick_medium

execute if score $blocksPerTick worldtool matches 600 run tag @s add blocksPerTick_low
execute if score $clonedBlocksPerTick worldtool matches 600 run tag @s add clonedBlocksPerTick_low
execute if score $destroyedBlocksPerTick worldtool matches 600 run tag @s add destroyedBlocksPerTick_low
execute if score $randomizedBlocksPerTick worldtool matches 600 run tag @s add randomizedBlocksPerTick_low
execute if score $checkeredBlocksPerTick worldtool matches 600 run tag @s add checkeredBlocksPerTick_low
execute if score $greeneryBlocksPerTick worldtool matches 600 run tag @s add greeneryBlocksPerTick_low

tellraw @s "\n\n"
execute unless entity @s[tag=blocksPerTick_default,tag=clonedBlocksPerTick_default,tag=destroyedBlocksPerTick_default,tag=randomizedBlocksPerTick_default,tag=checkeredBlocksPerTick_default,tag=greeneryBlocksPerTick_default] unless entity @s[tag=blocksPerTick_medium,tag=clonedBlocksPerTick_medium,tag=destroyedBlocksPerTick_medium,tag=randomizedBlocksPerTick_medium,tag=checkeredBlocksPerTick_medium,tag=greeneryBlocksPerTick_medium] unless entity @s[tag=blocksPerTick_low,tag=clonedBlocksPerTick_low,tag=destroyedBlocksPerTick_low,tag=randomizedBlocksPerTick_low,tag=checkeredBlocksPerTick_low,tag=greeneryBlocksPerTick_low] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Maximum"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/max"}},{"text": "Custom","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/low"}}]
execute if entity @s[tag=blocksPerTick_default,tag=clonedBlocksPerTick_default,tag=destroyedBlocksPerTick_default,tag=randomizedBlocksPerTick_default,tag=checkeredBlocksPerTick_default,tag=greeneryBlocksPerTick_default] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Medium"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/medium"}},{"text": "Maximum","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/low"}}]
execute if entity @s[tag=blocksPerTick_medium,tag=clonedBlocksPerTick_medium,tag=destroyedBlocksPerTick_medium,tag=randomizedBlocksPerTick_medium,tag=checkeredBlocksPerTick_medium,tag=greeneryBlocksPerTick_medium] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/low"}},{"text": "Medium","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Maximum"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/max"}}]
execute if entity @s[tag=blocksPerTick_low,tag=clonedBlocksPerTick_low,tag=destroyedBlocksPerTick_low,tag=randomizedBlocksPerTick_low,tag=checkeredBlocksPerTick_low,tag=greeneryBlocksPerTick_low] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Maximum"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/max"}},{"text": "Low","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Medium"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/medium"}}]
tellraw @s "\n"

tellraw @s [{"text": "General blocks per tick - ","color":"aqua"},{"score": {"name": "$blocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Cloned blocks per tick - ","color":"aqua"},{"score": {"name": "$clonedBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Destroyed blocks per tick - ","color":"aqua"},{"score": {"name": "$destroyedBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Destroyed blocks per tick - ","color":"aqua"},{"score": {"name": "$randomizedBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Checkered blocks per tick - ","color":"aqua"},{"score": {"name": "$checkeredBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Greenery blocks per tick - ","color":"aqua"},{"score": {"name": "$greeneryBlocksPerTick","objective": "worldtool"},"color":"green"}]
function worldtool:ui/anti_feedback_chat_message/load

tag @s remove blocksPerTick_default
tag @s remove clonedBlocksPerTick_default
tag @s remove destroyedBlocksPerTick_default
tag @s remove randomizedBlocksPerTick_default
tag @s remove checkeredBlocksPerTick_default
tag @s remove greeneryBlocksPerTick_default

tag @s remove blocksPerTick_medium
tag @s remove clonedBlocksPerTick_medium
tag @s remove destroyedBlocksPerTick_medium
tag @s remove randomizedBlocksPerTick_medium
tag @s remove checkeredBlocksPerTick_medium
tag @s remove greeneryBlocksPerTick_medium

tag @s remove blocksPerTick_low
tag @s remove clonedBlocksPerTick_low
tag @s remove destroyedBlocksPerTick_low
tag @s remove randomizedBlocksPerTick_low
tag @s remove checkeredBlocksPerTick_low
tag @s remove greeneryBlocksPerTick_low