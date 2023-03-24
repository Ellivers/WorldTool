# Called by worldtool:ui_general/greenery/menu
# Sets up the greenery process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.greenery\\"","storage":"worldtool:storage"}',ID:"worldtool:fill",Tags:["wt.process.greenery"],Input:{Rate:100}}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:greenery"}].Value

function worldtool:process_start/general/set_process_values

execute store result storage worldtool:storage Processes[0].Input.Rate int 1 run scoreboard players get @s wt.greenery_rate

execute if entity @s[tag=wt.greenery.remove_current] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.remove_current"
execute if entity @s[tag=wt.two_block_query.normal] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.replace.normal"
execute if entity @s[tag=wt.two_block_query.exclude] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.replace.exclude"

tag @s add wt.greenery.standard_base

execute if entity @s[tag=wt.greenery.source.plains] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.plains"
execute if entity @s[tag=wt.greenery.source.sunflower_plains] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.sunflower_plains"
execute if entity @s[tag=wt.greenery.source.flower_forest] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.flower_forest"
execute if entity @s[tag=wt.greenery.source.taiga] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.taiga"
execute if entity @s[tag=wt.greenery.source.desert] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.desert"
execute if entity @s[tag=wt.greenery.source.desert] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.base.desert"
execute if entity @s[tag=wt.greenery.source.desert] run tag @s remove wt.greenery.standard_base
execute unless entity @s[tag=!wt.greenery.source.ocean,tag=!wt.greenery.source.warm_ocean] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.base.all"
execute unless entity @s[tag=!wt.greenery.source.ocean,tag=!wt.greenery.source.warm_ocean] run tag @s remove wt.greenery.standard_base
execute if entity @s[tag=wt.greenery.source.ocean] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.ocean"
execute if entity @s[tag=wt.greenery.source.warm_ocean] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.warm_ocean"

execute if score $greeneryPlugins worldtool matches 1.. run function #worldtool:hooks/greenery/setup_process

execute if entity @s[tag=wt.greenery.standard_base] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.base.standard"
tag @s remove wt.greenery.standard_base

# Expand the affected area 3 blocks above and below

data modify storage worldtool:storage Processes[0].AffectedArea.From set from storage worldtool:storage Processes[0].Positions.1
data modify storage worldtool:storage Processes[0].AffectedArea.To set from storage worldtool:storage Processes[0].Positions.2

execute store result score #pos1yt worldtool run data get storage worldtool:storage Processes[0].Positions.1[1]
execute store result score #pos2yt worldtool run data get storage worldtool:storage Processes[0].Positions.2[1]

execute if score #pos1yt worldtool >= #pos2yt worldtool run scoreboard players add #pos1yt worldtool 3
execute if score #pos1yt worldtool < #pos2yt worldtool run scoreboard players remove #pos1yt worldtool 3
execute if score #pos2yt worldtool <= #pos1yt worldtool run scoreboard players remove #pos2yt worldtool 3
execute if score #pos2yt worldtool > #pos1yt worldtool run scoreboard players add #pos2yt worldtool 3

execute store result storage worldtool:storage Processes[0].AffectedArea.From[1] double 1 run scoreboard players get #pos1yt worldtool
execute store result storage worldtool:storage Processes[0].AffectedArea.To[1] double 1 run scoreboard players get #pos2yt worldtool

tag @s remove wt.setup.greenery

function worldtool:technical/save_load/backup/load
