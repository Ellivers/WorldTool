scoreboard players set $blocksPerTick worldtool 4000
scoreboard players set $clonedBlocksPerTick worldtool 2100
scoreboard players set $destroyedBlocksPerTick worldtool 3700
scoreboard players set $randomizedBlocksPerTick worldtool 3900
scoreboard players set $checkeredBlocksPerTick worldtool 3400
scoreboard players set $outlinedBlocksPerTick worldtool 3200
scoreboard players set $greeneryBlocksPerTick worldtool 1200
scoreboard players set $hollowBlocksPerTick worldtool 3300
scoreboard players set $circleBlocksPerTick worldtool 6000

execute unless entity @s[tag=dontgobackplzthx] run function worldtool:ui_general/options/bpt/select
