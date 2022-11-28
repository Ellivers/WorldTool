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
execute unless entity @s[tag=!wt.greenery.source.ocean,tag=!wt.greenery.source.warm_ocean] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.base.ocean"
execute unless entity @s[tag=!wt.greenery.source.ocean,tag=!wt.greenery.source.warm_ocean] run tag @s remove wt.greenery.standard_base
execute if entity @s[tag=wt.greenery.source.ocean] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.ocean"
execute if entity @s[tag=wt.greenery.source.warm_ocean] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.warm_ocean"

execute if score $greeneryPlugins worldtool matches 1.. run function #worldtool:hooks/greenery/setup_process

execute if entity @s[tag=wt.greenery.standard_base] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.base.standard"
tag @s remove wt.greenery.standard_base

tag @s remove wt.setup.greenery

function worldtool:technical/save_load/backup/load
