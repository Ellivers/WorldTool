# Called by worldtool:process_start/variables and worldtool:technical/load
# Makes sure the "blocks per tick" scores are set to supported values

execute unless score $blocksPerTick worldtool matches 2.. run scoreboard players set $blocksPerTick worldtool 4000
execute unless score $clonedBlocksPerTick worldtool matches 2.. run scoreboard players set $clonedBlocksPerTick worldtool 2100
execute unless score $destroyedBlocksPerTick worldtool matches 2.. run scoreboard players set $destroyedBlocksPerTick worldtool 3700
execute unless score $randomizedBlocksPerTick worldtool matches 2.. run scoreboard players set $randomizedBlocksPerTick worldtool 3900
execute unless score $checkeredBlocksPerTick worldtool matches 2.. run scoreboard players set $checkeredBlocksPerTick worldtool 3400
execute unless score $outlinedBlocksPerTick worldtool matches 2.. run scoreboard players set $outlinedBlocksPerTick worldtool 3200
execute unless score $greeneryBlocksPerTick worldtool matches 2.. run scoreboard players set $greeneryBlocksPerTick worldtool 1200
execute unless score $hollowBlocksPerTick worldtool matches 2.. run scoreboard players set $hollowBlocksPerTick worldtool 3300
execute unless score $circleBlocksPerTick worldtool matches 2.. run scoreboard players set $circleBlocksPerTick worldtool 6000

function #worldtool:addon/fix_btp_vars
