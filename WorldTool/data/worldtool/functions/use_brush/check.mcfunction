# Called by worldtool:use_brush/load
# Different brush functions

scoreboard players set #temp worldtool 0
execute if predicate worldtool:brush_tool/settings/requires/block if predicate worldtool:brush_tool/settings/update_block run scoreboard players set #temp worldtool 1

function #worldtool:addon/use_brush/check

execute if score #temp worldtool matches 1 run function worldtool:use_tool/update_block/from_item

execute if score #temp worldtool matches 0 if predicate worldtool:brush_tool/settings/requires/area run function worldtool:use_brush/area/load
execute if score #temp worldtool matches 0 unless predicate worldtool:brush_tool/settings/requires/area run function worldtool:use_brush/start/load
