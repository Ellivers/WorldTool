# Called by #minecraft:load

# BUILD THE HELICOPTER
# AND OFF TO THE RESCUE
scoreboard objectives add worldtool dummy
scoreboard objectives add wt_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add wt_ID dummy
scoreboard objectives add wt_rotX dummy
scoreboard objectives add wt_rotY dummy
scoreboard objectives add wt_rotZ dummy
scoreboard objectives add wt_brush_size dummy
scoreboard objectives add wt_chance dummy
scoreboard objectives add wt_pos2x dummy
scoreboard objectives add wt_pos2y dummy
scoreboard objectives add wt_pos2z dummy
scoreboard objectives add wt_pos1x dummy
scoreboard objectives add wt_pos1y dummy
scoreboard objectives add wt_pos1z dummy
scoreboard objectives add wt_raycast dummy
scoreboard objectives add wt_differenceX dummy
scoreboard objectives add wt_differenceY dummy
scoreboard objectives add wt_differenceZ dummy
scoreboard objectives add wt_temp_diffX dummy
scoreboard objectives add wt_temp_diffY dummy
scoreboard objectives add wt_temp_diffZ dummy
scoreboard objectives add wt_temp_prevposX dummy
scoreboard objectives add wt_temp_prevposY dummy
scoreboard objectives add wt_temp_prevposZ dummy
scoreboard objectives add wt_drop_coas dropped:minecraft.carrot_on_a_stick
scoreboard objectives add wt_queue_pos dummy
scoreboard objectives add wt_diameter dummy
scoreboard objectives add wt_height dummy
scoreboard objectives add wt_precision dummy
scoreboard objectives add wt_degrees dummy

# Detect an older version
execute if score $blocksPerTick worldtool matches -2147483648.. unless score $version worldtool matches 1.. run function worldtool:upgrade_version
scoreboard players set $version worldtool 1

# Set the blocks-per-tick settings to their default values, if they're not in a supported range
execute unless score $blocksPerTick worldtool matches 2.. run scoreboard players set $blocksPerTick worldtool 4000
execute unless score $clonedBlocksPerTick worldtool matches 2.. run scoreboard players set $clonedBlocksPerTick worldtool 2100
#execute unless score $coloredBlocksPerTick worldtool matches 2.. run scoreboard players set $coloredBlocksPerTick worldtool 2500
execute unless score $destroyedBlocksPerTick worldtool matches 2.. run scoreboard players set $destroyedBlocksPerTick worldtool 3700
execute unless score $randomizedBlocksPerTick worldtool matches 2.. run scoreboard players set $randomizedBlocksPerTick worldtool 3900
execute unless score $checkeredBlocksPerTick worldtool matches 2.. run scoreboard players set $checkeredBlocksPerTick worldtool 3400
execute unless score $outlinedBlocksPerTick worldtool matches 2.. run scoreboard players set $outlinedBlocksPerTick worldtool 3200
execute unless score $greeneryBlocksPerTick worldtool matches 2.. run scoreboard players set $greeneryBlocksPerTick worldtool 1200
execute unless score $hollowBlocksPerTick worldtool matches 2.. run scoreboard players set $hollowBlocksPerTick worldtool 3300
execute unless score $circleBlocksPerTick worldtool matches 2.. run scoreboard players set $circleBlocksPerTick worldtool 6000

# Set the defaults of settings
execute unless score $particles worldtool matches 0..1 run scoreboard players set $particles worldtool 1
execute unless score $forceLoadPositions worldtool matches 0..1 run scoreboard players set $forceLoadPositions worldtool 1
execute unless score $forceLoadCmdPositions worldtool matches 0..1 run scoreboard players set $forceLoadCmdPositions worldtool 0
execute unless score $progressBar worldtool matches 0..1 run scoreboard players set $progressBar worldtool 0
execute unless score $monitorPerformance worldtool matches 0..1 run scoreboard players set $monitorPerformance worldtool 0

execute unless score $raycastingMaxDistance worldtool matches 1.. run scoreboard players set $raycastingMaxDistance worldtool 100
scoreboard players set #2 worldtool 2
scoreboard players set #3 worldtool 3
scoreboard players set #4 worldtool 4
scoreboard players set #5 worldtool 5
scoreboard players set #8 worldtool 8
scoreboard players set #10 worldtool 10
scoreboard players set #100 worldtool 100
scoreboard players set #200 worldtool 200
scoreboard players set #10000 worldtool 10000
scoreboard players set #pi worldtool 31416

execute unless score $clonePreviewDelay worldtool matches 0.. run scoreboard players set $clonePreviewDelay worldtool 2

gamerule commandBlockOutput false

bossbar add worldtool:progress "WorldTool Progress"
bossbar set worldtool:progress color pink

execute unless score #defaultWorldborderSize worldtool matches 1.. store result score #defaultWorldborderSize worldtool run worldborder get
scoreboard players operation #minWorldborderSize worldtool = #defaultWorldborderSize worldtool
scoreboard players remove #minWorldborderSize worldtool 20
scoreboard players set #displayLagWarning worldtool 1

# Addon variables
scoreboard players set $addons worldtool 0
scoreboard players set $brushAddons worldtool 0
scoreboard players set $processAddons worldtool 0
scoreboard players set $settingAddons worldtool 0
scoreboard players set $optionAddons worldtool 0
function #worldtool:addon_init

# Forceload for access to storing blocks at 0 0
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0

schedule function worldtool:init/set_base 2t
function worldtool:particles/main