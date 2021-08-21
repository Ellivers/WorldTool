function worldtool:ui/clear_chat
tellraw @s ["",{"text": "[⬅Back]\n","color":"yellow","hoverEvent": {"action": "show_text","value": "Go back"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/settings"}},{"text": "Maximum blocks per tick","bold": true,"color":"green"}]

function worldtool:ui/options/bpt/get

tellraw @s "\n\n"
execute if entity @s[tag=wt_customBPT] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Maximum"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/max"}},{"text": "Custom","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/low"}}]
execute if entity @s[tag=wt_maximumBPT] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "High"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/high"}},{"text": "Maximum","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/low"}}]
execute if entity @s[tag=wt_highBPT] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Medium"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/medium"}},{"text": "High (default)","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Maximum"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/max"}}]
execute if entity @s[tag=wt_mediumBPT] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Low"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/low"}},{"text": "Medium","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "High"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/high"}}]
execute if entity @s[tag=wt_lowBPT] run tellraw @s [{"text": "Preset: ","color":"aqua"},{"text": "< ","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Maximum"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/max"}},{"text": "Low","color":"gold"},{"text": " >","color":"light_purple","bold": true,"hoverEvent": {"action": "show_text","value": "Medium"},"clickEvent": {"action": "run_command","value": "/function worldtool:ui/options/bpt/medium"}}]
tellraw @s "\n"

execute unless score $blocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum general blocks per tick - ","color":"aqua"},{"score": {"name": "$blocksPerTick","objective": "worldtool"},"color":"green"}]
execute unless score $clonedBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum cloned blocks per tick - ","color":"aqua"},{"score": {"name": "$clonedBlocksPerTick","objective": "worldtool"},"color":"green"}]
execute unless score $destroyedBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum destroyed blocks per tick - ","color":"aqua"},{"score": {"name": "$destroyedBlocksPerTick","objective": "worldtool"},"color":"green"}]
execute unless score $randomizedBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum randomized blocks per tick - ","color":"aqua"},{"score": {"name": "$randomizedBlocksPerTick","objective": "worldtool"},"color":"green"}]
execute unless score $checkeredBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum checkered blocks per tick - ","color":"aqua"},{"score": {"name": "$checkeredBlocksPerTick","objective": "worldtool"},"color":"green"}]
execute unless score $outlinedBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum outlined blocks per tick - ","color":"aqua"},{"score": {"name": "$outlinedBlocksPerTick","objective": "worldtool"},"color":"green"}]
execute unless score $greeneryBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum greenery blocks per tick - ","color":"aqua"},{"score": {"name": "$greeneryBlocksPerTick","objective": "worldtool"},"color":"green"}]
execute unless score $hollowBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum hollow blocks per tick - ","color":"aqua"},{"score": {"name": "$hollowBlocksPerTick","objective": "worldtool"},"color":"green"}]
execute unless score $circleBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum circle blocks per tick - ","color":"aqua"},{"score": {"name": "$circleBlocksPerTick","objective": "worldtool"},"color":"green"}]

execute if score $blocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum general blocks per tick - ","color":"aqua"},{"text": "As much as possible","color":"green"}]
execute if score $clonedBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum cloned blocks per tick - ","color":"aqua"},{"text": "As much as possible","color":"green"}]
execute if score $destroyedBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum destroyed blocks per tick - ","color":"aqua"},{"text": "As much as possible","color":"green"}]
execute if score $randomizedBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum randomized blocks per tick - ","color":"aqua"},{"text": "As much as possible","color":"green"}]
execute if score $checkeredBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum checkered blocks per tick - ","color":"aqua"},{"text": "As much as possible","color":"green"}]
execute if score $outlinedBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum outlined blocks per tick - ","color":"aqua"},{"text": "As much as possible","color":"green"}]
execute if score $greeneryBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum greenery blocks per tick - ","color":"aqua"},{"text": "As much as possible","color":"green"}]
execute if score $hollowBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum hollow blocks per tick - ","color":"aqua"},{"text": "As much as possible","color":"green"}]
execute if score $circleBlocksPerTick worldtool matches 9999.. run tellraw @s [{"text": "Maximum circle blocks per tick - ","color":"aqua"},{"text": "As much as possible","color":"green"}]
function worldtool:ui/anti_feedback_chat_message/load

tag @s remove wt_customBPT
tag @s remove wt_maximumBPT
tag @s remove wt_highBPT
tag @s remove wt_mediumBPT
tag @s remove wt_lowBPT
