# Called by #minecraft:load

## DHP definitions ##
#define storage worldtool:storage
#define score_holder #ID_temp
#define score_holder $functionRunning
#define score_holder $brushFunctionRunning
#define tag worldtool
#define tag wt.temp
# Writer
#define entity 35c1ab68-9d4c-11eb-a8b3-0242ac130003 Writer

## Objectives ##
scoreboard objectives add worldtool dummy
scoreboard objectives add wt.use_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add wt.drop_coas dropped:minecraft.carrot_on_a_stick
scoreboard objectives add wt.ID dummy
scoreboard objectives add wt.brush_size dummy
scoreboard objectives add wt.chance dummy
scoreboard objectives add wt.queue_pos dummy
scoreboard objectives add wt.diameter dummy
scoreboard objectives add wt.height dummy
scoreboard objectives add wt.precision dummy
scoreboard objectives add wt.degrees dummy

# Default language
execute unless data storage worldtool:storage Language run function worldtool:language/en_us

# Detect an older version
execute if score $blocksPerTick worldtool matches -2147483648.. unless score $version worldtool matches 4.. run function worldtool:technical/upgrade_version
scoreboard players set $version worldtool 4

## Default blocks per tick ##
# Set the blocks-per-tick settings to their default values if they're not of a supported value
execute unless score $blocksPerTick worldtool matches 2.. run scoreboard players set $blocksPerTick worldtool 4000
execute unless score $clonedBlocksPerTick worldtool matches 2.. run scoreboard players set $clonedBlocksPerTick worldtool 2100
execute unless score $destroyedBlocksPerTick worldtool matches 2.. run scoreboard players set $destroyedBlocksPerTick worldtool 3700
execute unless score $randomizedBlocksPerTick worldtool matches 2.. run scoreboard players set $randomizedBlocksPerTick worldtool 3900
execute unless score $checkeredBlocksPerTick worldtool matches 2.. run scoreboard players set $checkeredBlocksPerTick worldtool 3400
execute unless score $outlinedBlocksPerTick worldtool matches 2.. run scoreboard players set $outlinedBlocksPerTick worldtool 3200
execute unless score $greeneryBlocksPerTick worldtool matches 2.. run scoreboard players set $greeneryBlocksPerTick worldtool 1200
execute unless score $hollowBlocksPerTick worldtool matches 2.. run scoreboard players set $hollowBlocksPerTick worldtool 3300
execute unless score $circleBlocksPerTick worldtool matches 2.. run scoreboard players set $circleBlocksPerTick worldtool 6000

## Default settings ##
execute unless score $forceLoadPositions worldtool matches 0..1 run scoreboard players set $forceLoadPositions worldtool 1
execute unless score $forceLoadCmdPositions worldtool matches 0..1 run scoreboard players set $forceLoadCmdPositions worldtool 0
execute unless score $progressBar worldtool matches 0..1 run scoreboard players set $progressBar worldtool 1
execute unless score $monitorPerformance worldtool matches 0..1 run scoreboard players set $monitorPerformance worldtool 0
execute unless score $clearChat worldtool matches 0..1 run scoreboard players set $clearChat worldtool 1
execute unless score $sizeWarnLimit worldtool matches 0..10000000 run scoreboard players set $sizeWarnLimit worldtool 100000
execute unless score $playUISounds worldtool matches 0..1 run scoreboard players set $playUISounds worldtool 1
execute unless score $clonePreviewDelay worldtool matches 4.. run scoreboard players set $clonePreviewDelay worldtool 5

execute unless score $maxRaycastingDistance worldtool matches 1.. run scoreboard players set $maxRaycastingDistance worldtool 100

## Constants ##
scoreboard players set #2 worldtool 2
scoreboard players set #3 worldtool 3
scoreboard players set #4 worldtool 4
scoreboard players set #5 worldtool 5
scoreboard players set #8 worldtool 8
scoreboard players set #10 worldtool 10
scoreboard players set #100 worldtool 100
scoreboard players set #200 worldtool 200
scoreboard players set #1000 worldtool 1000
scoreboard players set #10000 worldtool 10000
scoreboard players set #pi worldtool 31416

gamerule commandBlockOutput false

bossbar add worldtool:progress "WorldTool Progress"
bossbar set worldtool:progress color pink

execute unless score #defaultWorldborderSize worldtool matches 1.. store result score #defaultWorldborderSize worldtool run worldborder get
scoreboard players operation #minWorldborderSize worldtool = #defaultWorldborderSize worldtool
scoreboard players remove #minWorldborderSize worldtool 20
scoreboard players set #displayLagWarning worldtool 1

## LCG (thx dominexis) ##
scoreboard players set #rng_multiplier worldtool 1664525
scoreboard players set #rng_increment worldtool 1013904223
execute unless score #rng worldtool = #rng worldtool store result score #rng worldtool run seed

## Addon stuff ##

# Addon list storage
data modify storage worldtool:storage AddonList set value []

# Addon variables
scoreboard players set $addons worldtool 0
scoreboard players set $generalToolAddons worldtool 0
scoreboard players set $brushToolAddons worldtool 0
scoreboard players set $shapeToolAddons worldtool 0
scoreboard players set $settingAddons worldtool 0
scoreboard players set $optionAddons worldtool 0
scoreboard players set $greeneryAddons worldtool 0
function #worldtool:addon/load

# Forceload for access to storing blocks at 0 0
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:the_nether run forceload add 0 0
execute in minecraft:the_end run forceload add 0 0
schedule function worldtool:technical/load/set_base 2t

execute if score $reloadMessage worldtool matches 1 run tellraw @a ["",{"text": "[WorldTool]: ","hoverEvent": {"action": "show_text","value": "Version 0.6-experimental"}},{"text": "Data reloaded!","color": "green"}]

function worldtool:particles/clock
