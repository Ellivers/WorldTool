# Called by worldtool:process_start/brush/start/load

scoreboard players set #success worldtool 0

execute store result score #radius worldtool run data get entity @s SelectedItem.tag.WorldTool.BrushSettings.Size
scoreboard players operation #radius worldtool /= #2 worldtool

execute if predicate worldtool:brush_tool/brushes/paint run function worldtool:process_start/brush/start/normal/setup_process/paint
execute if predicate worldtool:brush_tool/brushes/place run function worldtool:process_start/brush/start/normal/setup_process/place
execute if predicate worldtool:brush_tool/brushes/replace run function worldtool:process_start/brush/start/normal/setup_process/replace

function #worldtool:addon/use_brush/normal_start/processes

execute if score #success worldtool matches 0 run tellraw @s {"nbt":"Translation.\"error.no_process_selected\"","storage": "worldtool:storage","color": "red"}
execute if score #success worldtool matches 1 run function worldtool:process_start/start
