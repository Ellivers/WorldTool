# Called by worldtool:process_start/brush/check

data remove storage worldtool:storage Temp.Blocks
data modify storage worldtool:storage Temp.Blocks.Primary set from entity @s SelectedItem.tag.WorldTool.PrimaryBlock
data modify storage worldtool:storage Temp.Blocks.Secondary set from entity @s SelectedItem.tag.WorldTool.SecondaryBlock

function worldtool:use_tool/update_block/load
