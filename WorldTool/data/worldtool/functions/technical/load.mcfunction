# Called by #minecraft:load

## DHP definitions ##
#define storage worldtool:storage
#define storage rx.playerdb:io
#define score_holder #ID_temp
#define score_holder $processRunning
#define tag worldtool
#define tag wt.temp
# Entities that stay around for a while
#define entity 35c1ab68-9d4c-11eb-a8b3-0242ac130003 Process Entity
#define entity 9880ccfe-fdf6-4538-838a-ddc75a54608e Secondary Process Entity
# Entities that generally only exist for a tick
#define entity fe66c968-8ef7-4f14-b6e2-44faa2083170 World Top or Bottom
#define entity d43b8e30-51cc-4da0-918a-60a557ae676f Temporary Entity

## Objectives ##
scoreboard objectives add worldtool dummy
scoreboard objectives add wt.use_coas used:minecraft.carrot_on_a_stick
scoreboard objectives add wt.drop_coas dropped:minecraft.carrot_on_a_stick
scoreboard objectives add wt.ID dummy
scoreboard objectives add wt.pos1x dummy
scoreboard objectives add wt.pos1y dummy
scoreboard objectives add wt.pos1z dummy
scoreboard objectives add wt.pos2x dummy
scoreboard objectives add wt.pos2y dummy
scoreboard objectives add wt.pos2z dummy
scoreboard objectives add wt.version dummy
scoreboard objectives add wt.sneak custom:sneak_time
# Menu-specific objectives
scoreboard objectives add wt.greenery_rate dummy
scoreboard objectives add wt.size dummy
scoreboard objectives add wt.size2 dummy
scoreboard objectives add wt.rotX dummy
scoreboard objectives add wt.rotY dummy
scoreboard objectives add wt.rotZ dummy
scoreboard objectives add wt.amountX dummy
scoreboard objectives add wt.amountY dummy
scoreboard objectives add wt.amountZ dummy

# Current version: 0.7, AKA 6
# Don't forget to update pack.mcmeta and debug message!
scoreboard players set $latestVersion worldtool 6
execute unless score $version worldtool matches -2147483648..2147483647 run scoreboard players operation $version worldtool = $latestVersion worldtool

# Detect an older version
execute unless score $version worldtool = $latestVersion worldtool run function worldtool:technical/upgrade_version

# Default language
# When releasing, change the following line to:
#execute unless score $reloadLanguage worldtool matches 0..1 run scoreboard players set $reloadLanguage worldtool 0
scoreboard players set $reloadLanguage worldtool 1
execute if score $reloadLanguage worldtool matches 1 if data storage worldtool:storage Language run function worldtool:language/reload
execute if score $reloadLanguage worldtool matches 0 unless score $version worldtool = $latestVersion worldtool if data storage worldtool:storage Language run function worldtool:language/reload
execute unless data storage worldtool:storage Language run function worldtool:language/en_us

# Set the current version
scoreboard players operation $version worldtool = $latestVersion worldtool

## Default blocks per tick ##
function worldtool:technical/load/setup_blocks_per_tick

## Default settings ##
execute unless score $forceLoadPositions worldtool matches 0..1 run scoreboard players set $forceLoadPositions worldtool 1
execute unless score $progressBar worldtool matches 0..1 run scoreboard players set $progressBar worldtool 1
execute unless score $clearChat worldtool matches 0..1 run scoreboard players set $clearChat worldtool 1
execute unless score $sizeWarnLimit worldtool matches 0.. run scoreboard players set $sizeWarnLimit worldtool 100000
execute unless score $playUISounds worldtool matches 0..1 run scoreboard players set $playUISounds worldtool 1
execute unless score $logLimit worldtool matches -2147483648.. run scoreboard players set $logLimit worldtool 150
execute unless score $reloadMessage worldtool matches 0..1 run scoreboard players set $reloadMessage worldtool 0
execute unless score $randomizationSourceSizeWarnLimit worldtool matches 0.. run scoreboard players set $randomizationSourceSizeWarnLimit worldtool 60000
execute unless score $maxBackups worldtool matches 2.. run scoreboard players set $maxBackups worldtool 8
execute unless score $enableBackups worldtool matches 0..1 run scoreboard players set $enableBackups worldtool 1
execute unless score $keepMenuOptions worldtool matches 0..1 run scoreboard players set $keepMenuOptions worldtool 1

