# Called by #minecraft:load

## DHP definitions ##
#define storage worldtool:storage
#define score_holder #ID_temp
#define score_holder $processRunning
#define tag worldtool
#define tag wt.temp
# Entities that stay around for a while
#define entity 35c1ab68-9d4c-11eb-a8b3-0242ac130003 Writer
#define entity 9880ccfe-fdf6-4538-838a-ddc75a54608e Reciever
# Entities that generally only exist for a tick
#define entity fe66c968-8ef7-4f14-b6e2-44faa2083170 World Top or Bottom
#define entity d43b8e30-51cc-4da0-918a-60a557ae676f Temporary Entity


# Detect an older version
execute if score $version worldtool matches ..3 run function worldtool:technical/upgrade_version

## Objectives ##
scoreboard objectives add worldtool dummy
scoreboard objectives add wt.use_coas used:minecraft.carrot_on_a_stick
scoreboard objectives add wt.drop_coas dropped:minecraft.carrot_on_a_stick
scoreboard objectives add wt.ID dummy
scoreboard objectives add wt.brush_size dummy
scoreboard objectives add wt.chance dummy
scoreboard objectives add wt.diameter dummy
scoreboard objectives add wt.length dummy
scoreboard objectives add wt.precision dummy
scoreboard objectives add wt.degrees dummy
scoreboard objectives add wt.rotX dummy
scoreboard objectives add wt.rotY dummy
scoreboard objectives add wt.rotZ dummy
scoreboard objectives add wt.pos1x dummy
scoreboard objectives add wt.pos1y dummy
scoreboard objectives add wt.pos1z dummy
scoreboard objectives add wt.pos2x dummy
scoreboard objectives add wt.pos2y dummy
scoreboard objectives add wt.pos2z dummy

# Default language
execute if data storage worldtool:storage Language run function worldtool:language/reload
execute unless data storage worldtool:storage Language run function worldtool:language/en_us

# Set the current version
scoreboard players set $version worldtool 4

## Default blocks per tick ##
# Set the blocks-per-tick settings to their default values if they're not of a supported value
function worldtool:technical/common/fix_bpt_vars

## Default settings ##
execute unless score $forceLoadPositions worldtool matches 0..1 run scoreboard players set $forceLoadPositions worldtool 1
execute unless score $progressBar worldtool matches 0..1 run scoreboard players set $progressBar worldtool 1
#execute unless score $monitorPerformance worldtool matches 0..1 run scoreboard players set $monitorPerformance worldtool 0
execute unless score $clearChat worldtool matches 0..1 run scoreboard players set $clearChat worldtool 1
execute unless score $sizeWarnLimit worldtool matches 0.. run scoreboard players set $sizeWarnLimit worldtool 100000
execute unless score $playUISounds worldtool matches 0..1 run scoreboard players set $playUISounds worldtool 1
execute unless score $logLimit worldtool matches -2147483648.. run scoreboard players set $logLimit worldtool 100
execute unless score $reloadMessage worldtool matches 0..1 run scoreboard players set $reloadMessage worldtool 0

execute unless score $maxRaycastingDistance worldtool matches 1.. run scoreboard players set $maxRaycastingDistance worldtool 100

## Constants ##
scoreboard players set #-1 worldtool -1
scoreboard players set #2 worldtool 2
scoreboard players set #3 worldtool 3
scoreboard players set #4 worldtool 4
scoreboard players set #5 worldtool 5
scoreboard players set #8 worldtool 8
scoreboard players set #10 worldtool 10
scoreboard players set #20 worldtool 20
scoreboard players set #60 worldtool 60
scoreboard players set #100 worldtool 100
scoreboard players set #200 worldtool 200
scoreboard players set #360 worldtool 360
scoreboard players set #1000 worldtool 1000
scoreboard players set #3600 worldtool 3600
scoreboard players set #10000 worldtool 10000
scoreboard players set #86400 worldtool 86400
scoreboard players set #pi worldtool 31416

gamerule commandBlockOutput false

bossbar add worldtool:progress {"nbt":"Translation.\"progress.default\"","storage": "worldtool:storage"}

#execute unless score #defaultWorldborderSize worldtool matches 1.. store result score #defaultWorldborderSize worldtool run worldborder get
#scoreboard players operation #minWorldborderSize worldtool = #defaultWorldborderSize worldtool
#scoreboard players remove #minWorldborderSize worldtool 20
#scoreboard players set #displayLagWarning worldtool 1

## LCG ##
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

# Forceload for access to storing blocks at 27450 19
execute in minecraft:overworld run forceload add 27450 19
execute in minecraft:the_nether run forceload add 27450 19
execute in minecraft:the_end run forceload add 27450 19
function #worldtool:addon/init_dimensions/forceload
scoreboard players set #loadWaitTime worldtool 0
execute unless score $processRunning worldtool matches 1.. run function worldtool:technical/load/wait_for_load

execute if score $reloadMessage worldtool matches 1 run tellraw @a ["",{"text": "[WorldTool]: ","hoverEvent": {"action": "show_text","value": "Version 0.6-experimental"}},{"text": "Data reloaded!","color": "green"}]

function worldtool:particles/clock
