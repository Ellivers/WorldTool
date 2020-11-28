function worldtool:ui/options/bpt/get

scoreboard players set #displayLagWarning worldtool 0
execute unless entity @s[tag=blocksPerTick_default,tag=clonedBlocksPerTick_default,tag=destroyedBlocksPerTick_default,tag=randomizedBlocksPerTick_default,tag=checkeredBlocksPerTick_default,tag=outlinedBlocksPerTick_default,tag=greeneryBlocksPerTick_default,tag=hollowBlocksPerTick_default] unless entity @s[tag=blocksPerTick_medium,tag=clonedBlocksPerTick_medium,tag=destroyedBlocksPerTick_medium,tag=randomizedBlocksPerTick_medium,tag=checkeredBlocksPerTick_medium,tag=outlinedBlocksPerTick_medium,tag=greeneryBlocksPerTick_medium,tag=hollowBlocksPerTick_medium] unless entity @s[tag=blocksPerTick_low,tag=clonedBlocksPerTick_low,tag=destroyedBlocksPerTick_low,tag=randomizedBlocksPerTick_low,tag=checkeredBlocksPerTick_low,tag=outlinedBlocksPerTick_low,tag=greeneryBlocksPerTick_low,tag=hollowBlocksPerTick_low] run tellraw @s [{"text": "Your world seems so be lagging. To reduce the amount of blocks read per tick to Medium, ","color":"gold"},{"text": "[click here]","color":"green","hoverEvent": {"action": "show_text","value": "Set to medium"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/lag_warning/set_medium"}}]
execute if entity @s[tag=blocksPerTick_default,tag=clonedBlocksPerTick_default,tag=destroyedBlocksPerTick_default,tag=randomizedBlocksPerTick_default,tag=checkeredBlocksPerTick_default,tag=outlinedBlocksPerTick_default,tag=greeneryBlocksPerTick_default,tag=hollowBlocksPerTick_default] run tellraw @s ["",{"text": "Your world seems so be lagging. To reduce the amount of blocks read per tick to Medium, ","color":"gold"},{"text": "[click here]","color":"green","hoverEvent": {"action": "show_text","value": "Set to medium"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/lag_warning/set_medium"}}]
execute if entity @s[tag=blocksPerTick_medium,tag=clonedBlocksPerTick_medium,tag=destroyedBlocksPerTick_medium,tag=randomizedBlocksPerTick_medium,tag=checkeredBlocksPerTick_medium,tag=outlinedBlocksPerTick_medium,tag=greeneryBlocksPerTick_medium,tag=hollowBlocksPerTick_medium] run tellraw @s ["",{"text": "Your world seems so be lagging. To reduce the amount of blocks read per tick to Low, ","color":"gold"},{"text": "[click here]","color":"green","hoverEvent": {"action": "show_text","value": "Set to low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/lag_warning/set_low"}}]

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
