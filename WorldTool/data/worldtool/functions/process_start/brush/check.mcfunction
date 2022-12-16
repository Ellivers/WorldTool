# Called by worldtool:process_start/brush/load
# Different brush functionalities

scoreboard players set #brushLoadTemp worldtool 0
execute if predicate worldtool:brush_tool/settings/requires/block if predicate worldtool:brush_tool/settings/update_block run scoreboard players set #brushLoadTemp worldtool 1

function #worldtool:hooks/process_start/brush/check

execute if score #brushLoadTemp worldtool matches 1 run data remove storage worldtool:storage Temp.Blocks
execute if score #brushLoadTemp worldtool matches 1 run data modify storage worldtool:storage Temp.Blocks.Primary set from entity @s SelectedItem.tag.WorldTool.PrimaryBlock
execute if score #brushLoadTemp worldtool matches 1 run data modify storage worldtool:storage Temp.Blocks.Secondary set from entity @s SelectedItem.tag.WorldTool.SecondaryBlock
execute if score #brushLoadTemp worldtool matches 1 run function worldtool:process_start/common/block_from_data/load

execute if score #brushLoadTemp worldtool matches 0 if predicate worldtool:brush_tool/settings/requires/area run function worldtool:process_start/brush/area/load
execute if score #brushLoadTemp worldtool matches 0 unless predicate worldtool:brush_tool/settings/requires/area run function worldtool:process_start/brush/start/load
