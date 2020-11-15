function worldtool:ui/clear_chat
tellraw @s ["",{"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/settings"}},{"text": "Settings/Blocks per tick","bold": true,"color":"green"}]

function worldtool:ui/options/bpt/get

tellraw @s "\n\n"
execute unless entity @s[tag=blocksPerTick_default,tag=clonedBlocksPerTick_default,tag=destroyedBlocksPerTick_default,tag=randomizedBlocksPerTick_default,tag=checkeredBlocksPerTick_default,tag=outlinedBlocksPerTick_default,tag=greeneryBlocksPerTick_default,tag=hollowBlocksPerTick_default] unless entity @s[tag=blocksPerTick_medium,tag=clonedBlocksPerTick_medium,tag=destroyedBlocksPerTick_medium,tag=randomizedBlocksPerTick_medium,tag=checkeredBlocksPerTick_medium,tag=outlinedBlocksPerTick_medium,tag=greeneryBlocksPerTick_medium,tag=hollowBlocksPerTick_medium] unless entity @s[tag=blocksPerTick_low,tag=clonedBlocksPerTick_low,tag=destroyedBlocksPerTick_low,tag=randomizedBlocksPerTick_low,tag=checkeredBlocksPerTick_low,tag=outlinedBlocksPerTick_low,tag=greeneryBlocksPerTick_low,tag=hollowBlocksPerTick_low] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Maximum"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/max"}},{"text": "Custom","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/low"}}]
execute if entity @s[tag=blocksPerTick_default,tag=clonedBlocksPerTick_default,tag=destroyedBlocksPerTick_default,tag=randomizedBlocksPerTick_default,tag=checkeredBlocksPerTick_default,tag=outlinedBlocksPerTick_default,tag=greeneryBlocksPerTick_default,tag=hollowBlocksPerTick_default] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Medium"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/medium"}},{"text": "Maximum (default)","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/low"}}]
execute if entity @s[tag=blocksPerTick_medium,tag=clonedBlocksPerTick_medium,tag=destroyedBlocksPerTick_medium,tag=randomizedBlocksPerTick_medium,tag=checkeredBlocksPerTick_medium,tag=outlinedBlocksPerTick_medium,tag=greeneryBlocksPerTick_medium,tag=hollowBlocksPerTick_medium] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/low"}},{"text": "Medium","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Maximum"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/max"}}]
execute if entity @s[tag=blocksPerTick_low,tag=clonedBlocksPerTick_low,tag=destroyedBlocksPerTick_low,tag=randomizedBlocksPerTick_low,tag=checkeredBlocksPerTick_low,tag=outlinedBlocksPerTick_low,tag=greeneryBlocksPerTick_low,tag=hollowBlocksPerTick_low] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Maximum"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/max"}},{"text": "Low","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Medium"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/medium"}}]
tellraw @s "\n"

tellraw @s [{"text": "General blocks per tick - ","color":"aqua"},{"score": {"name": "$blocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Cloned blocks per tick - ","color":"aqua"},{"score": {"name": "$clonedBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Destroyed blocks per tick - ","color":"aqua"},{"score": {"name": "$destroyedBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Randomized blocks per tick - ","color":"aqua"},{"score": {"name": "$randomizedBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Checkered blocks per tick - ","color":"aqua"},{"score": {"name": "$checkeredBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Outlined blocks per tick - ","color":"aqua"},{"score": {"name": "$outlinedBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Greenery blocks per tick - ","color":"aqua"},{"score": {"name": "$greeneryBlocksPerTick","objective": "worldtool"},"color":"green"}]
tellraw @s [{"text": "Hollow blocks per tick - ","color":"aqua"},{"score": {"name": "$hollowBlocksPerTick","objective": "worldtool"},"color":"green"}]
function worldtool:ui/anti_feedback_chat_message/load

tag @s remove blocksPerTick_default
tag @s remove clonedBlocksPerTick_default
tag @s remove destroyedBlocksPerTick_default
tag @s remove randomizedBlocksPerTick_default
tag @s remove checkeredBlocksPerTick_default
tag @s remove outlinedBlocksPerTick_default
tag @s remove greeneryBlocksPerTick_default
tag @s remove hollowBlocksPerTick_default

tag @s remove blocksPerTick_medium
tag @s remove clonedBlocksPerTick_medium
tag @s remove destroyedBlocksPerTick_medium
tag @s remove randomizedBlocksPerTick_medium
tag @s remove checkeredBlocksPerTick_medium
tag @s remove outlinedBlocksPerTick_medium
tag @s remove greeneryBlocksPerTick_medium
tag @s remove hollowBlocksPerTick_medium

tag @s remove blocksPerTick_low
tag @s remove clonedBlocksPerTick_low
tag @s remove destroyedBlocksPerTick_low
tag @s remove randomizedBlocksPerTick_low
tag @s remove checkeredBlocksPerTick_low
tag @s remove outlinedBlocksPerTick_low
tag @s remove greeneryBlocksPerTick_low
tag @s remove hollowBlocksPerTick_low
