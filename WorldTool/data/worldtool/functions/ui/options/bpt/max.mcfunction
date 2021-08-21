scoreboard players set $blocksPerTick worldtool 9999
scoreboard players set $clonedBlocksPerTick worldtool 9999
scoreboard players set $destroyedBlocksPerTick worldtool 9999
scoreboard players set $randomizedBlocksPerTick worldtool 9999
scoreboard players set $checkeredBlocksPerTick worldtool 9999
scoreboard players set $outlinedBlocksPerTick worldtool 9999
scoreboard players set $greeneryBlocksPerTick worldtool 9999
scoreboard players set $hollowBlocksPerTick worldtool 9999
scoreboard players set $circleBlocksPerTick worldtool 9999

execute unless entity @s[tag=dontgobackplzthx] run function worldtool:ui/options/bpt/select
