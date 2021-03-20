scoreboard players set $blocksPerTick worldtool 600
scoreboard players set $clonedBlocksPerTick worldtool 600
scoreboard players set $destroyedBlocksPerTick worldtool 600
scoreboard players set $randomizedBlocksPerTick worldtool 600
scoreboard players set $checkeredBlocksPerTick worldtool 600
scoreboard players set $outlinedBlocksPerTick worldtool 600
scoreboard players set $greeneryBlocksPerTick worldtool 600
scoreboard players set $hollowBlocksPerTick worldtool 600
scoreboard players set $circleBlocksPerTick worldtool 600

execute unless entity @s[tag=dontgobackplzthx] run function worldtool:ui_general/menus/options/bpt/select
