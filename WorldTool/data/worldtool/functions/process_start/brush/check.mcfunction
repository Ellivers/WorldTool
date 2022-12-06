# Called by worldtool:process_start/brush/load
# Different brush functionalities

scoreboard players set #temp worldtool 0
execute if predicate worldtool:brush_tool/settings/requires/block if predicate worldtool:brush_tool/settings/update_block run scoreboard players set #temp worldtool 1

function #worldtool:hooks/process_start/brush/check

execute if score #temp worldtool matches 1 run function worldtool:use_tool/update_block/from_item

execute if score #temp worldtool matches 0 if predicate worldtool:brush_tool/settings/requires/area run function worldtool:process_start/brush/area/load
execute if score #temp worldtool matches 0 unless predicate worldtool:brush_tool/settings/requires/area run function worldtool:process_start/brush/start/load