execute unless score $templateSizeLimit worldtool matches 1.. run scoreboard players set $templateSizeLimit worldtool 48
execute unless score $maxRaycastingDistance worldtool matches 1.. run scoreboard players set $maxRaycastingDistance worldtool 100
execute unless score $playerdbAvailable worldtool matches 0..1 run scoreboard players set $playerdbAvailable worldtool 1
execute unless score $playerInput worldtool matches 0..1 run scoreboard players set $playerInput worldtool 1

execute unless score $outlineLengthLimit worldtool matches 1.. run scoreboard players set $outlineLengthLimit worldtool 500
scoreboard players operation $outlineLengthLimitNegative worldtool = $outlineLengthLimit worldtool
scoreboard players operation $outlineLengthLimitNegative worldtool *= #-1 worldtool

## Constants ##
scoreboard players set #-1 worldtool -1
scoreboard players set #2 worldtool 2
scoreboard players set #3 worldtool 3
scoreboard players set #4 worldtool 4
scoreboard players set #5 worldtool 5
scoreboard players set #10 worldtool 10
scoreboard players set #20 worldtool 20
scoreboard players set #60 worldtool 60
scoreboard players set #90 worldtool 90
scoreboard players set #100 worldtool 100
scoreboard players set #200 worldtool 200
scoreboard players set #360 worldtool 360
scoreboard players set #1000 worldtool 1000
scoreboard players set #3600 worldtool 3600
scoreboard players set #10000 worldtool 10000
scoreboard players set #86400 worldtool 86400
scoreboard players set #1000000 worldtool 1000000
scoreboard players set #pi worldtool 31416

gamerule commandBlockOutput false

bossbar add worldtool:progress {"nbt":"Translation.\"progress.default\"","storage": "worldtool:storage"}

## LCG ##
scoreboard players set #lcgMultiplier worldtool 1664525
scoreboard players set #lcgIncrement worldtool 1013904223
execute unless score #rng worldtool = #rng worldtool store result score #rng worldtool run seed

## Teams ##
team add wt.pos
team modify wt.pos color green
team add wt.pos1
team modify wt.pos1 color aqua
team add wt.pos2
team modify wt.pos2 color gold

# Add 1000 slots for area backups
function worldtool:technical/load/set_backup_slots

execute store result score #temp worldtool if data storage rx.playerdb:main players[]
execute if score #temp worldtool matches 1.. store result score #temp worldtool if data storage rx.playerdb:main players[{data:{WorldTool:{}}}]
execute if score #temp worldtool matches 1.. run scoreboard players set #temp2 worldtool 0
execute if score #temp worldtool matches 1.. run function worldtool:technical/load/remove_player_data

execute as @a[tag=wt.reopen_after_reload] run function worldtool:ui/reopen_menu/after_reload

## Plugin stuff ##

# Plugin variables
scoreboard players set $plugins worldtool 0
scoreboard players set $generalToolPlugins worldtool 0
scoreboard players set $brushToolPlugins worldtool 0
scoreboard players set $shapeToolPlugins worldtool 0
scoreboard players set $settingPlugins worldtool 0
scoreboard players set $languagePlugins worldtool 0
scoreboard players set $greeneryPlugins worldtool 0
scoreboard players set $blocksPerTickPlugins worldtool 0
function #worldtool:hooks/load

# Force load for access to storing blocks at 27450 19
execute in minecraft:overworld positioned 27450 0 19 run function worldtool:technical/common/forceload/add
execute in minecraft:the_nether positioned 27450 0 19 run function worldtool:technical/common/forceload/add
execute in minecraft:the_end positioned 27450 0 19 run function worldtool:technical/common/forceload/add
scoreboard players set #overworldLoadWaitTime worldtool 0
execute unless score $processRunning worldtool matches 1.. run function worldtool:technical/load/wait_for_dimension/overworld
scoreboard players set #theNetherLoadWaitTime worldtool 0
execute unless score $processRunning worldtool matches 1.. run function worldtool:technical/load/wait_for_dimension/the_nether
scoreboard players set #theEndLoadWaitTime worldtool 0
execute unless score $processRunning worldtool matches 1.. run function worldtool:technical/load/wait_for_dimension/the_end
function #worldtool:hooks/init_dimensions/forceload

execute if score $reloadMessage worldtool matches 1 run tellraw @a ["",{"text": "[WorldTool]: ","hoverEvent": {"action": "show_text","value": "Version 0.7-experimental"}},{"text": "Data reloaded!","color": "green"}]

function worldtool:particles/clock
