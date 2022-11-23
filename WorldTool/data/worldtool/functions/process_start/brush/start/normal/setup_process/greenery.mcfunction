# Called by worldtool:process_start/brush/start/normal/start
# Sets up the greenery process

scoreboard players set #success worldtool 1

data modify storage worldtool:storage Processes prepend value {DisplayName:'{"nbt":"Translation.\\"process.greenery\\"","storage":"worldtool:storage"}',ID:"worldtool:fill",Tags:["wt.process.greenery","wt.no_message"],Input:{Rate:100}}
data modify storage worldtool:storage Processes[0].BlocksPerTick set from storage worldtool:storage BlocksPerTick.Processes[{ID:"worldtool:greenery_brush"}].Value

function worldtool:process_start/brush/start/normal/setup_process/set_process_values

data modify storage worldtool:storage Processes[0].Input.Rate set from entity @s SelectedItem.tag.WorldTool.BrushSettings.GreeneryRate

execute if predicate worldtool:brush_tool/settings/remove_current_greenery run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.remove_current"

tag @s add wt.greenery.standard_base

execute if predicate worldtool:brush_tool/settings/plant_source/plains run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.plains"
execute if predicate worldtool:brush_tool/settings/plant_source/sunflower_plains run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.sunflower_plains"
execute if predicate worldtool:brush_tool/settings/plant_source/flower_forest run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.flower_forest"
execute if predicate worldtool:brush_tool/settings/plant_source/taiga run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.taiga"
execute if predicate worldtool:brush_tool/settings/plant_source/desert run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.desert"
execute if predicate worldtool:brush_tool/settings/plant_source/desert run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.base.desert"
execute if predicate worldtool:brush_tool/settings/plant_source/desert run tag @s remove wt.greenery.standard_base
execute unless entity @s[predicate=!worldtool:brush_tool/settings/plant_source/ocean,predicate=!worldtool:brush_tool/settings/plant_source/warm_ocean] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.base.ocean"
execute unless entity @s[predicate=!worldtool:brush_tool/settings/plant_source/ocean,predicate=!worldtool:brush_tool/settings/plant_source/warm_ocean] run tag @s remove wt.greenery.standard_base
execute if predicate worldtool:brush_tool/settings/plant_source/ocean run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.ocean"
execute if predicate worldtool:brush_tool/settings/plant_source/warm_ocean run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.plant_table.warm_ocean"

execute if score $greeneryPlugins worldtool matches 1.. run function #worldtool:hooks/greenery/brush/setup_process

execute if entity @s[tag=wt.greenery.standard_base] run data modify storage worldtool:storage Processes[0].Tags append value "wt.process.greenery.base.standard"
tag @s remove wt.greenery.standard_base
