# Called by worldtool:use_brush/load
# Different brush functions

scoreboard players set #temp worldtool 1
execute unless predicate worldtool:brush_tool/settings/update_block run scoreboard players set #temp worldtool 2
execute if predicate worldtool:brush_tool/brushes/structure run scoreboard players set #temp worldtool 2

function #worldtool:addon/use_brush/check


execute if score #temp worldtool matches 1 run function worldtool:use_tool/update_block/load

execute if score #temp worldtool matches 2 run function worldtool:use_brush/area/load
execute if score #temp worldtool matches 3 run function worldtool:use_brush/start/load
