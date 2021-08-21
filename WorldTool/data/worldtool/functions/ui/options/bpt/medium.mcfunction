scoreboard players set $blocksPerTick worldtool 2000
scoreboard players set $clonedBlocksPerTick worldtool 2000
scoreboard players set $destroyedBlocksPerTick worldtool 2000
scoreboard players set $randomizedBlocksPerTick worldtool 2000
scoreboard players set $checkeredBlocksPerTick worldtool 2000
scoreboard players set $outlinedBlocksPerTick worldtool 2000
scoreboard players set $greeneryBlocksPerTick worldtool 1200
scoreboard players set $hollowBlocksPerTick worldtool 2000
scoreboard players set $circleBlocksPerTick worldtool 2000

execute unless entity @s[tag=dontgobackplzthx] run function worldtool:ui/options/bpt/select
